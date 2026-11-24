"""Finite matrix-sewing checks. Stdout only; no JSON.
Numerics are supporting evidence, not a cutoff theorem.
Python: bundled DSH numpy. All determinant ratios below use the exact W^2 map.
"""
from fractions import Fraction as F
from itertools import product
import numpy as np

P = np.array([[0, 0, 1], [1, 0, 0], [0, 1, 0]], dtype=int)
# Reversing the replica cycle simultaneously is immaterial for the real a,d,e traces.

def qmul(a, b):
    cross = [a[2]*b[3]-a[3]*b[2], a[3]*b[1]-a[1]*b[3], a[1]*b[2]-a[2]*b[1]]
    return (a[0]*b[0]-sum(a[i]*b[i] for i in range(1, 4)),) + tuple(
        a[0]*b[i]+b[0]*a[i]+cross[i-1] for i in range(1, 4))


def principal_quaternion(R):
    assert np.trace(R) == 0
    return (F(1,2), F(int(R[2,1]-R[1,2]),2),
            F(int(R[0,2]-R[2,0]),2), F(int(R[1,0]-R[0,1]),2))


print('# Three-replica matrix sewing / odd-sector checks\n')
print('Exact principal SO(3) lift signs for all 16 sectors:')
all_pass = True
for rr, ss in product(product((0,1), repeat=2), repeat=2):
    r = rr + (sum(rr) % 2,)
    s = ss + (0,)
    D = np.diag([(-1)**j for j in r])
    S = np.diag([(-1)**j for j in s])
    A = S @ P @ S
    jumps = (A, A.T @ D, D @ P, P.T)
    lift = (F(1), F(0), F(0), F(0))
    for J in jumps:
        lift = qmul(lift, principal_quaternion(J))
    sign = (-1)**sum(j*k for j,k in zip(r,s))
    ok = lift == (sign,0,0,0)
    all_pass &= ok
    print(f'- r={r}, s={s}: lift={tuple(lift)}, Arf={sign}, PASS={ok}')
assert all_pass


def symbol(N, frac, s, r):
    # A1=[0,frac), B=[frac,1/2), A2=[1/2,1/2+frac), C=rest.
    ell = int(N*frac)
    U = np.broadcast_to(np.eye(3), (N,3,3)).copy()
    S = np.diag([(-1)**j for j in s])
    U[:ell] = S @ P @ S
    U[ell:N//2] = np.diag([(-1)**j for j in r])
    U[N//2:N//2+ell] = P
    return U


def occupied(C, U):
    N = len(C)
    out = np.einsum('ki,kab,kj->iajb', C, U, C, optimize=True)
    for j in range(N):
        out[j,:,j,:] += U[j]
    return out.reshape(3*N,3*N)/2


print('\nFinite-Ising gauge: H Q H* = Fourier P_N (N=8)')
N = 8
p = np.arange(2*N)
z = p[:,None]-p[None,:]
gamma = np.zeros((2*N,2*N))
mask = (z % 2 != 0)
gamma[mask] = -1/(N*np.sin(np.pi*z[mask]/(2*N)))
Q = (np.eye(2*N)-1j*gamma)/2
phase = np.exp(-1j*np.pi*p/(2*N))
Fou = np.exp(2j*np.pi*p[:,None]*np.arange(N)[None,:]/(2*N))/np.sqrt(2*N)
gauge_residual = np.max(np.abs(phase[:,None]*Q*phase.conj()[None,:]-Fou@Fou.conj().T))
print(f'- max residual = {gauge_residual:.5g}')
assert gauge_residual < 1e-13

print('\nNumerical singular values / determinant ratios (double precision):')
print('| interval fraction | N | |e|/a | d/a | s1(e) | s2(e) | s3(e) | spectral trace distance | (|e|/a)/s1 |')
print('|---|---:|---:|---:|---:|---:|---:|---:|---:|')
for frac in (0.125, 0.25):
    for N in (16,32,64,128,256):
        ii = np.arange(N)
        C = 1/(N*np.sin(np.pi*(ii[None,:]-ii[:,None]+0.5)/N))
        Aref = occupied(C, symbol(N,frac,(0,0,0),(0,0,0)))
        Ae = occupied(C, symbol(N,frac,(1,1,0),(0,1,1)))
        Ad = occupied(C, symbol(N,frac,(1,0,0),(0,1,1)))
        sg0, ld0 = np.linalg.slogdet(Aref)
        sge, lde = np.linalg.slogdet(Ae)
        sgd, ldd = np.linalg.slogdet(Ad)
        assert sg0 > 0 and sge > 0 and sgd > 0
        e_ratio = np.exp((lde-ld0)/2)
        d_ratio = np.exp((ldd-ld0)/2)
        se = np.linalg.svd(Ae, compute_uv=False)[::-1]
        s0 = np.linalg.svd(Aref, compute_uv=False)[::-1]
        trace_dist = np.sum(np.abs(se**2-s0**2))
        assert s0[0] >= 0.5-1e-12
        assert abs(se[0]-se[1]) < 1e-10
        print(f'| {frac:g} | {N} | {e_ratio:.10g} | {d_ratio:.10g} | {se[0]:.8g} | {se[1]:.8g} | {se[2]:.8g} | {trace_dist:.8g} | {e_ratio/se[0]:.8g} |', flush=True)
print('\nPASS: exact lift signs, finite gauge, reference gap, paired low singular values.')
print('Not proved by this program: Hardy kernel existence, asymptotic powers, or d/a convergence.')
