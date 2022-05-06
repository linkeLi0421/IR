; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.anon.124 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nv50_gr_chan = type { %struct.nvkm_object, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nv50_gr = type { %struct.nvkm_gr, ptr, %struct.spinlock, i32 }

@nv50_gr_object = dso_local constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_gr_object_bind, ptr null }, align 4
@nv50_gr_chan = internal constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_gr_chan_bind, ptr null }, align 4
@.str = private unnamed_addr constant [18 x i8] c"INVALID_OPERATION\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"INVALID_VALUE\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"INVALID_ENUM\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"INVALID_OBJECT\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"READ_ONLY_OBJECT\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SUPERVISOR_OBJECT\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"INVALID_ADDRESS_ALIGNMENT\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"INVALID_BITFIELD\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"BEGIN_END_ACTIVE\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"SEMANTIC_COLOR_BACK_OVER_LIMIT\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"VIEWPORT_ID_NEEDS_GP\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"RT_DOUBLE_BIND\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"RT_TYPES_MISMATCH\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"RT_LINEAR_WITH_ZETA\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"FP_TOO_FEW_REGS\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"ZETA_FORMAT_CSAA_MISMATCH\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"RT_LINEAR_WITH_MSAA\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"FP_INTERPOLANT_START_OVER_LIMIT\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"SEMANTIC_LAYER_OVER_LIMIT\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"RT_INVALID_ALIGNMENT\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"SAMPLER_OVER_LIMIT\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"TEXTURE_OVER_LIMIT\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"GP_TOO_MANY_OUTPUTS\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"RT_BPP128_WITH_MS8\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Z_OUT_OF_BOUNDS\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"XY_OUT_OF_BOUNDS\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"VP_ZERO_INPUTS\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"CP_MORE_PARAMS_THAN_SHARED\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"CP_NO_REG_SPACE_STRIPED\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"CP_NO_REG_SPACE_PACKED\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"CP_NOT_ENOUGH_WARPS\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"CP_BLOCK_SIZE_MISMATCH\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"CP_NOT_ENOUGH_LOCAL_WARPS\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"CP_NOT_ENOUGH_STACK_WARPS\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"CP_NO_BLOCKDIM_LATCH\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"ENG2D_FORMAT_MISMATCH\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"PRIMITIVE_ID_NEEDS_GP\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"SEMANTIC_VIEWPORT_OVER_LIMIT\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"SEMANTIC_COLOR_FRONT_OVER_LIMIT\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"LAYER_ID_NEEDS_GP\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"SEMANTIC_CLIP_OVER_LIMIT\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"SEMANTIC_PTSZ_OVER_LIMIT\00", align 1
@nv50_data_error_names = dso_local constant [43 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 3, ptr @.str, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.1, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.2, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.3, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.25, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.26, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 39, ptr @.str.27, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 40, ptr @.str.28, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 41, ptr @.str.29, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 42, ptr @.str.30, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 43, ptr @.str.31, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 44, ptr @.str.32, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 45, ptr @.str.33, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 46, ptr @.str.34, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 49, ptr @.str.35, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 63, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 68, ptr @.str.37, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 69, ptr @.str.38, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 70, ptr @.str.39, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 71, ptr @.str.40, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 72, ptr @.str.41, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.42 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"%s: DATA_ERROR %08x [%s]\0A\00", align 1
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv50_gr_intr_name = internal constant [11 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.67 }, %struct.nvkm_bitfield { i32 2, ptr @.str.114 }, %struct.nvkm_bitfield { i32 16, ptr @.str.115 }, %struct.nvkm_bitfield { i32 32, ptr @.str.116 }, %struct.nvkm_bitfield { i32 64, ptr @.str.117 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.118 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.119 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.120 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.121 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.122 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [73 x i8] c"%s: %08x [%s] ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.46 = private unnamed_addr constant [37 x i8] c"%s: TRAP: no units reporting traps?\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"%s: TRAP_DISPATCH - no ustatus?\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"%s: TRAP DISPATCH_FAULT\0A\00", align 1
@.str.49 = private unnamed_addr constant [91 x i8] c"%s: ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x%08x 400808 %08x 400848 %08x\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"%s: no stuck command?\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"%s: TRAP DISPATCH_QUERY\0A\00", align 1
@.str.52 = private unnamed_addr constant [75 x i8] c"%s: ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x 40084c %08x\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"%s: TRAP_DISPATCH (unknown %08x)\0A\00", align 1
@nv50_gr_trap_m2mf = internal constant [4 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.67 }, %struct.nvkm_bitfield { i32 2, ptr @.str.68 }, %struct.nvkm_bitfield { i32 4, ptr @.str.69 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.54 = private unnamed_addr constant [25 x i8] c"%s: TRAP_M2MF %08x [%s]\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"%s: TRAP_M2MF %08x %08x %08x %08x\0A\00", align 1
@nv50_gr_trap_vfetch = internal constant [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.70 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.56 = private unnamed_addr constant [27 x i8] c"%s: TRAP_VFETCH %08x [%s]\0A\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"%s: TRAP_VFETCH %08x %08x %08x %08x\0A\00", align 1
@nv50_gr_trap_strmout = internal constant [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.70 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.58 = private unnamed_addr constant [28 x i8] c"%s: TRAP_STRMOUT %08x [%s]\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"%s: TRAP_STRMOUT %08x %08x %08x %08x\0A\00", align 1
@nv50_gr_trap_ccache = internal constant [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.70 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.60 = private unnamed_addr constant [27 x i8] c"%s: TRAP_CCACHE %08x [%s]\0A\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"%s: TRAP_CCACHE %08x %08x %08x %08x %08x %08x %08x\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"%s: TRAP_UNKC04 %08x\0A\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"TRAP_TEXTURE\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"TRAP_MP\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"TRAP_PROP\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"%s: TRAP: unknown %08x\0A\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"FAULT\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"%s: magic set %d:\0A\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"%s: \09%08x: %08x\0A\00", align 1
@nv50_tex_traps = internal constant [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.44 }, %struct.nvkm_bitfield { i32 2, ptr @.str.70 }, %struct.nvkm_bitfield { i32 4, ptr @.str.76 }, %struct.nvkm_bitfield { i32 8, ptr @.str.77 }, %struct.nvkm_bitfield { i32 32, ptr @.str.78 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.73 = private unnamed_addr constant [26 x i8] c"%s: %s - TP%d: %08x [%s]\0A\00", align 1
@nv50_mpc_traps = internal constant [11 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.88 }, %struct.nvkm_bitfield { i32 16, ptr @.str.89 }, %struct.nvkm_bitfield { i32 64, ptr @.str.90 }, %struct.nvkm_bitfield { i32 256, ptr @.str.91 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.92 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.93 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.94 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.95 }, %struct.nvkm_bitfield { i32 4194304, ptr @.str.96 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.97 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.74 = private unnamed_addr constant [39 x i8] c"%s: %s - TP%d: Unhandled ustatus %08x\0A\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"%s: %s - No TPs claiming errors?\0A\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"STORAGE_TYPE_MISMATCH\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"LINEAR_MISMATCH\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"WRONG_MEMTYPE\00", align 1
@nv50_mp_exec_errors = internal constant [8 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.81 }, %struct.nvkm_bitfield { i32 2, ptr @.str.82 }, %struct.nvkm_bitfield { i32 4, ptr @.str.83 }, %struct.nvkm_bitfield { i32 8, ptr @.str.84 }, %struct.nvkm_bitfield { i32 16, ptr @.str.85 }, %struct.nvkm_bitfield { i32 32, ptr @.str.86 }, %struct.nvkm_bitfield { i32 64, ptr @.str.87 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.79 = private unnamed_addr constant [77 x i8] c"%s: TRAP_MP_EXEC - TP %d MP %d: %08x [%s] at %06x warp %d, opcode %08x %08x\0A\00", align 1
@.str.80 = private unnamed_addr constant [51 x i8] c"%s: TRAP_MP_EXEC - TP %d: No MPs claiming errors?\0A\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"STACK_UNDERFLOW\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"STACK_MISMATCH\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"QUADON_ACTIVE\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"INVALID_OPCODE\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"PM_OVERFLOW\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"BREAKPOINT\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"LOCAL_LIMIT_READ\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"LOCAL_LIMIT_WRITE\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"STACK_LIMIT\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"GLOBAL_LIMIT_READ\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"GLOBAL_LIMIT_WRITE\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"MP0\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"MP1\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"GLOBAL_LIMIT_RED\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"GLOBAL_LIMIT_ATOM\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"MP2\00", align 1
@.str.98 = private unnamed_addr constant [76 x i8] c"%s: TRAP_PROP - TP %d - CUDA_FAULT - Global read fault at address %02x%08x\0A\00", align 1
@.str.99 = private unnamed_addr constant [77 x i8] c"%s: TRAP_PROP - TP %d - CUDA_FAULT - Global write fault at address %02x%08x\0A\00", align 1
@.str.100 = private unnamed_addr constant [64 x i8] c"%s: TRAP_PROP - TP %d - Unknown CUDA fault at address %02x%08x\0A\00", align 1
@nv50_gr_trap_prop = internal constant [12 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 4, ptr @.str.103 }, %struct.nvkm_bitfield { i32 8, ptr @.str.104 }, %struct.nvkm_bitfield { i32 16, ptr @.str.105 }, %struct.nvkm_bitfield { i32 32, ptr @.str.106 }, %struct.nvkm_bitfield { i32 64, ptr @.str.107 }, %struct.nvkm_bitfield { i32 128, ptr @.str.108 }, %struct.nvkm_bitfield { i32 256, ptr @.str.109 }, %struct.nvkm_bitfield { i32 512, ptr @.str.110 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.111 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.112 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.113 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.101 = private unnamed_addr constant [54 x i8] c"%s: TRAP_PROP - TP %d - %08x [%s] - Address %02x%08x\0A\00", align 1
@.str.102 = private unnamed_addr constant [79 x i8] c"%s: TRAP_PROP - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\0A\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"SURF_WIDTH_OVERRUN\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"SURF_HEIGHT_OVERRUN\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"DST2D_FAULT\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"ZETA_FAULT\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"RT_FAULT\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"CUDA_FAULT\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"DST2D_STORAGE_TYPE_MISMATCH\00", align 1
@.str.110 = private unnamed_addr constant [27 x i8] c"ZETA_STORAGE_TYPE_MISMATCH\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"RT_STORAGE_TYPE_MISMATCH\00", align 1
@.str.112 = private unnamed_addr constant [22 x i8] c"DST2D_LINEAR_MISMATCH\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"RT_LINEAR_MISMATCH\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"COMPUTE_QUERY\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"ILLEGAL_MTHD\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"ILLEGAL_CLASS\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"DOUBLE_NOTIFY\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"CONTEXT_SWITCH\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"BUFFER_NOTIFY\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"SINGLE_STEP\00", align 1
@nv50_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.124, [6 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv50_gr_init, ptr null, ptr @nv50_gr_intr, ptr null, ptr null, ptr @nv50_gr_chan_new, ptr null, ptr @nv50_gr_units, ptr null, %struct.anon.124 zeroinitializer, [6 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20525, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20537, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20631, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20672, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nv50_gr_units(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5440
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %8 = zext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_gr_object_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 16, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %12) #6
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void %19(ptr noundef %16, i32 noundef 0, i32 noundef %21) #6
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %22, i32 noundef 4, i32 noundef 0) #6
  %26 = load ptr, ptr %3, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %26, i32 noundef 8, i32 noundef 0) #6
  %30 = load ptr, ptr %3, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %30, i32 noundef 12, i32 noundef 0) #6
  %34 = load ptr, ptr %3, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %34) #6
  br label %38

38:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_chan_new(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 80) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_gr_chan, ptr noundef %2, ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.nv50_gr_chan, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  store ptr %6, ptr %3, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_gr_intr(ptr noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 1
  %6 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4194560
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 4195116
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %15 = and i32 %14, 268435455
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 4196100
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 7
  %21 = and i32 %18, 8188
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 4196104
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 4196372
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !10
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 52
  %29 = load ptr, ptr %28, align 8
  %30 = zext i32 %15 to i64
  %31 = shl nuw nsw i64 %30, 12
  %32 = call ptr @nvkm_fifo_chan_inst(ptr noundef %29, i64 noundef %31, ptr noundef nonnull %4) #6
  store ptr %32, ptr %3, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %32, i32 0, i32 3, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_client, ptr %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %32, i32 0, i32 5
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  br label %41

41:                                               ; preds = %34, %1
  %42 = phi ptr [ %37, %34 ], [ @.str.42, %1 ]
  %43 = phi i32 [ %40, %34 ], [ -1, %1 ]
  %44 = and i32 %11, 1048576
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr i8, ptr %47, i32 4194576
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %50 = call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_data_error_names, i32 noundef %49) #6
  %51 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  %59 = icmp eq ptr %50, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.nvkm_enum, ptr %50, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi ptr [ %62, %60 ], [ @.str.44, %54 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.43, ptr noundef %58, i32 noundef %49, ptr noundef %64) #8
  br label %65

65:                                               ; preds = %63, %46
  %66 = and i32 %11, -1048577
  br label %67

67:                                               ; preds = %65, %41
  %68 = phi i32 [ %66, %65 ], [ %11, %41 ]
  %69 = and i32 %11, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %474, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %6, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 4194568
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #6, !annotation !10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %468, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.46, ptr noundef %86) #8
  br label %468

87:                                               ; preds = %71
  %88 = and i32 %76, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %229, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %73, align 4
  %92 = getelementptr i8, ptr %91, i32 4196356
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %94 = and i32 %93, 2147483647
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.47, ptr noundef %104) #8
  br label %105

105:                                              ; preds = %100, %96, %90
  %106 = load ptr, ptr %73, align 4
  %107 = getelementptr i8, ptr %106, i32 4195584
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #6, !srcloc !12
  %108 = and i32 %93, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %165, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %73, align 4
  %112 = getelementptr i8, ptr %111, i32 4196360
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 7
  %116 = and i32 %113, 8188
  %117 = load ptr, ptr %73, align 4
  %118 = getelementptr i8, ptr %117, i32 4196364
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %120 = load ptr, ptr %73, align 4
  %121 = getelementptr i8, ptr %120, i32 4196368
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %123 = load ptr, ptr %73, align 4
  %124 = getelementptr i8, ptr %123, i32 4196372
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %126 = load ptr, ptr %73, align 4
  %127 = getelementptr i8, ptr %126, i32 4196424
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %129 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %110
  %133 = load ptr, ptr %6, align 4
  %134 = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.48, ptr noundef %136) #8
  br label %137

137:                                              ; preds = %132, %110
  %138 = icmp sgt i32 %113, -1
  %139 = load i32, ptr %129, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %138, label %147, label %141

141:                                              ; preds = %137
  br i1 %140, label %153, label %142

142:                                              ; preds = %141
  %143 = load ptr, ptr %6, align 4
  %144 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.49, ptr noundef %146, i32 noundef %43, i64 noundef %31, ptr noundef %42, i32 noundef %115, i32 noundef %125, i32 noundef %116, i32 noundef %122, i32 noundef %119, i32 noundef %113, i32 noundef %128) #8
  br label %153

147:                                              ; preds = %137
  br i1 %140, label %153, label %148

148:                                              ; preds = %147
  %149 = load ptr, ptr %6, align 4
  %150 = getelementptr inbounds %struct.nvkm_device, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.50, ptr noundef %152) #8
  br label %153

153:                                              ; preds = %148, %147, %142, %141
  %154 = load ptr, ptr %73, align 4
  %155 = getelementptr i8, ptr %154, i32 4196360
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 0) #6, !srcloc !12
  %156 = load ptr, ptr %73, align 4
  %157 = getelementptr i8, ptr %156, i32 4196584
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %159 = and i32 %158, 3
  %160 = load ptr, ptr %73, align 4
  %161 = getelementptr i8, ptr %160, i32 4196584
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #6, !srcloc !12
  %162 = load ptr, ptr %73, align 4
  %163 = getelementptr i8, ptr %162, i32 4196424
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 0) #6, !srcloc !12
  %164 = and i32 %93, 2147483646
  br label %165

165:                                              ; preds = %153, %105
  %166 = phi i32 [ %164, %153 ], [ %94, %105 ]
  %167 = and i32 %166, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %210, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %73, align 4
  %171 = getelementptr i8, ptr %170, i32 4196428
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 7
  %175 = and i32 %172, 8188
  %176 = load ptr, ptr %73, align 4
  %177 = getelementptr i8, ptr %176, i32 4196444
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %179 = load ptr, ptr %73, align 4
  %180 = getelementptr i8, ptr %179, i32 4196372
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %182 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %169
  %186 = load ptr, ptr %6, align 4
  %187 = getelementptr inbounds %struct.nvkm_device, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.51, ptr noundef %189) #8
  br label %190

190:                                              ; preds = %185, %169
  %191 = icmp sgt i32 %172, -1
  %192 = load i32, ptr %182, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %191, label %200, label %194

194:                                              ; preds = %190
  br i1 %193, label %206, label %195

195:                                              ; preds = %194
  %196 = load ptr, ptr %6, align 4
  %197 = getelementptr inbounds %struct.nvkm_device, ptr %196, i32 0, i32 2
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.52, ptr noundef %199, i32 noundef %43, i64 noundef %31, ptr noundef %42, i32 noundef %174, i32 noundef %181, i32 noundef %175, i32 noundef %178, i32 noundef %172) #8
  br label %206

200:                                              ; preds = %190
  br i1 %193, label %206, label %201

201:                                              ; preds = %200
  %202 = load ptr, ptr %6, align 4
  %203 = getelementptr inbounds %struct.nvkm_device, ptr %202, i32 0, i32 2
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.50, ptr noundef %205) #8
  br label %206

206:                                              ; preds = %201, %200, %195, %194
  %207 = load ptr, ptr %73, align 4
  %208 = getelementptr i8, ptr %207, i32 4196428
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 0) #6, !srcloc !12
  %209 = and i32 %166, 2147483645
  br label %210

210:                                              ; preds = %206, %165
  %211 = phi i32 [ %209, %206 ], [ %166, %165 ]
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %6, align 4
  %219 = getelementptr inbounds %struct.nvkm_device, ptr %218, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.53, ptr noundef %221, i32 noundef %211) #8
  br label %222

222:                                              ; preds = %217, %213, %210
  %223 = load ptr, ptr %73, align 4
  %224 = getelementptr i8, ptr %223, i32 4196356
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 -1073741824) #6, !srcloc !12
  %225 = load ptr, ptr %73, align 4
  %226 = getelementptr i8, ptr %225, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 1) #6, !srcloc !12
  %227 = and i32 %76, -2
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %469, label %229

229:                                              ; preds = %222, %87
  %230 = phi i32 [ %227, %222 ], [ %76, %87 ]
  %231 = and i32 %230, 2
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %274, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %73, align 4
  %235 = getelementptr i8, ptr %234, i32 4220928
  %236 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %237 = and i32 %236, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_m2mf, i32 noundef %237) #6
  %238 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %264, label %241

241:                                              ; preds = %233
  %242 = load ptr, ptr %6, align 4
  %243 = getelementptr inbounds %struct.nvkm_device, ptr %242, i32 0, i32 2
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.54, ptr noundef %245, i32 noundef %237, ptr noundef nonnull %2) #8
  %246 = load i32, ptr %238, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %264, label %248

248:                                              ; preds = %241
  %249 = load ptr, ptr %6, align 4
  %250 = getelementptr inbounds %struct.nvkm_device, ptr %249, i32 0, i32 2
  %251 = load ptr, ptr %250, align 8
  %252 = load ptr, ptr %73, align 4
  %253 = getelementptr i8, ptr %252, i32 4220932
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %255 = load ptr, ptr %73, align 4
  %256 = getelementptr i8, ptr %255, i32 4220936
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %258 = load ptr, ptr %73, align 4
  %259 = getelementptr i8, ptr %258, i32 4220940
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %261 = load ptr, ptr %73, align 4
  %262 = getelementptr i8, ptr %261, i32 4220944
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.55, ptr noundef %245, i32 noundef %254, i32 noundef %257, i32 noundef %260, i32 noundef %263) #8
  br label %264

264:                                              ; preds = %248, %241, %233
  %265 = load ptr, ptr %73, align 4
  %266 = getelementptr i8, ptr %265, i32 4194368
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 2) #6, !srcloc !12
  %267 = load ptr, ptr %73, align 4
  %268 = getelementptr i8, ptr %267, i32 4194368
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 0) #6, !srcloc !12
  %269 = load ptr, ptr %73, align 4
  %270 = getelementptr i8, ptr %269, i32 4220928
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 -1073741824) #6, !srcloc !12
  %271 = load ptr, ptr %73, align 4
  %272 = getelementptr i8, ptr %271, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 2) #6, !srcloc !12
  %273 = and i32 %230, -3
  br label %274

274:                                              ; preds = %264, %229
  %275 = phi i32 [ %273, %264 ], [ %230, %229 ]
  %276 = and i32 %275, 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %315, label %278

278:                                              ; preds = %274
  %279 = load ptr, ptr %73, align 4
  %280 = getelementptr i8, ptr %279, i32 4197380
  %281 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %282 = and i32 %281, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_vfetch, i32 noundef %282) #6
  %283 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %309, label %286

286:                                              ; preds = %278
  %287 = load ptr, ptr %6, align 4
  %288 = getelementptr inbounds %struct.nvkm_device, ptr %287, i32 0, i32 2
  %289 = load ptr, ptr %288, align 8
  %290 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.56, ptr noundef %290, i32 noundef %282, ptr noundef nonnull %2) #8
  %291 = load i32, ptr %283, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %309, label %293

293:                                              ; preds = %286
  %294 = load ptr, ptr %6, align 4
  %295 = getelementptr inbounds %struct.nvkm_device, ptr %294, i32 0, i32 2
  %296 = load ptr, ptr %295, align 8
  %297 = load ptr, ptr %73, align 4
  %298 = getelementptr i8, ptr %297, i32 4197376
  %299 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %298) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %300 = load ptr, ptr %73, align 4
  %301 = getelementptr i8, ptr %300, i32 4197384
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %303 = load ptr, ptr %73, align 4
  %304 = getelementptr i8, ptr %303, i32 4197388
  %305 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %304) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %306 = load ptr, ptr %73, align 4
  %307 = getelementptr i8, ptr %306, i32 4197392
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %307) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.57, ptr noundef %290, i32 noundef %299, i32 noundef %302, i32 noundef %305, i32 noundef %308) #8
  br label %309

309:                                              ; preds = %293, %286, %278
  %310 = load ptr, ptr %73, align 4
  %311 = getelementptr i8, ptr %310, i32 4197380
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 -1073741824) #6, !srcloc !12
  %312 = load ptr, ptr %73, align 4
  %313 = getelementptr i8, ptr %312, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 4) #6, !srcloc !12
  %314 = and i32 %275, -5
  br label %315

315:                                              ; preds = %309, %274
  %316 = phi i32 [ %314, %309 ], [ %275, %274 ]
  %317 = and i32 %316, 8
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %360, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %73, align 4
  %321 = getelementptr i8, ptr %320, i32 4200448
  %322 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %321) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %323 = and i32 %322, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_strmout, i32 noundef %323) #6
  %324 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %325 = load i32, ptr %324, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %350, label %327

327:                                              ; preds = %319
  %328 = load ptr, ptr %6, align 4
  %329 = getelementptr inbounds %struct.nvkm_device, ptr %328, i32 0, i32 2
  %330 = load ptr, ptr %329, align 8
  %331 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %330, ptr noundef nonnull @.str.58, ptr noundef %331, i32 noundef %323, ptr noundef nonnull %2) #8
  %332 = load i32, ptr %324, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %350, label %334

334:                                              ; preds = %327
  %335 = load ptr, ptr %6, align 4
  %336 = getelementptr inbounds %struct.nvkm_device, ptr %335, i32 0, i32 2
  %337 = load ptr, ptr %336, align 8
  %338 = load ptr, ptr %73, align 4
  %339 = getelementptr i8, ptr %338, i32 4200452
  %340 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %339) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %341 = load ptr, ptr %73, align 4
  %342 = getelementptr i8, ptr %341, i32 4200456
  %343 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %344 = load ptr, ptr %73, align 4
  %345 = getelementptr i8, ptr %344, i32 4200460
  %346 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %345) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %347 = load ptr, ptr %73, align 4
  %348 = getelementptr i8, ptr %347, i32 4200464
  %349 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %348) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %337, ptr noundef nonnull @.str.59, ptr noundef %331, i32 noundef %340, i32 noundef %343, i32 noundef %346, i32 noundef %349) #8
  br label %350

350:                                              ; preds = %334, %327, %319
  %351 = load ptr, ptr %73, align 4
  %352 = getelementptr i8, ptr %351, i32 4194368
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %352, i32 128) #6, !srcloc !12
  %353 = load ptr, ptr %73, align 4
  %354 = getelementptr i8, ptr %353, i32 4194368
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 0) #6, !srcloc !12
  %355 = load ptr, ptr %73, align 4
  %356 = getelementptr i8, ptr %355, i32 4200448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %356, i32 -1073741824) #6, !srcloc !12
  %357 = load ptr, ptr %73, align 4
  %358 = getelementptr i8, ptr %357, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 8) #6, !srcloc !12
  %359 = and i32 %316, -9
  br label %360

360:                                              ; preds = %350, %315
  %361 = phi i32 [ %359, %350 ], [ %316, %315 ]
  %362 = and i32 %361, 16
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %410, label %364

364:                                              ; preds = %360
  %365 = load ptr, ptr %73, align 4
  %366 = getelementptr i8, ptr %365, i32 4214808
  %367 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %366) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %368 = and i32 %367, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_ccache, i32 noundef %368) #6
  %369 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %370 = load i32, ptr %369, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %404, label %372

372:                                              ; preds = %364
  %373 = load ptr, ptr %6, align 4
  %374 = getelementptr inbounds %struct.nvkm_device, ptr %373, i32 0, i32 2
  %375 = load ptr, ptr %374, align 8
  %376 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %375, ptr noundef nonnull @.str.60, ptr noundef %376, i32 noundef %368, ptr noundef nonnull %2) #8
  %377 = load i32, ptr %369, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %404, label %379

379:                                              ; preds = %372
  %380 = load ptr, ptr %6, align 4
  %381 = getelementptr inbounds %struct.nvkm_device, ptr %380, i32 0, i32 2
  %382 = load ptr, ptr %381, align 8
  %383 = load ptr, ptr %73, align 4
  %384 = getelementptr i8, ptr %383, i32 4214784
  %385 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %384) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %386 = load ptr, ptr %73, align 4
  %387 = getelementptr i8, ptr %386, i32 4214788
  %388 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %389 = load ptr, ptr %73, align 4
  %390 = getelementptr i8, ptr %389, i32 4214792
  %391 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %392 = load ptr, ptr %73, align 4
  %393 = getelementptr i8, ptr %392, i32 4214796
  %394 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %393) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %395 = load ptr, ptr %73, align 4
  %396 = getelementptr i8, ptr %395, i32 4214800
  %397 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %398 = load ptr, ptr %73, align 4
  %399 = getelementptr i8, ptr %398, i32 4214804
  %400 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %399) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %401 = load ptr, ptr %73, align 4
  %402 = getelementptr i8, ptr %401, i32 4214812
  %403 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %402) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %382, ptr noundef nonnull @.str.61, ptr noundef %376, i32 noundef %385, i32 noundef %388, i32 noundef %391, i32 noundef %394, i32 noundef %397, i32 noundef %400, i32 noundef %403) #8
  br label %404

404:                                              ; preds = %379, %372, %364
  %405 = load ptr, ptr %73, align 4
  %406 = getelementptr i8, ptr %405, i32 4214808
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %406, i32 -1073741824) #6, !srcloc !12
  %407 = load ptr, ptr %73, align 4
  %408 = getelementptr i8, ptr %407, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 16) #6, !srcloc !12
  %409 = and i32 %361, -17
  br label %410

410:                                              ; preds = %404, %360
  %411 = phi i32 [ %409, %404 ], [ %361, %360 ]
  %412 = and i32 %411, 32
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %430, label %414

414:                                              ; preds = %410
  %415 = load ptr, ptr %73, align 4
  %416 = getelementptr i8, ptr %415, i32 4202496
  %417 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %416) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %418 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %419 = load i32, ptr %418, align 4
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %414
  %422 = and i32 %417, 2147483647
  %423 = load ptr, ptr %6, align 4
  %424 = getelementptr inbounds %struct.nvkm_device, ptr %423, i32 0, i32 2
  %425 = load ptr, ptr %424, align 8
  %426 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %425, ptr noundef nonnull @.str.62, ptr noundef %426, i32 noundef %422) #8
  br label %427

427:                                              ; preds = %421, %414
  %428 = load ptr, ptr %73, align 4
  %429 = getelementptr i8, ptr %428, i32 4202496
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %429, i32 -1073741824) #6, !srcloc !12
  br label %430

430:                                              ; preds = %427, %410
  %431 = and i32 %411, 64
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %437, label %433

433:                                              ; preds = %430
  call fastcc void @nv50_gr_tp_trap(ptr noundef %0, i32 noundef 6, i32 noundef 4229376, i32 noundef 4228608, i32 noundef %11, ptr noundef nonnull @.str.63) #6
  %434 = load ptr, ptr %73, align 4
  %435 = getelementptr i8, ptr %434, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %435, i32 64) #6, !srcloc !12
  %436 = and i32 %411, -65
  br label %437

437:                                              ; preds = %433, %430
  %438 = phi i32 [ %436, %433 ], [ %411, %430 ]
  %439 = and i32 %438, 128
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %445, label %441

441:                                              ; preds = %437
  call fastcc void @nv50_gr_tp_trap(ptr noundef %0, i32 noundef 7, i32 noundef 4227860, i32 noundef 4227868, i32 noundef %11, ptr noundef nonnull @.str.64) #6
  %442 = load ptr, ptr %73, align 4
  %443 = getelementptr i8, ptr %442, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %443, i32 128) #6, !srcloc !12
  %444 = and i32 %438, -129
  br label %445

445:                                              ; preds = %441, %437
  %446 = phi i32 [ %444, %441 ], [ %438, %437 ]
  %447 = and i32 %446, 256
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %453, label %449

449:                                              ; preds = %445
  call fastcc void @nv50_gr_tp_trap(ptr noundef %0, i32 noundef 8, i32 noundef 4230664, i32 noundef 4228872, i32 noundef %11, ptr noundef nonnull @.str.65) #6
  %450 = load ptr, ptr %73, align 4
  %451 = getelementptr i8, ptr %450, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %451, i32 256) #6, !srcloc !12
  %452 = and i32 %446, -257
  br label %453

453:                                              ; preds = %449, %445
  %454 = phi i32 [ %452, %449 ], [ %446, %445 ]
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %468, label %456

456:                                              ; preds = %453
  %457 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %458 = load i32, ptr %457, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %465, label %460

460:                                              ; preds = %456
  %461 = load ptr, ptr %6, align 4
  %462 = getelementptr inbounds %struct.nvkm_device, ptr %461, i32 0, i32 2
  %463 = load ptr, ptr %462, align 8
  %464 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %463, ptr noundef nonnull @.str.66, ptr noundef %464, i32 noundef %454) #8
  br label %465

465:                                              ; preds = %460, %456
  %466 = load ptr, ptr %73, align 4
  %467 = getelementptr i8, ptr %466, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %467, i32 %454) #6, !srcloc !12
  br label %468

468:                                              ; preds = %465, %453, %82, %78
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #6
  br label %471

469:                                              ; preds = %222
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #6
  %470 = and i32 %11, -2097153
  br label %471

471:                                              ; preds = %469, %468
  %472 = phi i32 [ %470, %469 ], [ %11, %468 ]
  %473 = and i32 %68, -2097153
  br label %474

474:                                              ; preds = %471, %67
  %475 = phi i32 [ %472, %471 ], [ %11, %67 ]
  %476 = phi i32 [ %473, %471 ], [ %68, %67 ]
  %477 = load ptr, ptr %8, align 4
  %478 = getelementptr i8, ptr %477, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %11) #6, !srcloc !12
  %479 = load ptr, ptr %8, align 4
  %480 = getelementptr i8, ptr %479, i32 4195584
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %480, i32 65537) #6, !srcloc !12
  %481 = icmp eq i32 %475, 0
  br i1 %481, label %492, label %482

482:                                              ; preds = %474
  %483 = and i32 %476, %475
  call void @nvkm_snprintbf(ptr noundef nonnull %5, i32 noundef 128, ptr noundef nonnull @nv50_gr_intr_name, i32 noundef %483) #6
  %484 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %485 = load i32, ptr %484, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %482
  %488 = load ptr, ptr %6, align 4
  %489 = getelementptr inbounds %struct.nvkm_device, ptr %488, i32 0, i32 2
  %490 = load ptr, ptr %489, align 8
  %491 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %490, ptr noundef nonnull @.str.45, ptr noundef %491, i32 noundef %11, ptr noundef nonnull %5, i32 noundef %43, i64 noundef %31, ptr noundef %42, i32 noundef %20, i32 noundef %27, i32 noundef %21, i32 noundef %24) #8
  br label %492

492:                                              ; preds = %487, %482, %474
  %493 = load ptr, ptr %8, align 4
  %494 = getelementptr i8, ptr %493, i32 4196388
  %495 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %494) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %496 = icmp sgt i32 %495, -1
  br i1 %496, label %504, label %497

497:                                              ; preds = %492
  %498 = load ptr, ptr %8, align 4
  %499 = getelementptr i8, ptr %498, i32 4196388
  %500 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %499) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %501 = and i32 %500, 2147483647
  %502 = load ptr, ptr %8, align 4
  %503 = getelementptr i8, ptr %502, i32 4196388
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %503, i32 %501) #6, !srcloc !12
  br label %504

504:                                              ; preds = %497, %492
  %505 = load ptr, ptr %28, align 8
  %506 = load i32, ptr %4, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %505, i32 noundef %506, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4194444
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 4) #6, !srcloc !12
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4196356
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1073741824) #6, !srcloc !12
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4220928
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1073741824) #6, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4197380
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1073741824) #6, !srcloc !12
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4200448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1073741824) #6, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4214808
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1073741824) #6, !srcloc !12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4202496
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -1073741824) #6, !srcloc !12
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 5440
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  br label %23

23:                                               ; preds = %52, %1
  %24 = phi i32 [ 0, %1 ], [ %53, %52 ]
  %25 = shl nuw nsw i32 1, %24
  %26 = and i32 %25, %21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %22, align 4
  %30 = icmp ult i32 %29, 160
  %31 = load ptr, ptr %4, align 4
  br i1 %30, label %32, label %42

32:                                               ; preds = %28
  %33 = shl i32 %24, 12
  %34 = add nuw nsw i32 %33, 4229376
  %35 = getelementptr i8, ptr %31, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -1073741824) #6, !srcloc !12
  %36 = load ptr, ptr %4, align 4
  %37 = add nuw nsw i32 %33, 4230664
  %38 = getelementptr i8, ptr %36, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -1073741824) #6, !srcloc !12
  %39 = load ptr, ptr %4, align 4
  %40 = add nuw nsw i32 %33, 4227860
  %41 = getelementptr i8, ptr %39, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1073741824) #6, !srcloc !12
  br label %52

42:                                               ; preds = %28
  %43 = shl i32 %24, 11
  %44 = add nuw nsw i32 %43, 4228608
  %45 = getelementptr i8, ptr %31, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 -1073741824) #6, !srcloc !12
  %46 = load ptr, ptr %4, align 4
  %47 = add nuw nsw i32 %43, 4228872
  %48 = getelementptr i8, ptr %46, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 -1073741824) #6, !srcloc !12
  %49 = load ptr, ptr %4, align 4
  %50 = add nuw nsw i32 %43, 4227868
  %51 = getelementptr i8, ptr %49, i32 %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 -1073741824) #6, !srcloc !12
  br label %52

52:                                               ; preds = %42, %32, %23
  %53 = add nuw nsw i32 %24, 1
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %23

55:                                               ; preds = %52
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 4194568
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -1) #6, !srcloc !12
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 4194616
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -1) #6, !srcloc !12
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr i8, ptr %60, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 -1) #6, !srcloc !12
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr i8, ptr %62, i32 4194620
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 -1) #6, !srcloc !12
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr i8, ptr %64, i32 4195584
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 65537) #6, !srcloc !12
  %66 = getelementptr inbounds %struct.nv50_gr, ptr %0, i32 0, i32 3
  %67 = tail call i32 @nv50_grctx_init(ptr noundef %3, ptr noundef %66) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %116

69:                                               ; preds = %55
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr i8, ptr %70, i32 4196388
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 0) #6, !srcloc !12
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr i8, ptr %72, i32 4196392
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #6, !srcloc !12
  %74 = load ptr, ptr %4, align 4
  %75 = getelementptr i8, ptr %74, i32 4196396
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #6, !srcloc !12
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr i8, ptr %76, i32 4196400
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #6, !srcloc !12
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr i8, ptr %78, i32 4195116
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #6, !srcloc !12
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 4195120
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #6, !srcloc !12
  %82 = load i32, ptr %22, align 4
  %83 = and i32 %82, 240
  %84 = add nsw i32 %83, -80
  %85 = lshr exact i32 %84, 4
  switch i32 %85, label %89 [
    i32 0, label %86
    i32 3, label %86
    i32 4, label %86
  ]

86:                                               ; preds = %69, %69, %69
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i8, ptr %87, i32 4205736
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 2048) #6, !srcloc !12
  br label %98

89:                                               ; preds = %69
  switch i32 %82, label %93 [
    i32 160, label %90
    i32 170, label %90
    i32 172, label %90
  ]

90:                                               ; preds = %89, %89, %89
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr i8, ptr %91, i32 4205736
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 2050) #6, !srcloc !12
  br label %98

93:                                               ; preds = %89
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr i8, ptr %94, i32 4205760
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 0) #6, !srcloc !12
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr i8, ptr %96, i32 4205736
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 2) #6, !srcloc !12
  br label %98

98:                                               ; preds = %93, %90, %86
  br label %99

99:                                               ; preds = %99, %98
  %100 = phi i32 [ %114, %99 ], [ 0, %98 ]
  %101 = load ptr, ptr %4, align 4
  %102 = shl i32 %100, 4
  %103 = add nuw nsw i32 %102, 4205600
  %104 = getelementptr i8, ptr %101, i32 %103
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 0) #6, !srcloc !12
  %105 = load ptr, ptr %4, align 4
  %106 = add nuw nsw i32 %102, 4205604
  %107 = getelementptr i8, ptr %105, i32 %106
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #6, !srcloc !12
  %108 = load ptr, ptr %4, align 4
  %109 = add nuw nsw i32 %102, 4205608
  %110 = getelementptr i8, ptr %108, i32 %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 0) #6, !srcloc !12
  %111 = load ptr, ptr %4, align 4
  %112 = add nuw nsw i32 %102, 4205612
  %113 = getelementptr i8, ptr %111, i32 %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 0) #6, !srcloc !12
  %114 = add nuw nsw i32 %100, 1
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %99

116:                                              ; preds = %99, %55
  %117 = phi i32 [ %67, %55 ], [ 0, %99 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_grctx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nv50_gr, ptr %7, i32 0, i32 2
  store i32 0, ptr %10, align 8
  store ptr %7, ptr %4, align 4
  %11 = tail call i32 @nvkm_gr_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull %7) #6
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %11, %9 ], [ -12, %5 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 104) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nv50_gr, ptr %6, i32 0, i32 2
  store i32 0, ptr %9, align 8
  store ptr %6, ptr %3, align 4
  %10 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv50_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #6
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_gr_chan_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nv50_gr_chan, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_gr, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nv50_gr, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef %10, i32 noundef %2, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load ptr, ptr %3, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %14) #6
  %18 = load ptr, ptr %7, align 4
  %19 = load ptr, ptr %3, align 4
  tail call void @nv50_grctx_fill(ptr noundef %18, ptr noundef %19) #6
  %20 = load ptr, ptr %3, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %20) #6
  br label %24

24:                                               ; preds = %13, %4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_grctx_fill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_tp_trap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [128 x i8], align 1
  %8 = alloca [128 x i8], align 1
  %9 = alloca [128 x i8], align 1
  %10 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 5440
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %9, i8 0, i32 128, i1 false), !annotation !10
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  %17 = icmp eq i32 %4, 0
  %18 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %19 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  %20 = icmp ne i32 %4, 0
  br label %21

21:                                               ; preds = %271, %6
  %22 = phi i32 [ 0, %6 ], [ %273, %271 ]
  %23 = phi i32 [ 0, %6 ], [ %272, %271 ]
  %24 = shl nuw nsw i32 1, %22
  %25 = and i32 %24, %15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %271, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %16, align 4
  %29 = icmp ult i32 %28, 160
  %30 = shl i32 %22, 12
  %31 = add i32 %30, %2
  %32 = shl i32 %22, 11
  %33 = add i32 %32, %3
  %34 = select i1 %29, i32 %31, i32 %33
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %38 = and i32 %37, 2147483647
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %271, label %40

40:                                               ; preds = %27
  %41 = add i32 %23, 1
  switch i32 %1, label %257 [
    i32 6, label %42
    i32 7, label %75
    i32 8, label %167
  ]

42:                                               ; preds = %40
  br i1 %17, label %268, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %18, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.71, ptr noundef %19, i32 noundef %22) #8
  br label %50

50:                                               ; preds = %46, %43
  %51 = add i32 %34, 16
  %52 = add i32 %34, 4
  %53 = icmp ugt i32 %52, %51
  br i1 %53, label %68, label %54

54:                                               ; preds = %65, %50
  %55 = phi i32 [ %66, %65 ], [ %52, %50 ]
  %56 = load i32, ptr %18, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %10, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %12, align 4
  %63 = getelementptr i8, ptr %62, i32 %55
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.72, ptr noundef %19, i32 noundef %55, i32 noundef %64) #8
  br label %65

65:                                               ; preds = %58, %54
  %66 = add i32 %55, 4
  %67 = icmp ugt i32 %66, %51
  br i1 %67, label %68, label %54

68:                                               ; preds = %65, %50
  call void @nvkm_snprintbf(ptr noundef nonnull %9, i32 noundef 128, ptr noundef nonnull @nv50_tex_traps, i32 noundef %38) #6
  %69 = load i32, ptr %18, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %268, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %10, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.73, ptr noundef %19, ptr noundef %5, i32 noundef %22, i32 noundef %38, ptr noundef nonnull %9) #8
  br label %268

75:                                               ; preds = %40
  %76 = and i32 %37, 67305472
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %156, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %10, align 4
  %80 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 5440
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %8, i8 0, i32 128, i1 false) #6, !annotation !10
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 16
  %85 = add nuw nsw i32 %30, 4227584
  %86 = add nuw nsw i32 %32, 4227328
  br label %87

87:                                               ; preds = %140, %78
  %88 = phi i32 [ 0, %78 ], [ %141, %140 ]
  %89 = phi i32 [ 0, %78 ], [ %142, %140 ]
  %90 = shl i32 16777216, %89
  %91 = and i32 %90, %83
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %140, label %93

93:                                               ; preds = %87
  %94 = load i32, ptr %84, align 4
  %95 = icmp ult i32 %94, 160
  %96 = shl i32 %89, 7
  %97 = select i1 %95, i32 %85, i32 %86
  %98 = add i32 %97, %96
  %99 = load ptr, ptr %80, align 4
  %100 = or i32 %98, 16
  %101 = getelementptr i8, ptr %99, i32 %100
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %103 = load ptr, ptr %80, align 4
  %104 = or i32 %98, 20
  %105 = getelementptr i8, ptr %103, i32 %104
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %140, label %108

108:                                              ; preds = %93
  br i1 %17, label %134, label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %80, align 4
  %111 = or i32 %98, 32
  %112 = getelementptr i8, ptr %110, i32 %111
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %114 = load ptr, ptr %80, align 4
  %115 = or i32 %98, 36
  %116 = getelementptr i8, ptr %114, i32 %115
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %118 = load ptr, ptr %80, align 4
  %119 = or i32 %98, 112
  %120 = getelementptr i8, ptr %118, i32 %119
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %122 = load ptr, ptr %80, align 4
  %123 = or i32 %98, 116
  %124 = getelementptr i8, ptr %122, i32 %123
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @nvkm_snprintbf(ptr noundef nonnull %8, i32 noundef 128, ptr noundef nonnull @nv50_mp_exec_errors, i32 noundef %106) #6
  %126 = load i32, ptr %18, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %109
  %129 = load ptr, ptr %10, align 4
  %130 = getelementptr inbounds %struct.nvkm_device, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8
  %132 = and i32 %117, 16777215
  %133 = lshr i32 %117, 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.79, ptr noundef %19, i32 noundef %22, i32 noundef %89, i32 noundef %106, ptr noundef nonnull %8, i32 noundef %132, i32 noundef %133, i32 noundef %121, i32 noundef %125) #8
  br label %134

134:                                              ; preds = %128, %109, %108
  %135 = load ptr, ptr %80, align 4
  %136 = getelementptr i8, ptr %135, i32 %100
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %102) #6, !srcloc !12
  %137 = load ptr, ptr %80, align 4
  %138 = getelementptr i8, ptr %137, i32 %104
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #6, !srcloc !12
  %139 = add i32 %88, 1
  br label %140

140:                                              ; preds = %134, %93, %87
  %141 = phi i32 [ %139, %134 ], [ %88, %93 ], [ %88, %87 ]
  %142 = add nuw nsw i32 %89, 1
  %143 = icmp eq i32 %142, 4
  br i1 %143, label %144, label %87

144:                                              ; preds = %140
  %145 = icmp eq i32 %141, 0
  %146 = and i1 %20, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i32, ptr %18, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %10, align 4
  %152 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.80, ptr noundef %19, i32 noundef %22) #8
  br label %154

154:                                              ; preds = %150, %147, %144
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #6
  %155 = and i32 %37, 2080178175
  br label %156

156:                                              ; preds = %154, %75
  %157 = phi i32 [ %155, %154 ], [ %38, %75 ]
  %158 = icmp ne i32 %157, 0
  %159 = and i1 %20, %158
  br i1 %159, label %160, label %257

160:                                              ; preds = %156
  call void @nvkm_snprintbf(ptr noundef nonnull %9, i32 noundef 128, ptr noundef nonnull @nv50_mpc_traps, i32 noundef %157) #6
  %161 = load i32, ptr %18, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %268, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr %10, align 4
  %165 = getelementptr inbounds %struct.nvkm_device, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.73, ptr noundef %19, ptr noundef %5, i32 noundef %22, i32 noundef %157, ptr noundef nonnull %9) #8
  br label %268

167:                                              ; preds = %40
  br i1 %17, label %268, label %168

168:                                              ; preds = %167
  %169 = load ptr, ptr %10, align 4
  %170 = getelementptr inbounds %struct.nvkm_device, ptr %169, i32 0, i32 11
  %171 = load ptr, ptr %170, align 4
  %172 = add i32 %34, 4
  %173 = getelementptr i8, ptr %171, i32 %172
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %175 = load ptr, ptr %170, align 4
  %176 = add i32 %34, 8
  %177 = getelementptr i8, ptr %175, i32 %176
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %179 = load ptr, ptr %170, align 4
  %180 = add i32 %34, 12
  %181 = getelementptr i8, ptr %179, i32 %180
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %183 = load ptr, ptr %170, align 4
  %184 = add i32 %34, 16
  %185 = getelementptr i8, ptr %183, i32 %184
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %187 = load ptr, ptr %170, align 4
  %188 = add i32 %34, 20
  %189 = getelementptr i8, ptr %187, i32 %188
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %191 = load ptr, ptr %170, align 4
  %192 = add i32 %34, 24
  %193 = getelementptr i8, ptr %191, i32 %192
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %195 = load ptr, ptr %170, align 4
  %196 = add i32 %34, 28
  %197 = getelementptr i8, ptr %195, i32 %196
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %7, i8 0, i32 128, i1 false) #6, !annotation !10
  %199 = and i32 %37, 128
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %239, label %201

201:                                              ; preds = %168
  %202 = icmp sgt i32 %186, -1
  br i1 %202, label %215, label %203

203:                                              ; preds = %201
  %204 = load i32, ptr %18, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %10, align 4
  %208 = getelementptr inbounds %struct.nvkm_device, ptr %207, i32 0, i32 2
  %209 = load ptr, ptr %208, align 8
  %210 = lshr i32 %186, 24
  %211 = and i32 %210, 31
  %212 = or i32 %211, %178
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.98, ptr noundef %19, i32 noundef %22, i32 noundef %182, i32 noundef %212) #8
  br label %213

213:                                              ; preds = %206, %203
  %214 = and i32 %186, -520093697
  br label %235

215:                                              ; preds = %201
  %216 = and i32 %186, 12
  %217 = icmp eq i32 %216, 0
  %218 = load i32, ptr %18, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %217, label %230, label %220

220:                                              ; preds = %215
  br i1 %219, label %228, label %221

221:                                              ; preds = %220
  %222 = load ptr, ptr %10, align 4
  %223 = getelementptr inbounds %struct.nvkm_device, ptr %222, i32 0, i32 2
  %224 = load ptr, ptr %223, align 8
  %225 = lshr i32 %186, 7
  %226 = and i32 %225, 31
  %227 = or i32 %226, %178
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.99, ptr noundef %19, i32 noundef %22, i32 noundef %182, i32 noundef %227) #8
  br label %228

228:                                              ; preds = %221, %220
  %229 = and i32 %186, -3969
  br label %235

230:                                              ; preds = %215
  br i1 %219, label %235, label %231

231:                                              ; preds = %230
  %232 = load ptr, ptr %10, align 4
  %233 = getelementptr inbounds %struct.nvkm_device, ptr %232, i32 0, i32 2
  %234 = load ptr, ptr %233, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.100, ptr noundef %19, i32 noundef %22, i32 noundef %182, i32 noundef %178) #8
  br label %235

235:                                              ; preds = %231, %230, %228, %213
  %236 = phi i32 [ %214, %213 ], [ %229, %228 ], [ %186, %231 ], [ %186, %230 ]
  %237 = and i32 %37, 2147483519
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %248, label %239

239:                                              ; preds = %235, %168
  %240 = phi i32 [ %236, %235 ], [ %186, %168 ]
  %241 = phi i32 [ %237, %235 ], [ %38, %168 ]
  call void @nvkm_snprintbf(ptr noundef nonnull %7, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_prop, i32 noundef %241) #6
  %242 = load i32, ptr %18, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %256, label %244

244:                                              ; preds = %239
  %245 = load ptr, ptr %10, align 4
  %246 = getelementptr inbounds %struct.nvkm_device, ptr %245, i32 0, i32 2
  %247 = load ptr, ptr %246, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.101, ptr noundef %19, i32 noundef %22, i32 noundef %241, ptr noundef nonnull %7, i32 noundef %182, i32 noundef %178) #8
  br label %248

248:                                              ; preds = %244, %235
  %249 = phi i32 [ %236, %235 ], [ %240, %244 ]
  %250 = load i32, ptr %18, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load ptr, ptr %10, align 4
  %254 = getelementptr inbounds %struct.nvkm_device, ptr %253, i32 0, i32 2
  %255 = load ptr, ptr %254, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.102, ptr noundef %19, i32 noundef %22, i32 noundef %174, i32 noundef %249, i32 noundef %190, i32 noundef %194, i32 noundef %198) #8
  br label %256

256:                                              ; preds = %252, %248, %239
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #6
  br label %268

257:                                              ; preds = %156, %40
  %258 = phi i32 [ %38, %40 ], [ %157, %156 ]
  %259 = icmp ne i32 %258, 0
  %260 = and i1 %20, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %257
  %262 = load i32, ptr %18, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = load ptr, ptr %10, align 4
  %266 = getelementptr inbounds %struct.nvkm_device, ptr %265, i32 0, i32 2
  %267 = load ptr, ptr %266, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %267, ptr noundef nonnull @.str.74, ptr noundef %19, ptr noundef %5, i32 noundef %22, i32 noundef %258) #8
  br label %268

268:                                              ; preds = %264, %261, %257, %256, %167, %163, %160, %71, %68, %42
  %269 = load ptr, ptr %12, align 4
  %270 = getelementptr i8, ptr %269, i32 %34
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 -1073741824) #6, !srcloc !12
  br label %271

271:                                              ; preds = %268, %27, %21
  %272 = phi i32 [ %41, %268 ], [ %23, %27 ], [ %23, %21 ]
  %273 = add nuw nsw i32 %22, 1
  %274 = icmp eq i32 %273, 16
  br i1 %274, label %275, label %21

275:                                              ; preds = %271
  %276 = icmp eq i32 %272, 0
  %277 = and i1 %20, %276
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = load i32, ptr %18, align 4
  %280 = icmp ugt i32 %279, 1
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load ptr, ptr %10, align 4
  %283 = getelementptr inbounds %struct.nvkm_device, ptr %282, i32 0, i32 2
  %284 = load ptr, ptr %283, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %284, ptr noundef nonnull @.str.75, ptr noundef %19, ptr noundef %5) #8
  br label %285

285:                                              ; preds = %281, %278, %275
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i64 3968226}
!9 = !{i64 2151507679}
!10 = !{!"auto-init"}
!11 = !{i64 2151508901}
!12 = !{i64 3967808}
