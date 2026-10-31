# Excluded first run: oscillatory-limit API failure

The first actual `sage_run` returned `ok: false`, `builtins.NotImplementedError`, at source line 140, while SymPy attempted `limit(J, r, oo)` for

`J=-(1-cos(b*r))**2/r+2*b*Si(b*r)-b*Si(2*b*r)`.

Its Gruntz engine could not form a leading term containing `AccumBounds`. This is an ordinary-symbolic-limit failure, not a failed BV residual. The program aborted before exporting its result, so this run contributes **no successful result count**. The final script instead explicitly uses the analytic squeeze `0 <= (1-cos(br))**2/r <= 4/r` and `Si(+infinity)=pi/2`; that change does not alter the claimed norm.

This file records selected actual diagnostic fields, **not a verbatim complete tool envelope**. The unchanged pre-correction source is [excluded-first-source.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/excluded-first-source.py>), SHA256 `cd2ac79c1e90e92a213250d9d7cb53c779fcc7b86c389fadb5a0679837ae768f`.

Actual tool fields:

- `codeSha256`: `b0e146697891747b527dfc62eb956f5c9324ac3a85034cc1163293efece0bd51`
- `error.tracebackSha256`: `243c726fd696067da89a36f7d412d47aa1e064c2384ec4392c01fccef47807b7`
- `error.messageSha256`: `fbd3a2a2732ec835cd144517d72effdc75cc897721bc90cd9eb60e7cb3ee29ac`
- `truncated`, `error.messageTruncated`, `error.tracebackTruncated`, `stdoutTruncated`, `stderrTruncated`, `warningsTruncated`: all false.
- `stdout`, `stderr`: empty; `warnings`, `transportStderr`: empty lists.
- `sageVersion`: `SageMath version 10.9, Release Date: 2026-05-04`.
- `elapsedMs`: 5972.
