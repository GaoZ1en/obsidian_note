"""Regression checks for the reading-copy writer; uses only the standard library."""
import contextlib
import io
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

import sync_reading_copies as sync


class ReadingCopyTests(unittest.TestCase):
    def test_replace_then_noop(self):
        changes = [('chapter', '# Chapter\nold', '# Chapter\nrevised')]
        first, count = sync.sync_text('preamble\n# Chapter\nold\nafter', changes)
        self.assertEqual(count, 1)
        self.assertEqual(first, 'preamble\n# Chapter\nrevised\nafter')
        self.assertEqual(sync.sync_text(first, changes), (first, 0))

    def test_append_only_is_idempotent(self):
        old = '# Chapter\nold'
        new = old + '\nappended'
        first, count = sync.sync_text(old, [('chapter', old, new)])
        self.assertEqual((first, count), (new, 1))
        self.assertEqual(sync.sync_text(first, [('chapter', old, new)]), (new, 0))

    def test_deletion_is_applied_then_idempotent(self):
        new = '# Chapter\nkeep'
        old = new + '\nremove'
        self.assertEqual(sync.sync_text(old, [('chapter', old, new)]), (new, 1))
        self.assertEqual(sync.sync_text(new, [('chapter', old, new)]), (new, 0))

    def test_reject_unknown_snapshot(self):
        with self.assertRaises(ValueError):
            sync.sync_text('unrecognized chapter', [('chapter', 'old', 'new')])

    def test_reject_duplicate_old_blocks(self):
        with self.assertRaises(ValueError):
            sync.sync_text('old\nold', [('chapter', 'old', 'new')])

    def test_reject_mixed_old_and_new_blocks(self):
        with self.assertRaises(ValueError):
            sync.sync_text('old\nnew', [('chapter', 'old', 'new')])

    def test_reject_duplicate_updated_blocks(self):
        with self.assertRaises(ValueError):
            sync.sync_text('new\nnew', [('chapter', 'old', 'new')])

    def test_rebase_repair_link(self):
        text = '[proof](../../audit/repair.md#r4)'
        self.assertEqual(sync.reading_copy_links(text, 'gluing/pkg/notes/01.md',
                                                'gluing/pkg/COMPLETE.md'),
                         '[proof](../audit/repair.md#r4)')

    def test_rebase_same_folder_image_and_angle_link(self):
        text = '![figure](plot.png) [note](<other note.md> "title")'
        self.assertEqual(sync.reading_copy_links(text, 'pkg/notes/01.md', 'pkg/ALL.md'),
                         '![figure](notes/plot.png) [note](<notes/other note.md> "title")')

    def test_preserve_external_absolute_and_fragment_links(self):
        text = '[web](https://example.org/a?q=1#x) [local](#r4) [absolute](/tmp/a.md)'
        self.assertEqual(sync.reading_copy_links(text, 'pkg/notes/01.md', 'pkg/ALL.md'), text)

    def test_preflight_failure_does_not_write_first_package(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root/'first.md'
            target.write_text('original')
            plans = [(target, 'updated', 1), ValueError('bad second snapshot')]
            with patch.object(sync.subprocess, 'check_output', return_value=str(root)), \
                    patch.object(sync, 'plan_package', side_effect=plans), \
                    patch('sys.argv', ['sync_reading_copies.py', '--write']):
                with self.assertRaises(ValueError):
                    sync.main()
            self.assertEqual(target.read_text(), 'original')

    def test_dry_run_does_not_write(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root/'copy.md'
            target.write_text('original')
            with patch.object(sync.subprocess, 'check_output', return_value=str(root)), \
                    patch.object(sync, 'plan_package', return_value=(target, 'updated', 1)), \
                    patch('sys.argv', ['sync_reading_copies.py', '--package', 'finite_cut_sewing']), \
                    contextlib.redirect_stdout(io.StringIO()):
                sync.main()
            self.assertEqual(target.read_text(), 'original')


if __name__ == '__main__':
    unittest.main()
