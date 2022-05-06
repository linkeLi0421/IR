; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.nvkm_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.124, [0 x %struct.nvkm_sclass] }
%struct.anon.124 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon.126, %struct.anon.127, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.128, %struct.anon.128, [0 x %struct.nvkm_sclass] }
%struct.anon.126 = type { ptr, i32 }
%struct.anon.127 = type { ptr, i32 }
%struct.anon.128 = type { i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.gf100_gr_ucode = type { %struct.nvkm_blob, %struct.nvkm_blob }
%struct.nvkm_blob = type { ptr, i32 }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.125, %struct.anon.131, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.132], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.anon.131 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.132 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.fermi_a_zbc_color_v0 = type { i8, i8, i8, [5 x i8], [4 x i32], [4 x i32] }
%struct.fermi_a_zbc_depth_v0 = type { i8, i8, i8, [5 x i8], i32, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_ltc = type { ptr, %struct.nvkm_subdev, i32, i32, %struct.mutex, i32, i32, ptr, i32, i32, [16 x [4 x i32]], [16 x i32], [16 x i32] }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.151, %struct.anon.152, i8, ptr, ptr }
%struct.anon.151 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.152 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.gf100_gr_chan = type { %struct.nvkm_object, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.165] }
%struct.anon.165 = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.gf100_gr_object = type { %struct.nvkm_object, ptr }

@gf100_gr_zbc = dso_local constant %struct.gf100_gr_func_zbc { ptr @gf100_gr_zbc_clear_color, ptr @gf100_gr_zbc_clear_depth, ptr null, ptr null }, align 4
@gf100_fermi = dso_local constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr @gf100_fermi_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gf100_gr_init_main_0 = dso_local constant [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4194432, i8 1, i32 4, i32 3179458 }, %struct.gf100_gr_init { i32 4194440, i8 1, i32 4, i32 28647 }, %struct.gf100_gr_init { i32 4194444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194448, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4194620, i8 1, i32 4, i32 20513271 }, %struct.gf100_gr_init { i32 4194624, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4194628, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194632, i8 1, i32 4, i32 272 }, %struct.gf100_gr_init { i32 4194616, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194608, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194596, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_fe_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4211036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211056, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_pri_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4211848, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_rstr2d_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4225032, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_pd_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_ds_0 = dso_local constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_scc_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4227132, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_prop_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293792, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_gpc_unk_0 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294148, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294420, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4293508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_setup_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294676, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_crstr_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295428, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_setup_1 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294856, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4294860, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294864, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4294868, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_zcull_0 = dso_local constant [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294928, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 4294932, i8 1, i32 4, i32 769 }, %struct.gf100_gr_init { i32 4294936, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4295040, i8 1, i32 4, i32 2004318064 }, %struct.gf100_gr_init { i32 4295044, i8 3, i32 4, i32 2004318071 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_gpm_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295684, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295816, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_gpc_unk_1 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 80 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_gcc_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4296716, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296728, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_tpccs_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300040, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300048, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_tex_0 = dso_local constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299448, i8 1, i32 4, i32 231 }, %struct.gf100_gr_init { i32 4299452, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_pe_0 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298764, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298828, i8 1, i32 4, i32 23493 }, %struct.gf100_gr_init { i32 4298832, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_l1c_0 = dso_local constant [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299944, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4299956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299960, i8 1, i32 4, i32 35828 }, %struct.gf100_gr_init { i32 4299964, i8 1, i32 4, i32 672364038 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_wwdx_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299732, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4299740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_tpccs_1 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300076, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_mpc_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299788, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_be_0 = dso_local constant [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229132, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229392, i8 9, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229460, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4229508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229512, i8 1, i32 4, i32 134480385 }, %struct.gf100_gr_init { i32 4229516, i8 1, i32 4, i32 -2143281136 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_fe_1 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4210928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_pe_1 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298880, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], align 4
@.str = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@__const.gf100_gr_zbc_init.one = private unnamed_addr constant [8 x i32] [i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@__const.gf100_gr_zbc_init.f32_1 = private unnamed_addr constant [8 x i32] [i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [57 x i8] c"%s: wait for idle timeout (en: %d, ctxsw: %d, busy: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"STACK_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"API_STACK_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"RET_EMPTY_STACK_ERROR\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"PC_WRAP\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"MISALIGNED_PC\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"PC_OVERFLOW\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"MISALIGNED_IMMC_ADDR\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"MISALIGNED_REG\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"ILLEGAL_INSTR_ENCODING\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"ILLEGAL_SPH_INSTR_COMBO\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"ILLEGAL_INSTR_PARAM\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"INVALID_CONST_ADDR\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"OOR_REG\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"OOR_ADDR\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"MISALIGNED_ADDR\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"INVALID_ADDR_SPACE\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"ILLEGAL_INSTR_PARAM2\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"INVALID_CONST_ADDR_LDC\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"GEOMETRY_SM_ERROR\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"DIVERGENT\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"WARP_EXIT\00", align 1
@gf100_mp_warp_error = dso_local constant [22 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.3, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"SM_TO_SM_FAULT\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"L1_ERROR\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"MULTIPLE_WARP_ERRORS\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"PHYSICAL_STACK_OVERFLOW\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"BPT_INT\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"BPT_PAUSE\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"SINGLE_STEP_COMPLETE\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"ECC_SEC_ERROR\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ECC_DED_ERROR\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@gf100_mp_global_error = dso_local constant [11 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.24 }, %struct.nvkm_bitfield { i32 2, ptr @.str.25 }, %struct.nvkm_bitfield { i32 4, ptr @.str.26 }, %struct.nvkm_bitfield { i32 8, ptr @.str.27 }, %struct.nvkm_bitfield { i32 16, ptr @.str.28 }, %struct.nvkm_bitfield { i32 32, ptr @.str.29 }, %struct.nvkm_bitfield { i32 64, ptr @.str.30 }, %struct.nvkm_bitfield { i32 536870912, ptr @.str.31 }, %struct.nvkm_bitfield { i32 1073741824, ptr @.str.32 }, %struct.nvkm_bitfield { i32 -2147483648, ptr @.str.33 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [58 x i8] c"%s: GPC%i/TPC%i/MP trap: global %08x [%s] warp %04x [%s]\0A\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gf100_gr_ = internal constant %struct.nvkm_gr_func { ptr @gf100_gr_dtor, ptr @gf100_gr_oneinit, ptr @gf100_gr_init_, ptr @gf100_gr_fini, ptr @gf100_gr_intr, ptr null, ptr null, ptr @gf100_gr_chan_new, ptr @gf100_gr_object_get, ptr @gf100_gr_units, ptr @gf100_gr_chsw_load, %struct.anon.124 { ptr @gf100_gr_fecs_stop_ctxsw, ptr @gf100_gr_fecs_start_ctxsw, ptr @gf100_gr_ctxsw_inst }, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@.str.36 = private unnamed_addr constant [3 x i8] c"Gr\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@gf100_gr_flcn = internal constant %struct.nvkm_falcon_func { %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, ptr null, ptr null, i32 0, i32 1536, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 0, ptr @nvkm_falcon_v1_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.128 zeroinitializer, %struct.anon.128 zeroinitializer, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"fecs\00", align 1
@gf100_gr_new_.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"&gr->fecs.mutex\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"gpccs\00", align 1
@gf100_grhub_data = internal global [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], align 4
@gf100_gr_fecs_ucode = dso_local global %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gf100_grhub_code, i32 3072 }, %struct.nvkm_blob { ptr @gf100_grhub_data, i32 772 } }, align 4
@gf100_gr_gpccs_ucode = dso_local global %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gf100_grgpc_code, i32 1792 }, %struct.nvkm_blob { ptr @gf100_grgpc_data, i32 100 } }, align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"NvGrUseFW\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"fuc409c\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"fuc409d\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"fuc41ac\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"fuc41ad\00", align 1
@gf100_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gf100_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gf100_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [49 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: fermi mthd %08x\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"%s: %06x - done %08x\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"%s: %06x - stat %08x %08x %08x %08x\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"%s: failed to construct context\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.51 = private unnamed_addr constant [13 x i8] c"NvGrResetWar\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.53 = private unnamed_addr constant [76 x i8] c"%s: ILLEGAL_MTHD ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.54 = private unnamed_addr constant [77 x i8] c"%s: ILLEGAL_CLASS ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@nv50_data_error_names = external dso_local constant [0 x %struct.nvkm_enum], align 4
@.str.55 = private unnamed_addr constant [84 x i8] c"%s: DATA_ERROR %08x [%s] ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"%s: TRAP ch %d [%010llx %s]\0A\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1
@gf100_dispatch_error = internal constant [4 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.68 }, %struct.nvkm_bitfield { i32 2, ptr @.str.69 }, %struct.nvkm_bitfield { i32 4, ptr @.str.70 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.58 = private unnamed_addr constant [24 x i8] c"%s: DISPATCH %08x [%s]\0A\00", align 1
@gf100_m2mf_error = internal constant [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.71 }, %struct.nvkm_bitfield { i32 2, ptr @.str.72 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.59 = private unnamed_addr constant [20 x i8] c"%s: M2MF %08x [%s]\0A\00", align 1
@gf100_ccache_error = internal constant [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.73 }, %struct.nvkm_bitfield { i32 2, ptr @.str.74 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.60 = private unnamed_addr constant [22 x i8] c"%s: CCACHE %08x [%s]\0A\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"%s: SHADER %08x, sph: 0x%06x, stage: 0x%02x\0A\00", align 1
@gf100_unk6_error = internal constant [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.75 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.62 = private unnamed_addr constant [20 x i8] c"%s: UNK6 %08x [%s]\0A\00", align 1
@gf100_macro_error = internal constant [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.76 }, %struct.nvkm_bitfield { i32 2, ptr @.str.77 }, %struct.nvkm_bitfield { i32 4, ptr @.str.78 }, %struct.nvkm_bitfield { i32 8, ptr @.str.79 }, %struct.nvkm_bitfield { i32 16, ptr @.str.80 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.63 = private unnamed_addr constant [47 x i8] c"%s: MACRO %08x [%s], pc: 0x%03x%s, op: 0x%08x\0A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c" (invalid)\00", align 1
@gk104_sked_error = internal constant [15 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 64, ptr @.str.81 }, %struct.nvkm_bitfield { i32 128, ptr @.str.82 }, %struct.nvkm_bitfield { i32 512, ptr @.str.83 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.84 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.85 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.86 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.87 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.88 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.89 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.90 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.91 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.92 }, %struct.nvkm_bitfield { i32 33554432, ptr @.str.93 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.94 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.65 = private unnamed_addr constant [21 x i8] c"%s: SKED: %08x [%s]\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"%s: ROP%d %08x %08x\0A\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"%s: TRAP UNHANDLED %08x\0A\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"INJECTED_BUNDLE_ERROR\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"CLASS_SUBCH_MISMATCH\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"SUBCHSW_DURING_NOTIFY\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"PUSH_TOO_MUCH_DATA\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"PUSH_NOT_ENOUGH_DATA\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"INTR\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"LDCONST_OOB\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"TEMP_TOO_SMALL\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"TOO_FEW_PARAMS\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"TOO_MANY_PARAMS\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ILLEGAL_OPCODE\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"DOUBLE_BRANCH\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"WATCHDOG\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"CTA_RESUME\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"CONSTANT_BUFFER_SIZE\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"LOCAL_MEMORY_SIZE_POS\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"LOCAL_MEMORY_SIZE_NEG\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"WARP_CSTACK_SIZE\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"TOTAL_TEMP_SIZE\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"REGISTER_COUNT\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"TOTAL_THREADS\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"PROGRAM_OFFSET\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"SHARED_MEMORY_SIZE\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"CTA_THREAD_DIMENSION_ZERO\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"MEMORY_WINDOW_OVERLAP\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"SHARED_CONFIG_TOO_SMALL\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"TOTAL_REGISTER_COUNT\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"%s: GPC%d/ZCULL: %08x\0A\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"%s: GPC%d/CCACHE: %08x\0A\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"%s: GPC%d/ESETUP: %08x\0A\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"%s: GPC%d/%08x: unknown\0A\00", align 1
@gf100_gpc_rop_error = internal constant [7 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 2, ptr @.str.100 }, %struct.nvkm_bitfield { i32 16, ptr @.str.101 }, %struct.nvkm_bitfield { i32 32, ptr @.str.102 }, %struct.nvkm_bitfield { i32 128, ptr @.str.103 }, %struct.nvkm_bitfield { i32 256, ptr @.str.104 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.105 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.99 = private unnamed_addr constant [79 x i8] c"%s: GPC%d/PROP trap: %08x [%s] x = %u, y = %u, format = %x, storage type = %x\0A\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"RT_PITCH_OVERRUN\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"RT_WIDTH_OVERRUN\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"RT_HEIGHT_OVERRUN\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"ZETA_STORAGE_TYPE_MISMATCH\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"RT_STORAGE_TYPE_MISMATCH\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"RT_LINEAR_MISMATCH\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"%s: GPC%d/TPC%d/TEX: %08x\0A\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"%s: GPC%d/TPC%d/POLY: %08x\0A\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"%s: GPC%d/TPC%d/L1C: %08x\0A\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"%s: GPC%d/TPC%d/MPC: %08x\0A\00", align 1
@.str.110 = private unnamed_addr constant [31 x i8] c"%s: GPC%d/TPC%d/%08x: unknown\0A\00", align 1
@.str.111 = private unnamed_addr constant [54 x i8] c"%s: FECS MTHD subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"%s: FECS ucode error %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [27 x i8] c"%s: FECS watchdog timeout\0A\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"%s: FECS %08x\0A\00", align 1
@__const.gf100_gr_chan_new.args = private unnamed_addr constant %struct.gf100_vmm_map_v0 { i8 0, i8 0, i8 0, i8 1, i8 0 }, align 1
@gf100_gr_chan = internal constant %struct.nvkm_object_func { ptr @gf100_gr_chan_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_chan_bind, ptr null }, align 4
@gf100_gr_object_func = internal constant %struct.nvkm_object_func zeroinitializer, align 4
@gf100_grhub_code = internal global <{ [724 x i32], [44 x i32] }> <{ [724 x i32] [i32 60493557, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 133234936, i32 66061568, i32 1036290, i32 -135265091, i32 520449, i32 50589703, i32 -1124069424, i32 -1124009980, i32 523780, i32 1107302385, i32 -822078480, i32 300351505, i32 347472137, i32 1375752, i32 -251516944, i32 -267255801, i32 47185923, i32 -251347712, i32 -33109993, i32 616366096, i32 117442545, i32 -805305360, i32 79495170, i32 537077745, i32 16779249, i32 -805239824, i32 79495170, i32 537143281, i32 17041393, i32 -805239824, i32 79495170, i32 537602033, i32 17303537, i32 -805239824, i32 79495170, i32 537667569, i32 18614257, i32 -805239824, i32 79495170, i32 -251591790, i32 -267845625, i32 63963907, i32 -251347712, i32 -259587033, i32 133234723, i32 66061312, i32 184320, i32 670041277, i32 520452, i32 258051, i32 -1124072752, i32 271709188, i32 -1778063375, i32 -197073936, i32 -21403615, i32 -1863203070, i32 -268238464, i32 260055028, i32 18345986, i32 -1241243717, i32 133234962, i32 66061056, i32 118785, i32 133235901, i32 66061312, i32 118785, i32 401671357, i32 -135266048, i32 287438082, i32 589427976, i32 284684296, i32 141566453, i32 -1744826728, i32 569704719, i32 345309520, i32 520456, i32 17035456, i32 -1124072240, i32 520452, i32 17035457, i32 -1124072240, i32 3192580, i32 2079507, i32 -251464266, i32 -254607353, i32 265289987, i32 -1241203456, i32 280365077, i32 135575041, i32 -184410183, i32 -1157442783, i32 60293151, i32 4714754, i32 1346629664, i32 134500000, i32 -201187399, i32 1319148833, i32 -188940020, i32 -1600314892, i32 -201259954, i32 1319148833, i32 -135266048, i32 -1658719230, i32 134237856, i32 -932699660, i32 200548351, i32 72261882, i32 1747055624, i32 -1224728645, i32 -1233125312, i32 468975922, i32 16249022, i32 141566453, i32 -184485904, i32 -251129567, i32 -268369913, i32 30409219, i32 -1123762944, i32 521793556, i32 134219761, i32 -805174288, i32 79495169, i32 -201316108, i32 -672137167, i32 958526480, i32 -1309408780, i32 -180354588, i32 -1124013797, i32 77197460, i32 251660273, i32 -805174288, i32 79495177, i32 -1073735695, i32 -821947408, i32 670105617, i32 602980608, i32 2281218, i32 -182512696, i32 -939489013, i32 200548131, i32 -1189021342, i32 -1799552494, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 838074674, i32 1143076098, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 553387197, i32 -1712286531, i32 520454, i32 33812495, i32 -1124070960, i32 20050948, i32 172237301, i32 -1712286531, i32 520454, i32 33812503, i32 -1124070960, i32 856617988, i32 314122489, i32 20116482, i32 -184405260, i32 -66436063, i32 520480, i32 33812672, i32 -1124072752, i32 319747076, i32 -199285816, i32 838077707, i32 36893697, i32 172237301, i32 -251582480, i32 -255655929, i32 47186435, i32 -1123762944, i32 77197460, i32 385878001, i32 -805174288, i32 79495177, i32 -15855883, i32 -201202512, i32 -222753509, i32 -735972094, i32 1175385097, i32 -201136976, i32 -1799540197, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 854851890, i32 1143076098, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 250873021, i32 284136465, i32 -184420880, i32 -184320479, i32 -1107379442, i32 522842148, i32 134219761, i32 -805174288, i32 79495170, i32 -22671627, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 -251347472, i32 -268304217, i32 -1429274461, i32 78365696, i32 -265286668, i32 -403631913, i32 -470803968, i32 15650560, i32 419493873, i32 -822021136, i32 569639167, i32 11581188, i32 31977476, i32 486541297, i32 -805305360, i32 79495182, i32 16821220, i32 -267580428, i32 -403631913, i32 569655297, i32 11265028, i32 1812722692, i32 118024177, i32 -197073936, i32 -4626399, i32 520450, i32 33812484, i32 -1124069424, i32 82309380, i32 1088679943, i32 -1184357900, i32 133235455, i32 66061056, i32 1036290, i32 -20511555, i32 49189968, i32 117503985, i32 -1153371152, i32 569639151, i32 520552, i32 33812482, i32 -1124069424, i32 66580484, i32 58597877, i32 16824305, i32 -251478087, i32 -268352281, i32 569655523, i32 79163805, i32 -5194491, i32 200586411, i32 520463, i32 50589703, i32 -1124070448, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 -4652553, i32 1625813250, i32 1088680001, i32 -241360396, i32 -264150809, i32 569655523, i32 50313576, i32 -200998968, i32 16314379, i32 -4590403, i32 1625813250, i32 1088680001, i32 -123919884, i32 284553216, i32 -251461703, i32 -264146713, i32 569655523, i32 -251594595, i32 -264146713, i32 569655523, i32 50313576, i32 -200215312, i32 16314395, i32 33613809, i32 -264182288, i32 -437247771, i32 520464, i32 17035397, i32 -1124069680, i32 150466564, i32 -201198922, i32 -437125861, i32 -437189632, i32 133234944, i32 66094336, i32 970753, i32 16254141, i32 452986865, i32 -805174288, i32 79495183, i32 -251461703, i32 -259386137, i32 569655523, i32 50313629, i32 -1469257743, i32 -197008400, i32 16293153, i32 -2080372751, i32 -805174288, i32 79495183, i32 -2080311311, i32 -821890064, i32 -196353, i32 -216271867, i32 -1799552776, i32 -251291152, i32 -267452409, i32 164626947, i32 -268124928, i32 569642151, i32 -235618864, i32 -259457017, i32 265290243, i32 -251347712, i32 -255787001, i32 47186435, i32 -251347712, i32 -259850233, i32 47186435, i32 -268124928, i32 569706487, i32 133236888, i32 66109440, i32 184322, i32 201196733, i32 522907648, i32 -1241242442, i32 -1799552480, i32 -251094544, i32 -267452409, i32 164626947, i32 -251347712, i32 -259981305, i32 47186435, i32 -251347712, i32 -251658201, i32 -260046813, i32 133235237, i32 66095104, i32 184322, i32 401605821, i32 2617616, i32 35909634, i32 -133885190, i32 -258687741, i32 133236889, i32 66066176, i32 643074, i32 26739901, i32 404010625, i32 -1233124712, i32 318572581, i32 369197061, i32 -1712286531, i32 520457, i32 33812495, i32 -1124070960, i32 520452, i32 33812609, i32 -1124073008, i32 19394564, i32 -2013263887, i32 -805174288, i32 79495170, i32 16783345, i32 -100264976, i32 66585857, i32 -1712286531, i32 520457, i32 33812503, i32 -1124070960, i32 -258687740, i32 133236121, i32 66066176, i32 643074, i32 16254141, i32 131801589, i32 146153973, i32 -200497168, i32 -135213023, i32 -1742605051, i32 2225416, i32 -1744766968, i32 133251331, i32 66093312, i32 249858, i32 884802749, i32 -184601404, i32 1475415835, i32 1408238080, i32 87423494, i32 1318585336, i32 -2125490048, i32 -1231216140, i32 313919536, i32 -551816191, i32 -250215528, i32 -259981305, i32 63963651, i32 -2147173120, i32 401686528, i32 334496000, i32 100792838, i32 16253944, i32 -251336720, i32 -268304377, i32 248513283, i32 -251347712, i32 -268435225, i32 -288422941, i32 15003904, i32 -233049056, i32 -200928780, i32 -135261950, i32 1881273616, i32 -618531576, i32 470938631, i32 -184354832, i32 -184020703, i32 -184016095, i32 -1123534815, i32 287438324, i32 -1239288568, i32 369203208, i32 133244093, i32 66061568, i32 184321, i32 532219069, i32 15200514, i32 1105457317, i32 -258137612, i32 753926652, i32 19183106, i32 -1190792451, i32 -403635457, i32 -470768380, i32 -1658719167, i32 40509941, i32 133244093, i32 66078716, i32 184322, i32 753927357, i32 52475393, i32 1258031089, i32 -805174288, i32 79495170, i32 -268325648, i32 -1209006427, i32 825344, i32 -268366440, i32 569704679, i32 -1477443217, i32 270660872, i32 1579283713, i32 318895106, i32 -200497168, i32 -135213023, i32 -1742605051, i32 839054344, i32 -184354832, i32 -1123544799, i32 1881273844, i32 2132931848, i32 589427970, i32 -168510200, i32 -200797919, i32 26742801, i32 85065024, i32 -184087564, i32 -183898335, i32 -133693407], [44 x i32] zeroinitializer }>, align 4
@gf100_grgpc_code = internal global <{ [402 x i32], [46 x i32] }> <{ [402 x i32] [i32 60886773, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 -520552200, i32 -251461703, i32 -258468633, i32 569655523, i32 33026205, i32 -251461703, i32 -258204441, i32 569655523, i32 -119472995, i32 -251347712, i32 -264110057, i32 298778643, i32 152168192, i32 135575041, i32 -268430082, i32 133235239, i32 66064896, i32 184320, i32 401671357, i32 285082872, i32 520448, i32 258055, i32 -1124073264, i32 69726212, i32 67110897, i32 -805305360, i32 79495170, i32 -250596876, i32 -259915737, i32 583991587, i32 20443136, i32 -1155586832, i32 850789426, i32 84049921, i32 -251264128, i32 -259653593, i32 583991587, i32 67272704, i32 -250665802, i32 -255262713, i32 47186179, i32 -251347712, i32 -268369881, i32 583991843, i32 -1791705856, i32 133236773, i32 66109440, i32 380929, i32 133235901, i32 66109696, i32 380929, i32 244843709, i32 17799168, i32 22028789, i32 -1157615685, i32 244842559, i32 34576385, i32 22028789, i32 -50000232, i32 784007407, i32 4111104, i32 -251513418, i32 -254607353, i32 63963395, i32 -1241203456, i32 901122085, i32 18920966, i32 -1241435978, i32 884344868, i32 36681992, i32 47391221, i32 -1157615685, i32 133234751, i32 66060544, i32 249858, i32 616367293, i32 -249615888, i32 -267911161, i32 47186435, i32 -201016064, i32 838074408, i32 483913728, i32 -197582348, i32 -458165247, i32 504951812, i32 -268336642, i32 549258791, i32 -1241246979, i32 519897572, i32 1637893, i32 95691253, i32 -1797714188, i32 -168816401, i32 2116154625, i32 -871435261, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 -251347472, i32 -268304217, i32 -1429274461, i32 78365696, i32 -265548812, i32 -403628841, i32 -470803968, i32 15650560, i32 419493873, i32 -822021136, i32 569639167, i32 31977476, i32 486541297, i32 -805305360, i32 79495182, i32 16779249, i32 -805305360, i32 79495178, i32 -520294148, i32 -1325608708, i32 -1862491908, i32 -1996586756, i32 -58655744, i32 3339264, i32 -135265800, i32 68065281, i32 -1190854981, i32 -403635457, i32 -470772712, i32 -1658719168, i32 -135266056, i32 520480, i32 17035397, i32 -1124069424, i32 149417988, i32 -201203018, i32 -168690405, i32 -168753152, i32 133235200, i32 66094336, i32 1036289, i32 16254141, i32 -2130704399, i32 -805174288, i32 79495183, i32 -184086028, i32 -184187359, i32 -1123915231, i32 -66588380, i32 33812551, i32 -1124072752, i32 19722244, i32 -251453258, i32 -263521273, i32 47186435, i32 -268124928, i32 -1510997588, i32 12054786, i32 1353969664, i32 -1241248616, i32 -1128591420, i32 825344, i32 -268366440, i32 569704679, i32 -1393557137, i32 77983745, i32 1073788913, i32 -1739541520, i32 -994704372, i32 12368655, i32 -1744761704, i32 261620237, i32 15200518, i32 1864496392, i32 1579283713, i32 100791298, i32 -184085772, i32 -184385759, i32 -133861855], [46 x i32] zeroinitializer }>, align 4
@gf100_grgpc_data = internal global <{ i32, i32, i32, i32, [21 x i32] }> <{ i32 100, i32 100, i32 100, i32 100, [21 x i32] zeroinitializer }>, align 4
@.str.118 = private unnamed_addr constant [18 x i8] c"nouveau/nv%02x_%s\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"nouveau/%s\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"%s: failed to load %s\0A\00", align 1
@gf100_gr_pack_mmio = internal constant [28 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gf100_gr_init_vsc_stream_master, ptr @gf100_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr @gf100_gr_init_40601c, ptr null, ptr @gf100_gr_init_419cc0, ptr @gf100_gr_init_419eb4, ptr null, ptr null, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gf100_gr_pack_mmio, %struct.anon { ptr @gf100_gr_fecs_ucode }, %struct.anon.0 { ptr @gf100_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 0, ptr @gf100_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 36921, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37015, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37056, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@gf100_gr_init_sm_0 = internal constant [14 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 4352 }, %struct.gf100_gr_init { i32 4300460, i8 1, i32 4, i32 286263042 }, %struct.gf100_gr_init { i32 4300464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4300468, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300488, i8 1, i32 4, i32 101058072 }, %struct.gf100_gr_init { i32 4300496, i8 1, i32 4, i32 251596344 }, %struct.gf100_gr_init { i32 4300500, i8 1, i32 4, i32 17892593 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300544, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_gr_zbc_clear_color(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4216836
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #16, !srcloc !9
  %14 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 4216840
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #16, !srcloc !9
  %18 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i8, ptr %20, i32 4216844
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #16, !srcloc !9
  %22 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr i8, ptr %24, i32 4216848
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #16, !srcloc !9
  %26 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %8, %2
  %28 = phi i32 [ %26, %8 ], [ 0, %2 ]
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 4216852
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #16, !srcloc !9
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr i8, ptr %32, i32 4216864
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %1) #16, !srcloc !9
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %34, i32 4216868
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 4) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_gr_zbc_clear_depth(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4216856
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #16, !srcloc !9
  %14 = load i32, ptr %5, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ %14, %8 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4216860
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #16, !srcloc !9
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 4216864
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %1) #16, !srcloc !9
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 4216868
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 5) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_fermi_mthd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %1) #17
  br label %17

17:                                               ; preds = %10, %4
  switch i32 %1, label %62 [
    i32 0, label %18
    i32 1, label %40
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 -8
  %22 = icmp ugt i32 %3, 39
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i8, ptr %2, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = icmp eq i32 %3, 40
  br i1 %27, label %28, label %62

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %2, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %62 [
    i8 1, label %31
    i8 2, label %31
    i8 4, label %31
    i8 8, label %31
    i8 12, label %31
    i8 16, label %31
    i8 20, label %31
    i8 22, label %31
    i8 24, label %31
    i8 28, label %31
    i8 32, label %31
    i8 36, label %31
    i8 40, label %31
    i8 44, label %31
    i8 48, label %31
    i8 52, label %31
    i8 56, label %31
    i8 60, label %31
    i8 64, label %31
  ]

31:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %32 = zext i8 %30 to i32
  %33 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %2, i32 0, i32 4
  %34 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %2, i32 0, i32 5
  %35 = tail call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %21, i32 noundef %32, ptr noundef %33, ptr noundef %34) #16
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  %38 = trunc i32 %35 to i8
  %39 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %2, i32 0, i32 2
  store i8 %38, ptr %39, align 2
  br label %62

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i32 -8
  %44 = icmp ugt i32 %3, 15
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i8, ptr %2, align 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = icmp eq i32 %3, 16
  br i1 %49, label %50, label %62

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, ptr %2, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, ptr %2, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, ptr %2, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = tail call fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %43, i32 noundef %56, i32 noundef %58) #16
  %60 = icmp slt i32 %59, 0
  %61 = select i1 %60, i32 -28, i32 0
  br label %62

62:                                               ; preds = %54, %50, %48, %45, %40, %37, %31, %28, %26, %23, %18, %17
  %63 = phi i32 [ -22, %17 ], [ 0, %37 ], [ -22, %28 ], [ %35, %31 ], [ -38, %18 ], [ -38, %23 ], [ -7, %26 ], [ %61, %54 ], [ -22, %50 ], [ -38, %40 ], [ -38, %45 ], [ -7, %48 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_fecs_bind_pointer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4233280
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 48) #16, !srcloc !9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 4232448
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %1) #16, !srcloc !9
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 4232452
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 3) #16, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #16
  br label %13

13:                                               ; preds = %22, %2
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 4233216
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = and i32 %16, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #16
  %24 = icmp sgt i64 %23, -1
  br i1 %24, label %13, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_timer, ptr %26, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @dev_driver_string(ptr noundef %30) #16
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load ptr, ptr %36, align 4
  br label %44

42:                                               ; preds = %19, %13
  %43 = phi i32 [ 0, %19 ], [ -5, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  br label %46

44:                                               ; preds = %40, %25
  %45 = phi ptr [ %41, %40 ], [ %38, %25 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 788, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %31, ptr noundef %45) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ -110, %44 ], [ %43, %42 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_rops(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4232708
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 31
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_zbc_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i32], align 4
  %3 = alloca [8 x i32], align 4
  %4 = alloca [8 x i32], align 4
  %5 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.gf100_gr_zbc_init.one, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) @__const.gf100_gr_zbc_init.f32_1, i32 32, i1 false)
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 34
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_ltc, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %1
  %16 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 4
  %17 = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %16)
  %18 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 4
  %19 = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3, ptr noundef %18)
  %20 = add i32 %11, 2
  %21 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 4
  %22 = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %4, ptr noundef %21)
  %23 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 4
  %24 = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5, ptr noundef %23)
  %25 = add i32 %11, 4
  %26 = call fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %27 = call fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %0, i32 noundef 1065353216, i32 noundef 1065353216)
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.gf100_gr_func, ptr %28, i32 0, i32 38
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %15
  %35 = add i32 %11, 3
  %36 = call i32 %32(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.gf100_gr_func, ptr %37, i32 0, i32 38
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 1) #16
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.gf100_gr_func, ptr %43, i32 0, i32 38
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %0, i32 noundef 1, i32 noundef 255, i32 noundef 255) #16
  br label %49

49:                                               ; preds = %34, %15, %1
  %50 = phi i32 [ %11, %1 ], [ %25, %34 ], [ %25, %15 ]
  %51 = phi i32 [ %11, %1 ], [ %20, %34 ], [ %20, %15 ]
  %52 = phi i32 [ %11, %1 ], [ %35, %34 ], [ %11, %15 ]
  %53 = getelementptr inbounds %struct.nvkm_ltc, ptr %9, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %59, %49
  %57 = phi i32 [ %54, %49 ], [ %66, %59 ]
  %58 = icmp sgt i32 %51, %57
  br i1 %58, label %78, label %68

59:                                               ; preds = %59, %49
  %60 = phi i32 [ %65, %59 ], [ %50, %49 ]
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr inbounds %struct.gf100_gr_func, ptr %61, i32 0, i32 38
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %63, align 4
  call void %64(ptr noundef %0, i32 noundef %60) #16
  %65 = add i32 %60, 1
  %66 = load i32, ptr %53, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %56, label %59

68:                                               ; preds = %68, %56
  %69 = phi i32 [ %75, %68 ], [ %51, %56 ]
  %70 = load ptr, ptr %0, align 4
  %71 = getelementptr inbounds %struct.gf100_gr_func, ptr %70, i32 0, i32 38
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  call void %74(ptr noundef %0, i32 noundef %69) #16
  %75 = add i32 %69, 1
  %76 = load i32, ptr %53, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %68

78:                                               ; preds = %68, %56
  %79 = phi i32 [ %57, %56 ], [ %76, %68 ]
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.gf100_gr_func, ptr %80, i32 0, i32 38
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  %86 = icmp sgt i32 %52, %79
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %102, label %88

88:                                               ; preds = %78
  call void %84(ptr noundef %0, i32 noundef %52) #16
  %89 = add i32 %52, 1
  %90 = load i32, ptr %53, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %92, %88
  %93 = phi i32 [ %99, %92 ], [ %89, %88 ]
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.gf100_gr_func, ptr %94, i32 0, i32 38
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  call void %98(ptr noundef %0, i32 noundef %93) #16
  %99 = add i32 %93, 1
  %100 = load i32, ptr %53, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %92

102:                                              ; preds = %92, %88, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 34
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_ltc, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_ltc, ptr %8, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %49, label %14

14:                                               ; preds = %34, %4
  %15 = phi i32 [ %36, %34 ], [ %10, %4 ]
  %16 = phi i32 [ %35, %34 ], [ -28, %4 ]
  %17 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %14
  %21 = icmp eq i32 %18, %1
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %15, i32 1
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %23, ptr noundef dereferenceable(16) %2, i32 16)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %15, i32 2
  %28 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %27, ptr noundef dereferenceable(16) %3, i32 16)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #16
  br label %49

31:                                               ; preds = %14
  %32 = icmp slt i32 %16, 0
  %33 = select i1 %32, i32 %15, i32 %16
  br label %34

34:                                               ; preds = %31, %22, %20
  %35 = phi i32 [ %16, %20 ], [ %16, %22 ], [ %33, %31 ]
  %36 = add i32 %15, 1
  %37 = icmp sgt i32 %36, %12
  br i1 %37, label %38, label %14

38:                                               ; preds = %34
  %39 = icmp slt i32 %35, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %35
  %42 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %35, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %42, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  %43 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %35, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %43, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false)
  store i32 %1, ptr %41, align 4
  %44 = tail call i32 @nvkm_ltc_zbc_color_get(ptr noundef %8, i32 noundef %35, ptr noundef %3) #16
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.gf100_gr_func, ptr %45, i32 0, i32 38
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %0, i32 noundef %35) #16
  br label %49

49:                                               ; preds = %40, %38, %30, %26, %4
  %50 = phi i32 [ -22, %30 ], [ %35, %40 ], [ %15, %26 ], [ %35, %38 ], [ -28, %4 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 34
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %46, label %13

13:                                               ; preds = %30, %3
  %14 = phi i32 [ %32, %30 ], [ %9, %3 ]
  %15 = phi i32 [ %31, %30 ], [ -28, %3 ]
  %16 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %14
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %30 [
    i32 0, label %27
    i32 1, label %18
  ]

18:                                               ; preds = %13
  %19 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %14, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %14, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #16
  br label %46

27:                                               ; preds = %13
  %28 = icmp slt i32 %15, 0
  %29 = select i1 %28, i32 %14, i32 %15
  br label %30

30:                                               ; preds = %27, %18, %13
  %31 = phi i32 [ %15, %18 ], [ %29, %27 ], [ %15, %13 ]
  %32 = add i32 %14, 1
  %33 = icmp sgt i32 %32, %11
  br i1 %33, label %34, label %13

34:                                               ; preds = %30
  %35 = icmp slt i32 %31, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %34
  %37 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %31
  store i32 1, ptr %37, align 4
  %38 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %31, i32 1
  store i32 %1, ptr %38, align 4
  %39 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %31, i32 2
  store i32 %2, ptr %39, align 4
  %40 = tail call i32 @nvkm_ltc_zbc_depth_get(ptr noundef %7, i32 noundef %31, i32 noundef %2) #16
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.gf100_gr_func, ptr %41, i32 0, i32 38
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %0, i32 noundef %31) #16
  br label %46

46:                                               ; preds = %36, %34, %26, %22, %3
  %47 = phi i32 [ -22, %26 ], [ %31, %36 ], [ %14, %22 ], [ %31, %34 ], [ -28, %3 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_wait_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = sub i32 -200, %4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 4196096
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %14 = and i32 %13, 4096
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 9792
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %19 = and i32 %18, 32768
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 4195852
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %23 = and i32 %22, 1
  br i1 %15, label %42, label %24

24:                                               ; preds = %7
  %25 = icmp ne i32 %19, 0
  %26 = icmp ne i32 %23, 0
  %27 = select i1 %26, i1 true, i1 %25
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = add i32 %6, %29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %7, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %41 = lshr exact i32 %19, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.2, ptr noundef %40, i32 noundef 1, i32 noundef %41, i32 noundef %23) #17
  br label %42

42:                                               ; preds = %36, %32, %24, %7
  %43 = phi i32 [ -11, %36 ], [ -11, %32 ], [ 0, %24 ], [ 0, %7 ]
  ret i32 %43
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_mmio(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %8

8:                                                ; preds = %38, %4
  %9 = phi ptr [ %1, %4 ], [ %39, %38 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %35, %8
  %13 = phi ptr [ %36, %35 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.gf100_gr_init, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = zext i8 %15 to i32
  %19 = load i32, ptr %13, align 4
  %20 = getelementptr inbounds %struct.gf100_gr_init, ptr %13, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, %18
  %23 = add i32 %22, %19
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.gf100_gr_init, ptr %13, i32 0, i32 3
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %19, %25 ], [ %33, %27 ]
  %29 = load i32, ptr %26, align 4
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #16, !srcloc !9
  %32 = load i32, ptr %20, align 4
  %33 = add i32 %32, %28
  %34 = icmp ult i32 %33, %23
  br i1 %34, label %27, label %35

35:                                               ; preds = %27, %17
  %36 = getelementptr %struct.gf100_gr_init, ptr %13, i32 1
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %12

38:                                               ; preds = %35, %12
  %39 = getelementptr %struct.gf100_gr_pack, ptr %9, i32 1
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %8

41:                                               ; preds = %38, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_icmd(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4194824
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -2147483648) #16, !srcloc !9
  %9 = icmp eq ptr %1, null
  br i1 %9, label %136, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %12 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  br label %13

13:                                               ; preds = %132, %10
  %14 = phi ptr [ %1, %10 ], [ %134, %132 ]
  %15 = phi i32 [ 0, %10 ], [ %133, %132 ]
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %136, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %14, %1
  br label %20

20:                                               ; preds = %129, %18
  %21 = phi i32 [ %15, %18 ], [ %50, %129 ]
  %22 = phi ptr [ %16, %18 ], [ %130, %129 ]
  %23 = getelementptr inbounds %struct.gf100_gr_init, ptr %22, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %132, label %26

26:                                               ; preds = %20
  %27 = zext i8 %24 to i32
  %28 = load i32, ptr %22, align 4
  %29 = getelementptr inbounds %struct.gf100_gr_init, ptr %22, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, %27
  %32 = add i32 %31, %28
  br i1 %19, label %33, label %39

33:                                               ; preds = %26
  %34 = load ptr, ptr %1, align 4
  %35 = icmp eq ptr %22, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.gf100_gr_init, ptr %22, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  br label %43

39:                                               ; preds = %33, %26
  %40 = getelementptr inbounds %struct.gf100_gr_init, ptr %22, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %21, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %36
  %44 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.gf100_gr_init, ptr %22, i32 0, i32 3
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr i8, ptr %46, i32 4194820
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #16, !srcloc !9
  %48 = load i32, ptr %45, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i32 [ %48, %43 ], [ %21, %39 ]
  %51 = icmp ult i32 %28, %32
  br i1 %51, label %52, label %129

52:                                               ; preds = %125, %49
  %53 = phi i32 [ %127, %125 ], [ %28, %49 ]
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 4194816
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #16, !srcloc !9
  %56 = and i32 %53, 65535
  %57 = icmp eq i32 %56, 57600
  br i1 %57, label %58, label %96

58:                                               ; preds = %52
  %59 = load ptr, ptr %4, align 4
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 11
  %62 = sub i32 -200, %60
  br label %63

63:                                               ; preds = %84, %58
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr i8, ptr %64, i32 4196096
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %67 = load ptr, ptr %61, align 4
  %68 = getelementptr i8, ptr %67, i32 512
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %70 = and i32 %69, 4096
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr %61, align 4
  %73 = getelementptr i8, ptr %72, i32 9792
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %75 = and i32 %74, 32768
  %76 = load ptr, ptr %61, align 4
  %77 = getelementptr i8, ptr %76, i32 4195852
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %79 = and i32 %78, 1
  br i1 %71, label %96, label %80

80:                                               ; preds = %63
  %81 = icmp ne i32 %75, 0
  %82 = icmp ne i32 %79, 0
  %83 = select i1 %82, i1 true, i1 %81
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = add i32 %62, %85
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %63, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %4, align 4
  %93 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8
  %95 = lshr exact i32 %75, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef 1, i32 noundef %95, i32 noundef %79) #17
  br label %96

96:                                               ; preds = %91, %88, %80, %63, %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #16
  br label %97

97:                                               ; preds = %103, %96
  %98 = load ptr, ptr %6, align 4
  %99 = getelementptr i8, ptr %98, i32 4196096
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %101 = and i32 %100, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %97
  %104 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #16
  %105 = icmp sgt i64 %104, -1
  br i1 %105, label %97, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %3, align 8
  %108 = getelementptr inbounds %struct.nvkm_timer, ptr %107, i32 0, i32 1, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = call ptr @dev_driver_string(ptr noundef %111) #16
  %113 = load ptr, ptr %3, align 8
  %114 = getelementptr inbounds %struct.nvkm_timer, ptr %113, i32 0, i32 1, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.device, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = load ptr, ptr %117, align 4
  br label %123

123:                                              ; preds = %121, %106
  %124 = phi ptr [ %122, %121 ], [ %119, %106 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1066, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %112, ptr noundef %124) #16
  br label %125

125:                                              ; preds = %123, %97
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  %126 = load i32, ptr %29, align 4
  %127 = add i32 %126, %53
  %128 = icmp ult i32 %127, %32
  br i1 %128, label %52, label %129

129:                                              ; preds = %125, %49
  %130 = getelementptr %struct.gf100_gr_init, ptr %22, i32 1
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %20

132:                                              ; preds = %129, %20
  %133 = phi i32 [ %21, %20 ], [ %50, %129 ]
  %134 = getelementptr %struct.gf100_gr_pack, ptr %14, i32 1
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %13

136:                                              ; preds = %132, %13, %2
  %137 = load ptr, ptr %6, align 4
  %138 = getelementptr i8, ptr %137, i32 4194824
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_mthd(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %66, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %8

8:                                                ; preds = %62, %4
  %9 = phi i32 [ 0, %4 ], [ %63, %62 ]
  %10 = phi ptr [ %1, %4 ], [ %64, %62 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.gf100_gr_pack, ptr %10, i32 0, i32 1
  %15 = icmp eq ptr %10, %1
  br label %16

16:                                               ; preds = %59, %13
  %17 = phi i32 [ %9, %13 ], [ %47, %59 ]
  %18 = phi ptr [ %11, %13 ], [ %60, %59 ]
  %19 = getelementptr inbounds %struct.gf100_gr_init, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %16
  %23 = zext i8 %20 to i32
  %24 = load i32, ptr %14, align 4
  %25 = load i32, ptr %18, align 4
  %26 = getelementptr inbounds %struct.gf100_gr_init, ptr %18, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, %23
  %29 = add i32 %28, %25
  br i1 %15, label %30, label %36

30:                                               ; preds = %22
  %31 = load ptr, ptr %1, align 4
  %32 = icmp eq ptr %18, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.gf100_gr_init, ptr %18, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  br label %40

36:                                               ; preds = %30, %22
  %37 = getelementptr inbounds %struct.gf100_gr_init, ptr %18, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %17, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %35, %33 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.gf100_gr_init, ptr %18, i32 0, i32 3
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr i8, ptr %43, i32 4211852
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #16, !srcloc !9
  %45 = load i32, ptr %42, align 4
  br label %46

46:                                               ; preds = %40, %36
  %47 = phi i32 [ %45, %40 ], [ %17, %36 ]
  %48 = icmp ult i32 %25, %29
  br i1 %48, label %49, label %59

49:                                               ; preds = %49, %46
  %50 = phi i32 [ %57, %49 ], [ %25, %46 ]
  %51 = shl i32 %50, 14
  %52 = or i32 %24, %51
  %53 = or i32 %52, -2147483648
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr i8, ptr %54, i32 4211848
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #16, !srcloc !9
  %56 = load i32, ptr %26, align 4
  %57 = add i32 %56, %50
  %58 = icmp ult i32 %57, %29
  br i1 %58, label %49, label %59

59:                                               ; preds = %49, %46
  %60 = getelementptr %struct.gf100_gr_init, ptr %18, i32 1
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %16

62:                                               ; preds = %59, %16
  %63 = phi i32 [ %17, %16 ], [ %47, %59 ]
  %64 = getelementptr %struct.gf100_gr_pack, ptr %10, i32 1
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %8

66:                                               ; preds = %62, %8, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @gf100_gr_units(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 1521
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i64
  %5 = getelementptr i8, ptr %0, i32 1555
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = zext i32 %8 to i64
  %10 = or i64 %9, %4
  %11 = getelementptr i8, ptr %0, i32 1520
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 32
  %15 = or i64 %10, %14
  ret i64 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_trap_mp(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [128 x i8], align 1
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 15
  %10 = add i32 %9, 5259264
  %11 = shl i32 %2, 11
  %12 = add i32 %10, %11
  %13 = or i32 %12, 1608
  %14 = getelementptr i8, ptr %8, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %16 = load ptr, ptr %7, align 4
  %17 = or i32 %12, 1616
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !10
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @gf100_mp_global_error, i32 noundef %19) #16
  %20 = and i32 %15, 65535
  %21 = call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_mp_warp_error, i32 noundef %20) #16
  %22 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %3
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %30 = icmp eq ptr %21, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.nvkm_enum, ptr %21, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %33, %31 ], [ @.str.35, %25 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.34, ptr noundef %29, i32 noundef %1, i32 noundef %2, i32 noundef %19, ptr noundef nonnull %4, i32 noundef %15, ptr noundef %35) #17
  br label %36

36:                                               ; preds = %34, %3
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr i8, ptr %37, i32 %13
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #16, !srcloc !9
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 %17
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %19) #16, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_ctxctl_debug(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4232708
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %8 = and i32 %7, 65535
  tail call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %0, i32 noundef 4231168)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %10, %1
  %11 = phi i32 [ %14, %10 ], [ 0, %1 ]
  %12 = shl i32 %11, 15
  %13 = add nuw i32 %12, 5251072
  tail call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %0, i32 noundef %13)
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = add i32 %1, 1024
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef %11, i32 noundef %1, i32 noundef %16) #17
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %12, align 4
  %24 = add i32 %1, 2048
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %27 = load ptr, ptr %12, align 4
  %28 = add i32 %1, 2052
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %31 = load ptr, ptr %12, align 4
  %32 = add i32 %1, 2056
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %35 = load ptr, ptr %12, align 4
  %36 = add i32 %1, 2060
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.49, ptr noundef %11, i32 noundef %1, i32 noundef %26, i32 noundef %30, i32 noundef %34, i32 noundef %38) #17
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %19
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %12, align 4
  %46 = add i32 %1, 2064
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %49 = load ptr, ptr %12, align 4
  %50 = add i32 %1, 2068
  %51 = getelementptr i8, ptr %49, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %53 = load ptr, ptr %12, align 4
  %54 = add i32 %1, 2072
  %55 = getelementptr i8, ptr %53, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %57 = load ptr, ptr %12, align 4
  %58 = add i32 %1, 2076
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.49, ptr noundef %11, i32 noundef %1, i32 noundef %48, i32 noundef %52, i32 noundef %56, i32 noundef %60) #17
  br label %61

61:                                               ; preds = %41, %19, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_init_ctxctl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = alloca %struct.nvkm_timer_wait, align 8
  %6 = alloca %struct.nvkm_timer_wait, align 8
  %7 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %216, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @nvkm_mc_unk260(ptr noundef %12, i32 noundef 0) #16
  %13 = tail call zeroext i1 @nvkm_acr_managed_falcon(ptr noundef %12, i32 noundef 2) #16
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %15, ptr noundef %18, i32 noundef 0, i32 noundef %20, i8 noundef zeroext 0) #16
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %15, ptr noundef %21, i32 noundef 0, i32 noundef %23, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #16
  br label %24

24:                                               ; preds = %14, %10
  %25 = phi i32 [ 0, %14 ], [ 4, %10 ]
  %26 = tail call zeroext i1 @nvkm_acr_managed_falcon(ptr noundef %12, i32 noundef 3) #16
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = or i32 %25, 8
  br label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3
  %31 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 1
  %32 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 2, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %30, ptr noundef %33, i32 noundef 0, i32 noundef %35, i8 noundef zeroext 0) #16
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 1, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %30, ptr noundef %36, i32 noundef 0, i32 noundef %38, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #16
  br i1 %13, label %39, label %43

39:                                               ; preds = %29, %27
  %40 = phi i32 [ %28, %27 ], [ %25, %29 ]
  %41 = tail call i32 @nvkm_acr_bootstrap_falcons(ptr noundef %12, i32 noundef %40) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %329

43:                                               ; preds = %39, %29
  tail call void @nvkm_mc_unk260(ptr noundef %12, i32 noundef 1) #16
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 4233280
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 -1) #16, !srcloc !9
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr i8, ptr %47, i32 4301068
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #16, !srcloc !9
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr i8, ptr %49, i32 4231436
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #16, !srcloc !9
  %51 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3
  tail call void @nvkm_falcon_start(ptr noundef %51) #16
  %52 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2
  tail call void @nvkm_falcon_start(ptr noundef %52) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false) #16, !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %12, i64 noundef 2000000000, ptr noundef nonnull %6) #16
  br label %53

53:                                               ; preds = %59, %43
  %54 = load ptr, ptr %44, align 4
  %55 = getelementptr i8, ptr %54, i32 4233216
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %6) #16
  %61 = icmp sgt i64 %60, -1
  br i1 %61, label %53, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds %struct.nvkm_timer, ptr %63, i32 0, i32 1, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = call ptr @dev_driver_string(ptr noundef %67) #16
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.nvkm_timer, ptr %69, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load ptr, ptr %73, align 4
  br label %79

79:                                               ; preds = %77, %62
  %80 = phi ptr [ %78, %77 ], [ %75, %62 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1734, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %68, ptr noundef %80) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  br label %329

81:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  %82 = load ptr, ptr %11, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 11
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 4233280
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 -1) #16, !srcloc !9
  %86 = load ptr, ptr %83, align 4
  %87 = getelementptr i8, ptr %86, i32 4232448
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 2147483647) #16, !srcloc !9
  %88 = load ptr, ptr %83, align 4
  %89 = getelementptr i8, ptr %88, i32 4232452
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 33) #16, !srcloc !9
  %90 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 29
  %91 = load ptr, ptr %11, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 11
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 4233280
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 -1) #16, !srcloc !9
  %95 = load ptr, ptr %92, align 4
  %96 = getelementptr i8, ptr %95, i32 4232448
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #16, !srcloc !9
  %97 = load ptr, ptr %92, align 4
  %98 = getelementptr i8, ptr %97, i32 4232452
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 16) #16, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false) #16, !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %91, i64 noundef 2000000000, ptr noundef nonnull %5) #16
  br label %99

99:                                               ; preds = %104, %81
  %100 = load ptr, ptr %92, align 4
  %101 = getelementptr i8, ptr %100, i32 4233216
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  store i32 %102, ptr %90, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %5) #16
  %106 = icmp sgt i64 %105, -1
  br i1 %106, label %99, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %5, align 8
  %109 = getelementptr inbounds %struct.nvkm_timer, ptr %108, i32 0, i32 1, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = call ptr @dev_driver_string(ptr noundef %112) #16
  %114 = load ptr, ptr %5, align 8
  %115 = getelementptr inbounds %struct.nvkm_timer, ptr %114, i32 0, i32 1, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.device, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load ptr, ptr %118, align 4
  br label %124

124:                                              ; preds = %122, %107
  %125 = phi ptr [ %123, %122 ], [ %120, %107 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 908, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %113, ptr noundef %125) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  br label %329

126:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  %127 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 31
  %128 = load ptr, ptr %11, align 4
  %129 = getelementptr inbounds %struct.nvkm_device, ptr %128, i32 0, i32 11
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i8, ptr %130, i32 4233280
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 -1) #16, !srcloc !9
  %132 = load ptr, ptr %129, align 4
  %133 = getelementptr i8, ptr %132, i32 4232448
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 0) #16, !srcloc !9
  %134 = load ptr, ptr %129, align 4
  %135 = getelementptr i8, ptr %134, i32 4232452
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 22) #16, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false) #16, !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %128, i64 noundef 2000000000, ptr noundef nonnull %4) #16
  br label %136

136:                                              ; preds = %141, %126
  %137 = load ptr, ptr %129, align 4
  %138 = getelementptr i8, ptr %137, i32 4233216
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  store i32 %139, ptr %127, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %136
  %142 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #16
  %143 = icmp sgt i64 %142, -1
  br i1 %143, label %136, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %4, align 8
  %146 = getelementptr inbounds %struct.nvkm_timer, ptr %145, i32 0, i32 1, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvkm_device, ptr %147, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8
  %150 = call ptr @dev_driver_string(ptr noundef %149) #16
  %151 = load ptr, ptr %4, align 8
  %152 = getelementptr inbounds %struct.nvkm_timer, ptr %151, i32 0, i32 1, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nvkm_device, ptr %153, i32 0, i32 2
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %144
  %160 = load ptr, ptr %155, align 4
  br label %161

161:                                              ; preds = %159, %144
  %162 = phi ptr [ %160, %159 ], [ %157, %144 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %150, ptr noundef %162) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  br label %329

163:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  %164 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 32
  %165 = load ptr, ptr %11, align 4
  %166 = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 11
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr i8, ptr %167, i32 4233280
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 -1) #16, !srcloc !9
  %169 = load ptr, ptr %166, align 4
  %170 = getelementptr i8, ptr %169, i32 4232448
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 0) #16, !srcloc !9
  %171 = load ptr, ptr %166, align 4
  %172 = getelementptr i8, ptr %171, i32 4232452
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 37) #16, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #16, !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %165, i64 noundef 2000000000, ptr noundef nonnull %3) #16
  br label %173

173:                                              ; preds = %178, %163
  %174 = load ptr, ptr %166, align 4
  %175 = getelementptr i8, ptr %174, i32 4233216
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  store i32 %176, ptr %164, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %173
  %179 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #16
  %180 = icmp sgt i64 %179, -1
  br i1 %180, label %173, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %3, align 8
  %183 = getelementptr inbounds %struct.nvkm_timer, ptr %182, i32 0, i32 1, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.nvkm_device, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8
  %187 = call ptr @dev_driver_string(ptr noundef %186) #16
  %188 = load ptr, ptr %3, align 8
  %189 = getelementptr inbounds %struct.nvkm_timer, ptr %188, i32 0, i32 1, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_device, ptr %190, i32 0, i32 2
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr inbounds %struct.device, ptr %192, i32 0, i32 3
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %181
  %197 = load ptr, ptr %192, align 4
  br label %198

198:                                              ; preds = %196, %181
  %199 = phi ptr [ %197, %196 ], [ %194, %181 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 876, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %187, ptr noundef %199) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  br label %329

200:                                              ; preds = %173
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  %201 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 30
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %329

204:                                              ; preds = %200
  %205 = call i32 @gf100_grctx_generate(ptr noundef %0) #16
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %329, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %329, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr %11, align 4
  %213 = getelementptr inbounds %struct.nvkm_device, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.50, ptr noundef %215) #17
  br label %329

216:                                              ; preds = %1
  %217 = load ptr, ptr %0, align 4
  %218 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %219 = getelementptr inbounds %struct.gf100_gr_func, ptr %217, i32 0, i32 30
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %329, label %222

222:                                              ; preds = %216
  %223 = load ptr, ptr %218, align 4
  %224 = getelementptr inbounds %struct.gf100_gr_func, ptr %217, i32 0, i32 36
  %225 = load ptr, ptr %224, align 4
  tail call void @nvkm_mc_unk260(ptr noundef %223, i32 noundef 0) #16
  %226 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2
  %227 = load ptr, ptr %0, align 4
  %228 = getelementptr inbounds %struct.gf100_gr_func, ptr %227, i32 0, i32 30
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.gf100_gr_ucode, ptr %229, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.gf100_gr_ucode, ptr %229, i32 0, i32 1, i32 1
  %233 = load i32, ptr %232, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %226, ptr noundef %231, i32 noundef 0, i32 noundef %233, i8 noundef zeroext 0) #16
  %234 = load ptr, ptr %0, align 4
  %235 = getelementptr inbounds %struct.gf100_gr_func, ptr %234, i32 0, i32 30
  %236 = load ptr, ptr %235, align 4
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.nvkm_blob, ptr %236, i32 0, i32 1
  %239 = load i32, ptr %238, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %226, ptr noundef %237, i32 noundef 0, i32 noundef %239, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #16
  %240 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3
  %241 = load ptr, ptr %0, align 4
  %242 = getelementptr inbounds %struct.gf100_gr_func, ptr %241, i32 0, i32 31
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.gf100_gr_ucode, ptr %243, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.gf100_gr_ucode, ptr %243, i32 0, i32 1, i32 1
  %247 = load i32, ptr %246, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %240, ptr noundef %245, i32 noundef 0, i32 noundef %247, i8 noundef zeroext 0) #16
  %248 = load ptr, ptr %0, align 4
  %249 = getelementptr inbounds %struct.gf100_gr_func, ptr %248, i32 0, i32 31
  %250 = load ptr, ptr %249, align 4
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.nvkm_blob, ptr %250, i32 0, i32 1
  %253 = load i32, ptr %252, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %240, ptr noundef %251, i32 noundef 0, i32 noundef %253, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #16
  tail call void @nvkm_mc_unk260(ptr noundef %223, i32 noundef 1) #16
  %254 = getelementptr inbounds %struct.gf100_grctx_func, ptr %225, i32 0, i32 3
  %255 = load ptr, ptr %254, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %0, ptr noundef %255, i32 noundef 4231168, i32 noundef 0, i32 noundef 0) #16
  %256 = getelementptr inbounds %struct.gf100_grctx_func, ptr %225, i32 0, i32 4
  %257 = load ptr, ptr %256, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %0, ptr noundef %257, i32 noundef 4300800, i32 noundef 0, i32 noundef 4292608) #16
  %258 = getelementptr inbounds %struct.gf100_grctx_func, ptr %225, i32 0, i32 5
  %259 = load ptr, ptr %258, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %0, ptr noundef %259, i32 noundef 4300800, i32 noundef 0, i32 noundef 4292608) #16
  %260 = getelementptr inbounds %struct.gf100_grctx_func, ptr %225, i32 0, i32 7
  %261 = load ptr, ptr %260, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %0, ptr noundef %261, i32 noundef 4300800, i32 noundef 4, i32 noundef 4298752) #16
  %262 = getelementptr inbounds %struct.gf100_grctx_func, ptr %225, i32 0, i32 8
  %263 = load ptr, ptr %262, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %0, ptr noundef %263, i32 noundef 4300800, i32 noundef 8, i32 noundef 4308480) #16
  %264 = getelementptr inbounds %struct.nvkm_device, ptr %223, i32 0, i32 11
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr i8, ptr %265, i32 4231436
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 0) #16, !srcloc !9
  %267 = load ptr, ptr %264, align 4
  %268 = getelementptr i8, ptr %267, i32 4231424
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 2) #16, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false) #16, !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %223, i64 noundef 2000000000, ptr noundef nonnull %2) #16
  br label %269

269:                                              ; preds = %274, %222
  %270 = load ptr, ptr %264, align 4
  %271 = getelementptr i8, ptr %270, i32 4233216
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %273 = icmp sgt i32 %272, -1
  br i1 %273, label %274, label %309

274:                                              ; preds = %269
  %275 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #16
  %276 = icmp sgt i64 %275, -1
  br i1 %276, label %269, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %2, align 8
  %279 = getelementptr inbounds %struct.nvkm_timer, ptr %278, i32 0, i32 1, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.nvkm_device, ptr %280, i32 0, i32 2
  %282 = load ptr, ptr %281, align 8
  %283 = call ptr @dev_driver_string(ptr noundef %282) #16
  %284 = load ptr, ptr %2, align 8
  %285 = getelementptr inbounds %struct.nvkm_timer, ptr %284, i32 0, i32 1, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.nvkm_device, ptr %286, i32 0, i32 2
  %288 = load ptr, ptr %287, align 8
  %289 = getelementptr inbounds %struct.device, ptr %288, i32 0, i32 3
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %277
  %293 = load ptr, ptr %288, align 4
  br label %294

294:                                              ; preds = %292, %277
  %295 = phi ptr [ %293, %292 ], [ %290, %277 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1820, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %283, ptr noundef %295) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  %296 = load ptr, ptr %218, align 4
  %297 = getelementptr inbounds %struct.nvkm_device, ptr %296, i32 0, i32 11
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr i8, ptr %298, i32 4232708
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %301 = and i32 %300, 65535
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %0, i32 noundef 4231168) #16
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %329, label %303

303:                                              ; preds = %303, %294
  %304 = phi i32 [ %307, %303 ], [ 0, %294 ]
  %305 = shl i32 %304, 15
  %306 = add nuw i32 %305, 5251072
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %0, i32 noundef %306) #16
  %307 = add nuw nsw i32 %304, 1
  %308 = icmp eq i32 %307, %301
  br i1 %308, label %329, label %303

309:                                              ; preds = %269
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  %310 = load ptr, ptr %264, align 4
  %311 = getelementptr i8, ptr %310, i32 4233220
  %312 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %313 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 29
  store i32 %312, ptr %313, align 4
  %314 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 30
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %329

317:                                              ; preds = %309
  %318 = call i32 @gf100_grctx_generate(ptr noundef %0) #16
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %329, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %322 = load i32, ptr %321, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %320
  %325 = load ptr, ptr %218, align 4
  %326 = getelementptr inbounds %struct.nvkm_device, ptr %325, i32 0, i32 2
  %327 = load ptr, ptr %326, align 8
  %328 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %327, ptr noundef nonnull @.str.50, ptr noundef %328) #17
  br label %329

329:                                              ; preds = %324, %320, %317, %309, %303, %294, %216, %211, %207, %204, %200, %198, %161, %124, %79, %39
  %330 = phi i32 [ -16, %79 ], [ %41, %39 ], [ -110, %124 ], [ -110, %161 ], [ -110, %198 ], [ %205, %211 ], [ 0, %200 ], [ %205, %207 ], [ 0, %204 ], [ -38, %216 ], [ %318, %324 ], [ 0, %309 ], [ %318, %320 ], [ 0, %317 ], [ -16, %294 ], [ -16, %303 ]
  ret i32 %330
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_oneinit_sm_id(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 15
  %3 = load i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 26
  br label %12

12:                                               ; preds = %32, %6
  %13 = phi i32 [ 0, %6 ], [ %33, %32 ]
  br i1 %10, label %32, label %14

14:                                               ; preds = %12
  %15 = trunc i32 %13 to i8
  br label %16

16:                                               ; preds = %29, %14
  %17 = phi i32 [ 0, %14 ], [ %30, %29 ]
  %18 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ult i32 %13, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = trunc i32 %17 to i8
  %24 = load i8, ptr %11, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %25
  store i8 %23, ptr %26, align 1
  %27 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %25, i32 1
  store i8 %15, ptr %27, align 1
  %28 = add i8 %24, 1
  store i8 %28, ptr %11, align 1
  br label %29

29:                                               ; preds = %22, %16
  %30 = add nuw nsw i32 %17, 1
  %31 = icmp eq i32 %30, %9
  br i1 %31, label %32, label %16

32:                                               ; preds = %29, %12
  %33 = add nuw nsw i32 %13, 1
  %34 = icmp eq i32 %33, %4
  br i1 %34, label %35, label %12

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_oneinit_tiles(ptr nocapture noundef %0) #8 {
  %2 = alloca [32 x i32], align 4
  %3 = alloca [32 x i32], align 4
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %23 [
    i8 15, label %7
    i8 14, label %9
    i8 13, label %11
    i8 11, label %13
    i8 10, label %15
    i8 7, label %17
    i8 5, label %17
    i8 3, label %19
    i8 2, label %21
    i8 1, label %21
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 6, ptr %8, align 2
  br label %77

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 5, ptr %10, align 2
  br label %77

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 2, ptr %12, align 2
  br label %77

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 7, ptr %14, align 2
  br label %77

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 6, ptr %16, align 2
  br label %77

17:                                               ; preds = %1, %1
  %18 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 1, ptr %18, align 2
  br label %77

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 2, ptr %20, align 2
  br label %77

21:                                               ; preds = %1, %1
  %22 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 1, ptr %22, align 2
  br label %77

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 3, ptr %24, align 2
  %25 = urem i8 %6, 3
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = urem i8 %6, 5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = urem i8 %6, 7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = urem i8 %6, 11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %33
  %37 = urem i8 %6, 13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = urem i8 %6, 17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %39
  %43 = urem i8 %6, 19
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = urem i8 %6, 23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %45
  %49 = urem i8 %6, 29
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = urem i8 %6, 31
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = urem i8 %6, 37
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = urem i8 %6, 41
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = urem i8 %6, 43
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = urem i8 %6, 47
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = urem i8 %6, 53
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = urem i8 %6, 59
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = urem i8 %6, 61
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %23
  %76 = phi i8 [ 3, %23 ], [ 5, %27 ], [ 7, %30 ], [ 11, %33 ], [ 13, %36 ], [ 17, %39 ], [ 19, %42 ], [ 23, %45 ], [ 29, %48 ], [ 31, %51 ], [ 37, %54 ], [ 41, %57 ], [ 43, %60 ], [ 47, %63 ], [ 53, %66 ], [ 59, %69 ], [ 61, %72 ]
  store i8 %76, ptr %24, align 2
  br label %77

77:                                               ; preds = %75, %72, %21, %19, %17, %15, %13, %11, %9, %7
  %78 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i8 %79, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %87, %77
  %83 = icmp ugt i8 %79, 1
  %84 = add nsw i32 %80, -2
  br i1 %83, label %85, label %119

85:                                               ; preds = %82
  %86 = xor i1 %83, true
  br label %97

87:                                               ; preds = %87, %77
  %88 = phi i32 [ %91, %87 ], [ 0, %77 ]
  %89 = trunc i32 %88 to i8
  %90 = getelementptr [32 x i8], ptr %4, i32 0, i32 %88
  store i8 %89, ptr %90, align 1
  %91 = add nuw nsw i32 %88, 1
  %92 = icmp eq i32 %91, %80
  br i1 %92, label %82, label %87

93:                                               ; preds = %115
  %94 = and i8 %117, 1
  %95 = icmp ne i8 %94, 0
  %96 = select i1 %95, i1 true, i1 %86
  br i1 %96, label %119, label %97

97:                                               ; preds = %93, %85
  %98 = load i8, ptr %4, align 1
  br label %99

99:                                               ; preds = %115, %97
  %100 = phi i8 [ %116, %115 ], [ %98, %97 ]
  %101 = phi i32 [ %103, %115 ], [ 0, %97 ]
  %102 = phi i8 [ %117, %115 ], [ 1, %97 ]
  %103 = add nuw nsw i32 %101, 1
  %104 = getelementptr [32 x i8], ptr %4, i32 0, i32 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %100 to i32
  %110 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %109
  %111 = load i8, ptr %110, align 1
  %112 = icmp ugt i8 %108, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = getelementptr [32 x i8], ptr %4, i32 0, i32 %101
  store i8 %105, ptr %114, align 1
  store i8 %100, ptr %104, align 1
  br label %115

115:                                              ; preds = %113, %99
  %116 = phi i8 [ %100, %113 ], [ %105, %99 ]
  %117 = phi i8 [ 0, %113 ], [ %102, %99 ]
  %118 = icmp eq i32 %101, %84
  br i1 %118, label %93, label %99

119:                                              ; preds = %93, %82
  %120 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 15
  %121 = load i8, ptr %120, align 2
  %122 = zext i8 %121 to i32
  %123 = mul nuw nsw i32 %122, %80
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 1, i32 2
  %127 = mul nuw nsw i32 %126, %123
  br i1 %81, label %132, label %128

128:                                              ; preds = %119
  %129 = mul nuw nsw i32 %126, %80
  %130 = mul nuw nsw i32 %126, %122
  %131 = lshr i32 %127, 1
  br label %134

132:                                              ; preds = %134, %119
  %133 = icmp eq i8 %6, 0
  br i1 %133, label %193, label %159

134:                                              ; preds = %134, %128
  %135 = phi i32 [ 0, %128 ], [ %148, %134 ]
  %136 = getelementptr [32 x i8], ptr %4, i32 0, i32 %135
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %138
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = mul nuw nsw i32 %129, %141
  %143 = getelementptr [32 x i32], ptr %2, i32 0, i32 %135
  store i32 %142, ptr %143, align 4
  %144 = mul nuw nsw i32 %130, %135
  %145 = sub nsw i32 %144, %131
  %146 = add i32 %145, %142
  %147 = getelementptr [32 x i32], ptr %3, i32 0, i32 %135
  store i32 %146, ptr %147, align 4
  %148 = add nuw nsw i32 %135, 1
  %149 = icmp eq i32 %148, %80
  br i1 %149, label %132, label %134

150:                                              ; preds = %185
  %151 = load i8, ptr %5, align 1
  br label %152

152:                                              ; preds = %159, %150
  %153 = phi i8 [ %160, %159 ], [ %151, %150 ]
  %154 = phi i8 [ %161, %159 ], [ %186, %150 ]
  %155 = phi i8 [ 0, %159 ], [ %186, %150 ]
  %156 = phi i32 [ %163, %159 ], [ %188, %150 ]
  %157 = zext i8 %153 to i32
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %193

159:                                              ; preds = %152, %132
  %160 = phi i8 [ %153, %152 ], [ %6, %132 ]
  %161 = phi i8 [ %154, %152 ], [ %79, %132 ]
  %162 = phi i8 [ %155, %152 ], [ %79, %132 ]
  %163 = phi i32 [ %156, %152 ], [ 0, %132 ]
  %164 = icmp eq i8 %162, 0
  br i1 %164, label %152, label %165

165:                                              ; preds = %185, %159
  %166 = phi i8 [ %186, %185 ], [ %161, %159 ]
  %167 = phi i32 [ %188, %185 ], [ %163, %159 ]
  %168 = phi i32 [ %190, %185 ], [ 0, %159 ]
  %169 = getelementptr [32 x i32], ptr %3, i32 0, i32 %168
  %170 = load i32, ptr %169, align 4
  %171 = shl i32 %170, 1
  %172 = icmp ult i32 %171, %127
  br i1 %172, label %182, label %173

173:                                              ; preds = %165
  %174 = getelementptr [32 x i8], ptr %4, i32 0, i32 %168
  %175 = load i8, ptr %174, align 1
  %176 = add i32 %167, 1
  %177 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %167
  store i8 %175, ptr %177, align 1
  %178 = getelementptr [32 x i32], ptr %2, i32 0, i32 %168
  %179 = load i32, ptr %178, align 4
  %180 = sub i32 %179, %127
  %181 = load i8, ptr %78, align 1
  br label %185

182:                                              ; preds = %165
  %183 = getelementptr [32 x i32], ptr %2, i32 0, i32 %168
  %184 = load i32, ptr %183, align 4
  br label %185

185:                                              ; preds = %182, %173
  %186 = phi i8 [ %166, %182 ], [ %181, %173 ]
  %187 = phi i32 [ %184, %182 ], [ %180, %173 ]
  %188 = phi i32 [ %167, %182 ], [ %176, %173 ]
  %189 = add i32 %187, %170
  store i32 %189, ptr %169, align 4
  %190 = add nuw nsw i32 %168, 1
  %191 = zext i8 %186 to i32
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %165, label %150

193:                                              ; preds = %152, %132
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  %7 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10908, i32 noundef 3520, i32 noundef 2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %84, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gf100_gr, ptr %7, i32 0, i32 1
  store ptr %10, ptr %4, align 4
  %11 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @gf100_gr_, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %84

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gf100_gr, ptr %7, i32 0, i32 1, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !10
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36)
  %16 = getelementptr inbounds %struct.gf100_gr, ptr %7, i32 0, i32 1, i32 1, i32 1, i32 1
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @nvkm_longopt(ptr noundef %19, ptr noundef nonnull %6, i32 noundef -2) #16
  %21 = icmp sgt i32 %20, -2
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36)
  br label %38

24:                                               ; preds = %29, %13
  %25 = phi ptr [ %32, %29 ], [ %0, %13 ]
  %26 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %25, align 4
  %31 = icmp ne i32 %30, %20
  %32 = getelementptr %struct.gf100_gr_fwif, ptr %25, i32 1
  %33 = icmp eq ptr %25, null
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %24, label %35

35:                                               ; preds = %29
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36)
  %37 = load i32, ptr %25, align 4
  br label %38

38:                                               ; preds = %35, %22
  %39 = phi ptr [ %25, %35 ], [ null, %22 ]
  %40 = phi ptr [ %25, %35 ], [ %0, %22 ]
  %41 = phi i32 [ %37, %35 ], [ -1, %22 ]
  %42 = load ptr, ptr %16, align 16
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @nvkm_longopt(ptr noundef %44, ptr noundef nonnull %6, i32 noundef %41) #16
  %46 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %40, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %38
  %50 = icmp sgt i32 %45, -1
  br label %51

51:                                               ; preds = %58, %49
  %52 = phi ptr [ %47, %49 ], [ %61, %58 ]
  %53 = phi ptr [ %40, %49 ], [ %59, %58 ]
  br i1 %50, label %63, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %53, align 4
  %56 = call i32 %52(ptr noundef nonnull %7, i32 noundef %55, ptr noundef %53) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.gf100_gr_fwif, ptr %53, i32 1
  %60 = getelementptr %struct.gf100_gr_fwif, ptr %53, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %51

63:                                               ; preds = %51
  %64 = call i32 %47(ptr noundef nonnull %7, i32 noundef %45, ptr noundef %40) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63, %58, %24
  %67 = phi i32 [ %64, %63 ], [ %56, %58 ], [ -22, %24 ]
  %68 = inttoptr i32 %67 to ptr
  br label %69

69:                                               ; preds = %66, %63, %54, %38
  %70 = phi ptr [ %68, %66 ], [ %40, %63 ], [ %39, %38 ], [ %53, %54 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = ptrtoint ptr %70 to i32
  br label %84

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %70, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  store ptr %76, ptr %7, align 4096
  %77 = getelementptr inbounds %struct.gf100_gr, ptr %7, i32 0, i32 2
  %78 = call i32 @nvkm_falcon_ctor(ptr noundef nonnull @gf100_gr_flcn, ptr noundef %14, ptr noundef nonnull @.str.39, i32 noundef 4231168, ptr noundef %77) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.gf100_gr, ptr %7, i32 0, i32 2, i32 3
  call void @__mutex_init(ptr noundef %81, ptr noundef nonnull @.str.40, ptr noundef nonnull @gf100_gr_new_.__key) #16
  %82 = getelementptr inbounds %struct.gf100_gr, ptr %7, i32 0, i32 3
  %83 = call i32 @nvkm_falcon_ctor(ptr noundef nonnull @gf100_gr_flcn, ptr noundef %14, ptr noundef nonnull @.str.41, i32 noundef 4300800, ptr noundef %82) #16
  br label %84

84:                                               ; preds = %80, %74, %72, %9, %5
  %85 = phi i32 [ %73, %72 ], [ -12, %5 ], [ %11, %9 ], [ %78, %74 ], [ %83, %80 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_num_tpc_per_gpc(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  br label %8

8:                                                ; preds = %91, %3
  %9 = phi i32 [ 0, %3 ], [ %92, %91 ]
  %10 = phi i32 [ 0, %3 ], [ %78, %91 ]
  %11 = load i8, ptr %6, align 1
  %12 = zext i8 %11 to i32
  %13 = call i32 @llvm.smax.i32(i32 %10, i32 %12)
  %14 = sub i32 %13, %10
  %15 = icmp slt i32 %10, %12
  br i1 %15, label %16, label %77

16:                                               ; preds = %8
  %17 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %10
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %10, 1
  %21 = icmp eq i32 %14, 1
  br i1 %21, label %77, label %22

22:                                               ; preds = %16
  %23 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %20
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 4
  %27 = or i32 %26, %19
  %28 = add nsw i32 %10, 2
  %29 = icmp eq i32 %14, 2
  br i1 %29, label %77, label %30

30:                                               ; preds = %22
  %31 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %28
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %27
  %36 = add nsw i32 %10, 3
  %37 = icmp eq i32 %14, 3
  br i1 %37, label %77, label %38

38:                                               ; preds = %30
  %39 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %36
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 12
  %43 = or i32 %42, %35
  %44 = add nsw i32 %10, 4
  %45 = icmp eq i32 %14, 4
  br i1 %45, label %77, label %46

46:                                               ; preds = %38
  %47 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %44
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or i32 %50, %43
  %52 = add nsw i32 %10, 5
  %53 = icmp eq i32 %14, 5
  br i1 %53, label %77, label %54

54:                                               ; preds = %46
  %55 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %52
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 20
  %59 = or i32 %58, %51
  %60 = add nsw i32 %10, 6
  %61 = icmp eq i32 %14, 6
  br i1 %61, label %77, label %62

62:                                               ; preds = %54
  %63 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %60
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 %65, 24
  %67 = or i32 %66, %59
  %68 = add nsw i32 %10, 7
  %69 = icmp eq i32 %14, 7
  br i1 %69, label %77, label %70

70:                                               ; preds = %62
  %71 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %68
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 28
  %75 = or i32 %74, %67
  %76 = add nsw i32 %10, 8
  br label %77

77:                                               ; preds = %70, %62, %54, %46, %38, %30, %22, %16, %8
  %78 = phi i32 [ %10, %8 ], [ %20, %16 ], [ %28, %22 ], [ %36, %30 ], [ %44, %38 ], [ %52, %46 ], [ %60, %54 ], [ %68, %62 ], [ %76, %70 ]
  %79 = phi i32 [ 0, %8 ], [ %19, %16 ], [ %27, %22 ], [ %35, %30 ], [ %43, %38 ], [ %51, %46 ], [ %59, %54 ], [ %67, %62 ], [ %75, %70 ]
  br i1 %1, label %80, label %85

80:                                               ; preds = %77
  %81 = load ptr, ptr %7, align 4
  %82 = shl i32 %9, 2
  %83 = add nuw nsw i32 %82, 4218920
  %84 = getelementptr i8, ptr %81, i32 %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %79) #16, !srcloc !9
  br label %85

85:                                               ; preds = %80, %77
  br i1 %2, label %86, label %91

86:                                               ; preds = %85
  %87 = load ptr, ptr %7, align 4
  %88 = shl i32 %9, 2
  %89 = add nuw nsw i32 %88, 4216944
  %90 = getelementptr i8, ptr %87, i32 %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %79) #16, !srcloc !9
  br label %91

91:                                               ; preds = %86, %85
  %92 = add nuw nsw i32 %9, 1
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %8

94:                                               ; preds = %91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_400054(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4194388
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 885929060) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_shader_exceptions(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 15
  %9 = add i32 %8, 5259264
  %10 = shl i32 %2, 11
  %11 = add i32 %9, %10
  %12 = or i32 %11, 1604
  %13 = getelementptr i8, ptr %7, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 2097150) #16, !srcloc !9
  %14 = load ptr, ptr %6, align 4
  %15 = or i32 %11, 1612
  %16 = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 15) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_tex_hww_esr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 15
  %9 = shl i32 %2, 11
  %10 = add i32 %8, 5259812
  %11 = add i32 %10, %9
  %12 = getelementptr i8, ptr %7, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1073741824) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_419eb4(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4300468
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %8 = or i32 %7, 4096
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4300468
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_419cc0(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4299968
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %8 = or i32 %7, 8
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4299968
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #16, !srcloc !9
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %35, %1
  %15 = phi i8 [ %36, %35 ], [ %12, %1 ]
  %16 = phi i32 [ %37, %35 ], [ 0, %1 ]
  %17 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  %21 = shl i32 %16, 15
  %22 = add nuw nsw i32 %21, 5260428
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ 0, %20 ], [ %29, %23 ]
  %25 = load ptr, ptr %4, align 4
  %26 = shl i32 %24, 11
  %27 = add nuw nsw i32 %22, %26
  %28 = getelementptr i8, ptr %25, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1073741824) #16, !srcloc !9
  %29 = add nuw nsw i32 %24, 1
  %30 = load i8, ptr %17, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %23
  %34 = load i8, ptr %11, align 1
  br label %35

35:                                               ; preds = %33, %14
  %36 = phi i8 [ %34, %33 ], [ %15, %14 ]
  %37 = add nuw nsw i32 %16, 1
  %38 = zext i8 %36 to i32
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %14, label %40

40:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_40601c(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4218908
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1073741824) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_fecs_exceptions(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 917505, i32 917504
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4234276
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %5) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_gpc_mmu(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1051776
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %10 = and i32 %9, 1
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 4294784
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #16, !srcloc !9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 4294820
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 50331648) #16, !srcloc !9
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 4294792
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #16, !srcloc !9
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 4294796
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #16, !srcloc !9
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 4294800
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #16, !srcloc !9
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i8, ptr %21, i32 4294804
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #16, !srcloc !9
  %23 = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_memory_func, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i64 %27(ptr noundef %24) #16
  %29 = lshr i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 4294836
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #16, !srcloc !9
  %33 = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_memory_func, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i64 %37(ptr noundef %34) #16
  %39 = lshr i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 4294840
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_num_active_ltcs(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1050624
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4294828
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_zcull(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 8388607
  %9 = udiv i32 %8, %7
  %10 = add i8 %6, 31
  %11 = and i8 %10, -32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %16

16:                                               ; preds = %132, %14
  %17 = phi i8 [ %6, %14 ], [ %133, %132 ]
  %18 = phi i32 [ 0, %14 ], [ %130, %132 ]
  %19 = phi i32 [ 0, %14 ], [ %129, %132 ]
  %20 = zext i8 %17 to i32
  %21 = call i32 @llvm.usub.sat.i32(i32 %20, i32 %18)
  %22 = icmp ult i32 %18, %20
  br i1 %22, label %30, label %122

23:                                               ; preds = %122, %1
  %24 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %160, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %134

30:                                               ; preds = %16
  %31 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %18
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr [32 x i8], ptr %2, i32 0, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add i8 %35, 1
  store i8 %37, ptr %34, align 1
  %38 = icmp eq i32 %21, 1
  br i1 %38, label %122, label %39

39:                                               ; preds = %30
  %40 = add nuw nsw i32 %18, 1
  %41 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr [32 x i8], ptr %2, i32 0, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 4
  %48 = or i32 %47, %36
  %49 = add i8 %45, 1
  store i8 %49, ptr %44, align 1
  %50 = icmp eq i32 %21, 2
  br i1 %50, label %122, label %51

51:                                               ; preds = %39
  %52 = add nuw nsw i32 %18, 2
  %53 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr [32 x i8], ptr %2, i32 0, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = or i32 %59, %48
  %61 = add i8 %57, 1
  store i8 %61, ptr %56, align 1
  %62 = icmp eq i32 %21, 3
  br i1 %62, label %122, label %63

63:                                               ; preds = %51
  %64 = add nuw nsw i32 %18, 3
  %65 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr [32 x i8], ptr %2, i32 0, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 12
  %72 = or i32 %71, %60
  %73 = add i8 %69, 1
  store i8 %73, ptr %68, align 1
  %74 = icmp eq i32 %21, 4
  br i1 %74, label %122, label %75

75:                                               ; preds = %63
  %76 = add nuw nsw i32 %18, 4
  %77 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = getelementptr [32 x i8], ptr %2, i32 0, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 16
  %84 = or i32 %83, %72
  %85 = add i8 %81, 1
  store i8 %85, ptr %80, align 1
  %86 = icmp eq i32 %21, 5
  br i1 %86, label %122, label %87

87:                                               ; preds = %75
  %88 = add nuw nsw i32 %18, 5
  %89 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr [32 x i8], ptr %2, i32 0, i32 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 20
  %96 = or i32 %95, %84
  %97 = add i8 %93, 1
  store i8 %97, ptr %92, align 1
  %98 = icmp eq i32 %21, 6
  br i1 %98, label %122, label %99

99:                                               ; preds = %87
  %100 = add nuw nsw i32 %18, 6
  %101 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr [32 x i8], ptr %2, i32 0, i32 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw i32 %106, 24
  %108 = or i32 %107, %96
  %109 = add i8 %105, 1
  store i8 %109, ptr %104, align 1
  %110 = icmp eq i32 %21, 7
  br i1 %110, label %122, label %111

111:                                              ; preds = %99
  %112 = add nuw nsw i32 %18, 7
  %113 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr [32 x i8], ptr %2, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 28
  %120 = or i32 %119, %108
  %121 = add i8 %117, 1
  store i8 %121, ptr %116, align 1
  br label %122

122:                                              ; preds = %111, %99, %87, %75, %63, %51, %39, %30, %16
  %123 = phi i32 [ 0, %16 ], [ %36, %30 ], [ %48, %39 ], [ %60, %51 ], [ %72, %63 ], [ %84, %75 ], [ %96, %87 ], [ %108, %99 ], [ %120, %111 ]
  %124 = load ptr, ptr %15, align 4
  %125 = lshr i32 %19, 1
  %126 = and i32 %125, 124
  %127 = or i32 %126, 4295040
  %128 = getelementptr i8, ptr %124, i32 %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %123) #16, !srcloc !9
  %129 = add nuw nsw i32 %18, 8
  %130 = and i32 %129, 255
  %131 = icmp ult i32 %130, %12
  br i1 %131, label %132, label %23

132:                                              ; preds = %122
  %133 = load i8, ptr %5, align 1
  br label %16

134:                                              ; preds = %134, %27
  %135 = phi i32 [ 0, %27 ], [ %156, %134 ]
  %136 = load i8, ptr %28, align 2
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 8
  %139 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %135
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %138, %141
  %143 = load ptr, ptr %29, align 4
  %144 = shl nuw nsw i32 %135, 15
  %145 = add nuw nsw i32 %144, 5245204
  %146 = getelementptr i8, ptr %143, i32 %145
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %142) #16, !srcloc !9
  %147 = load i8, ptr %5, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, 262144
  %150 = load ptr, ptr %29, align 4
  %151 = add nuw nsw i32 %144, 5245200
  %152 = getelementptr i8, ptr %150, i32 %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %149) #16, !srcloc !9
  %153 = load ptr, ptr %29, align 4
  %154 = add nuw nsw i32 %144, 5245208
  %155 = getelementptr i8, ptr %153, i32 %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %9) #16, !srcloc !9
  %156 = add nuw nsw i32 %135, 1
  %157 = load i8, ptr %24, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %134, label %160

160:                                              ; preds = %134, %23
  %161 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 4299732
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %9) #16, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_vsc_stream_master(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5259356
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %8 = or i32 %7, 1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 5259356
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gf100_gr_func, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %0) #16
  %9 = load ptr, ptr %0, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %4, %1 ]
  %12 = getelementptr inbounds %struct.gf100_gr_func, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 11
  br label %20

20:                                               ; preds = %50, %17
  %21 = phi ptr [ %15, %17 ], [ %51, %50 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %94, label %24

24:                                               ; preds = %47, %20
  %25 = phi ptr [ %48, %47 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.gf100_gr_init, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %24
  %30 = zext i8 %27 to i32
  %31 = load i32, ptr %25, align 4
  %32 = getelementptr inbounds %struct.gf100_gr_init, ptr %25, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, %30
  %35 = add i32 %34, %31
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.gf100_gr_init, ptr %25, i32 0, i32 3
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %31, %37 ], [ %45, %39 ]
  %41 = load i32, ptr %38, align 4
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #16, !srcloc !9
  %44 = load i32, ptr %32, align 4
  %45 = add i32 %44, %40
  %46 = icmp ult i32 %45, %35
  br i1 %46, label %39, label %47

47:                                               ; preds = %39, %29
  %48 = getelementptr %struct.gf100_gr_init, ptr %25, i32 1
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %24

50:                                               ; preds = %47, %24
  %51 = getelementptr %struct.gf100_gr_pack, ptr %21, i32 1
  %52 = icmp eq ptr %51, null
  br i1 %52, label %94, label %20

53:                                               ; preds = %10
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.gf100_gr_func, ptr %54, i32 0, i32 29
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %94, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 11
  br label %61

61:                                               ; preds = %91, %58
  %62 = phi ptr [ %56, %58 ], [ %92, %91 ]
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %88, %61
  %66 = phi ptr [ %89, %88 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.gf100_gr_init, ptr %66, i32 0, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %65
  %71 = zext i8 %68 to i32
  %72 = load i32, ptr %66, align 4
  %73 = getelementptr inbounds %struct.gf100_gr_init, ptr %66, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, %71
  %76 = add i32 %75, %72
  %77 = icmp ult i32 %72, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.gf100_gr_init, ptr %66, i32 0, i32 3
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi i32 [ %72, %78 ], [ %86, %80 ]
  %82 = load i32, ptr %79, align 4
  %83 = load ptr, ptr %60, align 4
  %84 = getelementptr i8, ptr %83, i32 %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #16, !srcloc !9
  %85 = load i32, ptr %73, align 4
  %86 = add i32 %85, %81
  %87 = icmp ult i32 %86, %76
  br i1 %87, label %80, label %88

88:                                               ; preds = %80, %70
  %89 = getelementptr %struct.gf100_gr_init, ptr %66, i32 1
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %65

91:                                               ; preds = %88, %65
  %92 = getelementptr %struct.gf100_gr_pack, ptr %62, i32 1
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %61

94:                                               ; preds = %91, %61, %53, %50, %20
  %95 = load ptr, ptr %2, align 4
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 11
  %98 = sub i32 -200, %96
  br label %99

99:                                               ; preds = %120, %94
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr i8, ptr %100, i32 4196096
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %103 = load ptr, ptr %97, align 4
  %104 = getelementptr i8, ptr %103, i32 512
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %106 = and i32 %105, 4096
  %107 = icmp eq i32 %106, 0
  %108 = load ptr, ptr %97, align 4
  %109 = getelementptr i8, ptr %108, i32 9792
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %111 = and i32 %110, 32768
  %112 = load ptr, ptr %97, align 4
  %113 = getelementptr i8, ptr %112, i32 4195852
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %115 = and i32 %114, 1
  br i1 %107, label %134, label %116

116:                                              ; preds = %99
  %117 = icmp ne i32 %111, 0
  %118 = icmp ne i32 %115, 0
  %119 = select i1 %118, i1 true, i1 %117
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load volatile i32, ptr @jiffies, align 64
  %122 = add i32 %98, %121
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %99, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %2, align 4
  %130 = getelementptr inbounds %struct.nvkm_device, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %133 = lshr exact i32 %111, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.2, ptr noundef %132, i32 noundef 1, i32 noundef %133, i32 noundef %115) #17
  br label %134

134:                                              ; preds = %128, %124, %116, %99
  %135 = load ptr, ptr %0, align 4
  %136 = getelementptr inbounds %struct.gf100_gr_func, ptr %135, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  tail call void %137(ptr noundef %0) #16
  %140 = load ptr, ptr %0, align 4
  br label %141

141:                                              ; preds = %139, %134
  %142 = phi ptr [ %140, %139 ], [ %135, %134 ]
  %143 = getelementptr inbounds %struct.gf100_gr_func, ptr %142, i32 0, i32 37
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 42
  %148 = load ptr, ptr %147, align 4
  tail call void @nvkm_therm_clkgate_init(ptr noundef %148, ptr noundef nonnull %144) #16
  %149 = load ptr, ptr %0, align 4
  br label %150

150:                                              ; preds = %146, %141
  %151 = phi ptr [ %149, %146 ], [ %142, %141 ]
  %152 = getelementptr inbounds %struct.gf100_gr_func, ptr %151, i32 0, i32 6
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  tail call void %153(ptr noundef %0) #16
  %156 = load ptr, ptr %0, align 4
  br label %157

157:                                              ; preds = %155, %150
  %158 = phi ptr [ %156, %155 ], [ %151, %150 ]
  %159 = getelementptr inbounds %struct.gf100_gr_func, ptr %158, i32 0, i32 7
  %160 = load ptr, ptr %159, align 4
  tail call void %160(ptr noundef %0) #16
  %161 = load ptr, ptr %0, align 4
  %162 = getelementptr inbounds %struct.gf100_gr_func, ptr %161, i32 0, i32 8
  %163 = load ptr, ptr %162, align 4
  tail call void %163(ptr noundef %0) #16
  %164 = load ptr, ptr %0, align 4
  %165 = getelementptr inbounds %struct.gf100_gr_func, ptr %164, i32 0, i32 9
  %166 = load ptr, ptr %165, align 4
  tail call void %166(ptr noundef %0) #16
  %167 = load ptr, ptr %0, align 4
  %168 = getelementptr inbounds %struct.gf100_gr_func, ptr %167, i32 0, i32 10
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %157
  tail call void %169(ptr noundef %0) #16
  %172 = load ptr, ptr %0, align 4
  br label %173

173:                                              ; preds = %171, %157
  %174 = phi ptr [ %172, %171 ], [ %167, %157 ]
  %175 = getelementptr inbounds %struct.gf100_gr_func, ptr %174, i32 0, i32 11
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  tail call void %176(ptr noundef %0) #16
  %179 = load ptr, ptr %0, align 4
  br label %180

180:                                              ; preds = %178, %173
  %181 = phi ptr [ %179, %178 ], [ %174, %173 ]
  %182 = getelementptr inbounds %struct.gf100_gr_func, ptr %181, i32 0, i32 12
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %180
  tail call void %183(ptr noundef %0) #16
  %186 = load ptr, ptr %0, align 4
  br label %187

187:                                              ; preds = %185, %180
  %188 = phi ptr [ %186, %185 ], [ %181, %180 ]
  %189 = getelementptr inbounds %struct.gf100_gr_func, ptr %188, i32 0, i32 13
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  tail call void %190(ptr noundef %0) #16
  br label %193

193:                                              ; preds = %192, %187
  %194 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr i8, ptr %195, i32 4195584
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 65537) #16, !srcloc !9
  %197 = load ptr, ptr %194, align 4
  %198 = getelementptr i8, ptr %197, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 -1) #16, !srcloc !9
  %199 = load ptr, ptr %194, align 4
  %200 = getelementptr i8, ptr %199, i32 4194620
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 -1) #16, !srcloc !9
  %201 = load ptr, ptr %194, align 4
  %202 = getelementptr i8, ptr %201, i32 4194596
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 2) #16, !srcloc !9
  %203 = load ptr, ptr %0, align 4
  %204 = getelementptr inbounds %struct.gf100_gr_func, ptr %203, i32 0, i32 14
  %205 = load ptr, ptr %204, align 4
  tail call void %205(ptr noundef %0) #16
  %206 = load ptr, ptr %0, align 4
  %207 = getelementptr inbounds %struct.gf100_gr_func, ptr %206, i32 0, i32 15
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %193
  tail call void %208(ptr noundef %0) #16
  br label %211

211:                                              ; preds = %210, %193
  %212 = load ptr, ptr %194, align 4
  %213 = getelementptr i8, ptr %212, i32 4210688
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 -1073741824) #16, !srcloc !9
  %214 = load ptr, ptr %194, align 4
  %215 = getelementptr i8, ptr %214, i32 4212224
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 -1073741824) #16, !srcloc !9
  %216 = load ptr, ptr %194, align 4
  %217 = getelementptr i8, ptr %216, i32 4227120
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 -1073741824) #16, !srcloc !9
  %218 = load ptr, ptr %0, align 4
  %219 = getelementptr inbounds %struct.gf100_gr_func, ptr %218, i32 0, i32 16
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %211
  tail call void %220(ptr noundef %0) #16
  br label %223

223:                                              ; preds = %222, %211
  %224 = load ptr, ptr %194, align 4
  %225 = getelementptr i8, ptr %224, i32 4218904
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 -1073741824) #16, !srcloc !9
  %226 = load ptr, ptr %194, align 4
  %227 = getelementptr i8, ptr %226, i32 4211856
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 -1073741824) #16, !srcloc !9
  %228 = load ptr, ptr %0, align 4
  %229 = getelementptr inbounds %struct.gf100_gr_func, ptr %228, i32 0, i32 17
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %223
  tail call void %230(ptr noundef %0) #16
  br label %233

233:                                              ; preds = %232, %223
  %234 = load ptr, ptr %194, align 4
  %235 = getelementptr i8, ptr %234, i32 4216896
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 -1073741824) #16, !srcloc !9
  %236 = load ptr, ptr %194, align 4
  %237 = getelementptr i8, ptr %236, i32 4216900
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 16777215) #16, !srcloc !9
  %238 = load ptr, ptr %0, align 4
  %239 = getelementptr inbounds %struct.gf100_gr_func, ptr %238, i32 0, i32 18
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %233
  tail call void %240(ptr noundef %0) #16
  %243 = load ptr, ptr %0, align 4
  br label %244

244:                                              ; preds = %242, %233
  %245 = phi ptr [ %243, %242 ], [ %238, %233 ]
  %246 = getelementptr inbounds %struct.gf100_gr_func, ptr %245, i32 0, i32 19
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %244
  tail call void %247(ptr noundef %0) #16
  %250 = load ptr, ptr %0, align 4
  br label %251

251:                                              ; preds = %249, %244
  %252 = phi ptr [ %250, %249 ], [ %245, %244 ]
  %253 = getelementptr inbounds %struct.gf100_gr_func, ptr %252, i32 0, i32 20
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %251
  tail call void %254(ptr noundef %0) #16
  %257 = load ptr, ptr %0, align 4
  br label %258

258:                                              ; preds = %256, %251
  %259 = phi ptr [ %257, %256 ], [ %252, %251 ]
  %260 = getelementptr inbounds %struct.gf100_gr_func, ptr %259, i32 0, i32 21
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %258
  tail call void %261(ptr noundef %0) #16
  br label %264

264:                                              ; preds = %263, %258
  %265 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %266 = load i8, ptr %265, align 1
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %325, %264
  %269 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 12
  %270 = load i8, ptr %269, align 4
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %355, label %336

272:                                              ; preds = %325, %264
  %273 = phi i32 [ %332, %325 ], [ 0, %264 ]
  %274 = load ptr, ptr %194, align 4
  %275 = shl i32 %273, 15
  %276 = add nuw nsw i32 %275, 5243936
  %277 = getelementptr i8, ptr %274, i32 %276
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 -1073741824) #16, !srcloc !9
  %278 = load ptr, ptr %194, align 4
  %279 = add nuw nsw i32 %275, 5245184
  %280 = getelementptr i8, ptr %278, i32 %279
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 -1073741824) #16, !srcloc !9
  %281 = load ptr, ptr %194, align 4
  %282 = add nuw nsw i32 %275, 5247016
  %283 = getelementptr i8, ptr %281, i32 %282
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 -1073741824) #16, !srcloc !9
  %284 = load ptr, ptr %194, align 4
  %285 = add nuw nsw i32 %275, 5244964
  %286 = getelementptr i8, ptr %284, i32 %285
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 -1073741824) #16, !srcloc !9
  %287 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %273
  %288 = load i8, ptr %287, align 1
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %325, label %290

290:                                              ; preds = %272
  %291 = add nuw nsw i32 %275, 5259264
  br label %292

292:                                              ; preds = %317, %290
  %293 = phi i32 [ 0, %290 ], [ %321, %317 ]
  %294 = load ptr, ptr %194, align 4
  %295 = shl i32 %293, 11
  %296 = add nuw nsw i32 %291, %295
  %297 = or i32 %296, 1288
  %298 = getelementptr i8, ptr %294, i32 %297
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 -1) #16, !srcloc !9
  %299 = load ptr, ptr %194, align 4
  %300 = or i32 %296, 1292
  %301 = getelementptr i8, ptr %299, i32 %300
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 -1) #16, !srcloc !9
  %302 = load ptr, ptr %0, align 4
  %303 = getelementptr inbounds %struct.gf100_gr_func, ptr %302, i32 0, i32 22
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %307, label %306

306:                                              ; preds = %292
  tail call void %304(ptr noundef %0, i32 noundef %273, i32 noundef %293) #16
  br label %307

307:                                              ; preds = %306, %292
  %308 = load ptr, ptr %194, align 4
  %309 = or i32 %296, 132
  %310 = getelementptr i8, ptr %308, i32 %309
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 -1073741824) #16, !srcloc !9
  %311 = load ptr, ptr %0, align 4
  %312 = getelementptr inbounds %struct.gf100_gr_func, ptr %311, i32 0, i32 23
  %313 = load ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315

315:                                              ; preds = %307
  tail call void %313(ptr noundef %0, i32 noundef %273, i32 noundef %293) #16
  %316 = load ptr, ptr %0, align 4
  br label %317

317:                                              ; preds = %315, %307
  %318 = phi ptr [ %316, %315 ], [ %311, %307 ]
  %319 = getelementptr inbounds %struct.gf100_gr_func, ptr %318, i32 0, i32 24
  %320 = load ptr, ptr %319, align 4
  tail call void %320(ptr noundef %0, i32 noundef %273, i32 noundef %293) #16
  %321 = add nuw nsw i32 %293, 1
  %322 = load i8, ptr %287, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp ult i32 %321, %323
  br i1 %324, label %292, label %325

325:                                              ; preds = %317, %272
  %326 = load ptr, ptr %194, align 4
  %327 = add nuw nsw i32 %275, 5254288
  %328 = getelementptr i8, ptr %326, i32 %327
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %328, i32 -1) #16, !srcloc !9
  %329 = load ptr, ptr %194, align 4
  %330 = add nuw nsw i32 %275, 5254292
  %331 = getelementptr i8, ptr %329, i32 %330
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 -1) #16, !srcloc !9
  %332 = add nuw nsw i32 %273, 1
  %333 = load i8, ptr %265, align 1
  %334 = zext i8 %333 to i32
  %335 = icmp ult i32 %332, %334
  br i1 %335, label %272, label %268

336:                                              ; preds = %336, %268
  %337 = phi i32 [ %351, %336 ], [ 0, %268 ]
  %338 = load ptr, ptr %194, align 4
  %339 = shl i32 %337, 10
  %340 = add nuw nsw i32 %339, 4260164
  %341 = getelementptr i8, ptr %338, i32 %340
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 1073741824) #16, !srcloc !9
  %342 = load ptr, ptr %194, align 4
  %343 = add nuw nsw i32 %339, 4259952
  %344 = getelementptr i8, ptr %342, i32 %343
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %344, i32 1073741824) #16, !srcloc !9
  %345 = load ptr, ptr %194, align 4
  %346 = add nuw nsw i32 %339, 4260356
  %347 = getelementptr i8, ptr %345, i32 %346
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %347, i32 -1) #16, !srcloc !9
  %348 = load ptr, ptr %194, align 4
  %349 = add nuw nsw i32 %339, 4260360
  %350 = getelementptr i8, ptr %348, i32 %349
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %350, i32 -1) #16, !srcloc !9
  %351 = add nuw nsw i32 %337, 1
  %352 = load i8, ptr %269, align 4
  %353 = zext i8 %352 to i32
  %354 = icmp ult i32 %351, %353
  br i1 %354, label %336, label %355

355:                                              ; preds = %336, %268
  %356 = load ptr, ptr %194, align 4
  %357 = getelementptr i8, ptr %356, i32 4194568
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 -1) #16, !srcloc !9
  %358 = load ptr, ptr %194, align 4
  %359 = getelementptr i8, ptr %358, i32 4194616
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %359, i32 -1) #16, !srcloc !9
  %360 = load ptr, ptr %194, align 4
  %361 = getelementptr i8, ptr %360, i32 4194584
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 -1) #16, !srcloc !9
  %362 = load ptr, ptr %194, align 4
  %363 = getelementptr i8, ptr %362, i32 4194608
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 -1) #16, !srcloc !9
  %364 = load ptr, ptr %194, align 4
  %365 = getelementptr i8, ptr %364, i32 4194588
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 -1) #16, !srcloc !9
  %366 = load ptr, ptr %194, align 4
  %367 = getelementptr i8, ptr %366, i32 4194612
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %367, i32 -1) #16, !srcloc !9
  %368 = load ptr, ptr %0, align 4
  %369 = getelementptr inbounds %struct.gf100_gr_func, ptr %368, i32 0, i32 25
  %370 = load ptr, ptr %369, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %355
  tail call void %370(ptr noundef %0) #16
  br label %373

373:                                              ; preds = %372, %355
  tail call void @gf100_gr_zbc_init(ptr noundef %0)
  %374 = load ptr, ptr %0, align 4
  %375 = getelementptr inbounds %struct.gf100_gr_func, ptr %374, i32 0, i32 26
  %376 = load ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %373
  tail call void %376(ptr noundef %0) #16
  br label %379

379:                                              ; preds = %378, %373
  %380 = tail call i32 @gf100_gr_init_ctxctl(ptr noundef %0)
  ret i32 %380
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_clkgate_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @gf100_gr_nofw(ptr nocapture noundef writeonly %0, i32 %1, ptr nocapture readnone %2) #10 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  store i8 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_load(ptr noundef %0, i32 %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %7, ptr noundef nonnull @.str.42, i1 noundef zeroext false) #16
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 1
  %11 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 2
  %15 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 1
  %19 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 2
  %23 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  store i8 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %21, %17, %13, %9, %3
  %28 = phi i32 [ 0, %25 ], [ -22, %3 ], [ -2, %21 ], [ -2, %17 ], [ -2, %13 ], [ -2, %9 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_load_fw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !10
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.118, i32 noundef %9, ptr noundef %1)
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @request_firmware(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %12) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %3
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.119, ptr noundef %1)
  %17 = load ptr, ptr %11, align 8
  %18 = call i32 @request_firmware(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %17) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.120, ptr noundef %28, ptr noundef %1) #17
  br label %40

29:                                               ; preds = %15, %3
  %30 = load ptr, ptr %4, align 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_blob, ptr %2, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call ptr @kmemdup(ptr noundef %34, i32 noundef %31, i32 noundef 3264) #16
  store ptr %35, ptr %2, align 4
  %36 = load ptr, ptr %4, align 4
  call void @release_firmware(ptr noundef %36) #16
  %37 = load ptr, ptr %2, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i32 -12, i32 0
  br label %40

40:                                               ; preds = %29, %24, %20
  %41 = phi i32 [ %39, %29 ], [ %18, %24 ], [ %18, %20 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gf100_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_zbc_color_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_zbc_depth_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_unk260(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_acr_managed_falcon(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_bootstrap_falcons(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_generate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_gr_init_csdata(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %3, 33554432
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %2, 448
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #16, !srcloc !9
  %13 = load ptr, ptr %9, align 4
  %14 = add i32 %2, 452
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %16)
  %21 = add i32 %20, 16777216
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #16, !srcloc !9
  %24 = icmp eq ptr %1, null
  br i1 %24, label %94, label %25

25:                                               ; preds = %87, %5
  %26 = phi i32 [ %91, %87 ], [ %20, %5 ]
  %27 = phi i32 [ %90, %87 ], [ 0, %5 ]
  %28 = phi i32 [ %89, %87 ], [ -1, %5 ]
  %29 = phi i32 [ %88, %87 ], [ -1, %5 ]
  %30 = phi ptr [ %92, %87 ], [ %1, %5 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %94, label %33

33:                                               ; preds = %80, %25
  %34 = phi i32 [ %84, %80 ], [ %26, %25 ]
  %35 = phi i32 [ %83, %80 ], [ %27, %25 ]
  %36 = phi i32 [ %82, %80 ], [ %28, %25 ]
  %37 = phi i32 [ %81, %80 ], [ %29, %25 ]
  %38 = phi ptr [ %85, %80 ], [ %31, %25 ]
  %39 = getelementptr inbounds %struct.gf100_gr_init, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %87, label %42

42:                                               ; preds = %33
  %43 = zext i8 %40 to i32
  %44 = load i32, ptr %38, align 4
  %45 = sub i32 %44, %4
  %46 = getelementptr inbounds %struct.gf100_gr_init, ptr %38, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, %43
  %49 = add i32 %48, %45
  %50 = icmp ult i32 %45, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %72, %42
  %52 = phi i32 [ %73, %72 ], [ %47, %42 ]
  %53 = phi i32 [ %78, %72 ], [ %45, %42 ]
  %54 = phi i32 [ %76, %72 ], [ %34, %42 ]
  %55 = phi i32 [ %77, %72 ], [ %35, %42 ]
  %56 = phi i32 [ %53, %72 ], [ %36, %42 ]
  %57 = phi i32 [ %74, %72 ], [ %37, %42 ]
  %58 = add i32 %56, 4
  %59 = icmp ne i32 %53, %58
  %60 = icmp ugt i32 %55, 31
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = icmp eq i32 %55, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %62
  %65 = shl i32 %55, 26
  %66 = add i32 %65, -67108864
  %67 = or i32 %66, %57
  %68 = load ptr, ptr %9, align 4
  %69 = getelementptr i8, ptr %68, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #16, !srcloc !9
  %70 = add i32 %54, 4
  %71 = load i32, ptr %46, align 4
  br label %72

72:                                               ; preds = %64, %62, %51
  %73 = phi i32 [ %52, %51 ], [ %71, %64 ], [ %52, %62 ]
  %74 = phi i32 [ %57, %51 ], [ %53, %64 ], [ %53, %62 ]
  %75 = phi i32 [ %55, %51 ], [ 0, %64 ], [ 0, %62 ]
  %76 = phi i32 [ %54, %51 ], [ %70, %64 ], [ %54, %62 ]
  %77 = add nuw nsw i32 %75, 1
  %78 = add i32 %73, %53
  %79 = icmp ult i32 %78, %49
  br i1 %79, label %51, label %80

80:                                               ; preds = %72, %42
  %81 = phi i32 [ %37, %42 ], [ %74, %72 ]
  %82 = phi i32 [ %36, %42 ], [ %53, %72 ]
  %83 = phi i32 [ %35, %42 ], [ %77, %72 ]
  %84 = phi i32 [ %34, %42 ], [ %76, %72 ]
  %85 = getelementptr %struct.gf100_gr_init, ptr %38, i32 1
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %33

87:                                               ; preds = %80, %33
  %88 = phi i32 [ %37, %33 ], [ %81, %80 ]
  %89 = phi i32 [ %36, %33 ], [ %82, %80 ]
  %90 = phi i32 [ %35, %33 ], [ %83, %80 ]
  %91 = phi i32 [ %34, %33 ], [ %84, %80 ]
  %92 = getelementptr %struct.gf100_gr_pack, ptr %30, i32 1
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %25

94:                                               ; preds = %87, %25, %5
  %95 = phi i32 [ -1, %5 ], [ %88, %87 ], [ %29, %25 ]
  %96 = phi i32 [ 0, %5 ], [ %90, %87 ], [ %27, %25 ]
  %97 = phi i32 [ %20, %5 ], [ %91, %87 ], [ %26, %25 ]
  %98 = shl i32 %96, 26
  %99 = add i32 %98, -67108864
  %100 = or i32 %99, %95
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr i8, ptr %101, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #16, !srcloc !9
  %103 = add i32 %3, 16777220
  %104 = load ptr, ptr %9, align 4
  %105 = getelementptr i8, ptr %104, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #16, !srcloc !9
  %106 = add i32 %97, 4
  %107 = load ptr, ptr %9, align 4
  %108 = getelementptr i8, ptr %107, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #16, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gf100_gr_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 10892
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #16
  %5 = getelementptr i8, ptr %0, i32 328
  tail call void @nvkm_falcon_dtor(ptr noundef %5) #16
  %6 = getelementptr i8, ptr %0, i32 92
  tail call void @nvkm_falcon_dtor(ptr noundef %6) #16
  %7 = getelementptr i8, ptr %0, i32 288
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #16
  store ptr null, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 292
  store i32 0, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 296
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #16
  store ptr null, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 300
  store i32 0, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 524
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #16
  store ptr null, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 528
  store i32 0, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 532
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #16
  store ptr null, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 536
  store i32 0, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 552
  %20 = load ptr, ptr %19, align 4
  tail call void @vfree(ptr noundef %20) #16
  %21 = getelementptr i8, ptr %0, i32 556
  %22 = load ptr, ptr %21, align 4
  tail call void @vfree(ptr noundef %22) #16
  %23 = getelementptr i8, ptr %0, i32 548
  %24 = load ptr, ptr %23, align 4
  tail call void @vfree(ptr noundef %24) #16
  %25 = getelementptr i8, ptr %0, i32 544
  %26 = load ptr, ptr %25, align 4
  tail call void @vfree(ptr noundef %26) #16
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  tail call void @nvkm_pmu_pgob(ptr noundef %6, i1 noundef zeroext false) #16
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.gf100_gr_func, ptr %7, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %2) #16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr i8, ptr %0, i32 1520
  store i8 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4232708
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 31
  %19 = getelementptr i8, ptr %0, i32 1521
  store i8 %18, ptr %19, align 1
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %104, label %21

21:                                               ; preds = %1
  %22 = getelementptr i8, ptr %0, i32 1522
  %23 = getelementptr i8, ptr %0, i32 1554
  %24 = getelementptr i8, ptr %0, i32 1555
  %25 = getelementptr i8, ptr %0, i32 1556
  %26 = getelementptr i8, ptr %0, i32 1620
  %27 = getelementptr i8, ptr %0, i32 1588
  %28 = getelementptr i8, ptr %0, i32 1748
  %29 = getelementptr i8, ptr %0, i32 1876
  %30 = getelementptr i8, ptr %0, i32 1877
  br label %31

31:                                               ; preds = %99, %21
  %32 = phi i32 [ 0, %21 ], [ %100, %99 ]
  %33 = load ptr, ptr %13, align 4
  %34 = shl i32 %32, 15
  %35 = add nuw nsw i32 %34, 5252616
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %38 = trunc i32 %37 to i8
  %39 = getelementptr [32 x i8], ptr %22, i32 0, i32 %32
  store i8 %38, ptr %39, align 1
  %40 = load i8, ptr %23, align 2
  %41 = zext i8 %40 to i32
  %42 = and i32 %37, 255
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 %41)
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %23, align 2
  %45 = load i8, ptr %39, align 1
  %46 = load i8, ptr %24, align 1
  %47 = add i8 %46, %45
  store i8 %47, ptr %24, align 1
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr inbounds %struct.gf100_gr_func, ptr %48, i32 0, i32 35
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = getelementptr [32 x i8], ptr %25, i32 0, i32 %32
  store i8 %51, ptr %52, align 1
  %53 = and i32 %50, 255
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %31
  %56 = add nuw nsw i32 %34, 5246000
  %57 = getelementptr [32 x [4 x i8]], ptr %26, i32 0, i32 %32
  %58 = getelementptr [32 x i8], ptr %27, i32 0, i32 %32
  %59 = getelementptr [32 x [4 x i8]], ptr %28, i32 0, i32 %32
  br label %60

60:                                               ; preds = %94, %55
  %61 = phi i32 [ 0, %55 ], [ %95, %94 ]
  %62 = load ptr, ptr %13, align 4
  %63 = shl i32 %61, 2
  %64 = add nuw nsw i32 %56, %63
  %65 = getelementptr i8, ptr %62, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %67 = trunc i32 %66 to i8
  %68 = getelementptr [4 x i8], ptr %57, i32 0, i32 %61
  store i8 %67, ptr %68, align 1
  %69 = and i32 %66, 255
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %60
  %72 = shl nuw i32 1, %61
  %73 = load i8, ptr %58, align 1
  %74 = trunc i32 %72 to i8
  %75 = or i8 %73, %74
  store i8 %75, ptr %58, align 1
  %76 = load i8, ptr %68, align 1
  %77 = zext i8 %76 to i32
  %78 = tail call i32 @__sw_hweight8(i32 noundef %77) #16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr [4 x i8], ptr %59, i32 0, i32 %61
  store i8 %79, ptr %80, align 1
  %81 = load i8, ptr %29, align 4
  %82 = icmp eq i8 %81, 0
  %83 = zext i8 %81 to i32
  %84 = and i32 %78, 255
  %85 = icmp ult i32 %84, %83
  %86 = select i1 %82, i1 true, i1 %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  store i8 %79, ptr %29, align 4
  %88 = load i8, ptr %80, align 1
  br label %89

89:                                               ; preds = %87, %71
  %90 = phi i8 [ %79, %71 ], [ %88, %87 ]
  %91 = load i8, ptr %30, align 1
  %92 = icmp ult i8 %91, %90
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i8 %90, ptr %30, align 1
  br label %94

94:                                               ; preds = %93, %89, %60
  %95 = add nuw nsw i32 %61, 1
  %96 = load i8, ptr %52, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ult i32 %95, %97
  br i1 %98, label %60, label %99

99:                                               ; preds = %94, %31
  %100 = add nuw nsw i32 %32, 1
  %101 = load i8, ptr %19, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ult i32 %100, %102
  br i1 %103, label %31, label %104

104:                                              ; preds = %99, %1
  %105 = getelementptr i8, ptr %0, i32 1879
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(256) %105, i8 -1, i32 256, i1 false)
  %106 = load ptr, ptr %2, align 4
  %107 = load ptr, ptr %106, align 4
  tail call void %107(ptr noundef %2) #16
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr inbounds %struct.gf100_gr_func, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef %2) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_init_(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -311
  %9 = icmp ult i32 %8, 2
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %11, ptr noundef nonnull @.str.51, i1 noundef zeroext %9) #16
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 512
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %18 = and i32 %17, -4097
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #16, !srcloc !9
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 512
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  tail call void @msleep(i32 noundef 50) #16
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr i8, ptr %24, i32 512
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %27 = or i32 %26, 4096
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr i8, ptr %28, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #16, !srcloc !9
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr i8, ptr %30, i32 512
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  br label %33

33:                                               ; preds = %13, %1
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 39
  %36 = load ptr, ptr %35, align 8
  tail call void @nvkm_pmu_pgob(ptr noundef %36, i1 noundef zeroext false) #16
  %37 = getelementptr i8, ptr %0, i32 92
  %38 = tail call i32 @nvkm_falcon_get(ptr noundef %37, ptr noundef %3) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %0, i32 328
  %42 = tail call i32 @nvkm_falcon_get(ptr noundef %41, ptr noundef %3) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr inbounds %struct.gf100_gr_func, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %2) #16
  br label %49

49:                                               ; preds = %44, %40, %33
  %50 = phi i32 [ %48, %44 ], [ %38, %33 ], [ %42, %40 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1
  %4 = getelementptr i8, ptr %0, i32 328
  tail call void @nvkm_falcon_put(ptr noundef %4, ptr noundef %3) #16
  %5 = getelementptr i8, ptr %0, i32 92
  tail call void @nvkm_falcon_put(ptr noundef %5, ptr noundef %3) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_gr_intr(ptr noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = alloca [128 x i8], align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !10
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4233984
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %13 = and i32 %12, 268435455
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 4194560
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 4196100
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %21 = and i32 %20, 16380
  %22 = lshr i32 %20, 16
  %23 = and i32 %22, 7
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 4196104
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 4194576
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 52
  %31 = load ptr, ptr %30, align 8
  %32 = shl nuw nsw i64 %14, 12
  %33 = call ptr @nvkm_fifo_chan_inst(ptr noundef %31, i64 noundef %32, ptr noundef nonnull %5) #16
  store ptr %33, ptr %4, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %33, i32 0, i32 3, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_client, ptr %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %33, i32 0, i32 5
  %40 = load i16, ptr %39, align 8
  %41 = zext i16 %40 to i32
  br label %42

42:                                               ; preds = %35, %1
  %43 = phi ptr [ %38, %35 ], [ @.str.52, %1 ]
  %44 = phi i32 [ %41, %35 ], [ -1, %1 ]
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 15
  %46 = load i32, ptr %45, align 8
  %47 = icmp ult i32 %46, 224
  %48 = icmp ult i32 %23, 4
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load ptr, ptr %9, align 4
  %52 = shl nuw nsw i32 %23, 2
  %53 = or i32 %52, 4211200
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  br label %56

56:                                               ; preds = %50, %42
  %57 = phi i32 [ %55, %50 ], [ 0, %42 ]
  %58 = and i32 %17, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr i8, ptr %61, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 1) #16, !srcloc !9
  %63 = and i32 %17, -2
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %63, %60 ], [ %17, %56 ]
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %64
  %69 = trunc i32 %57 to i8
  switch i8 %69, label %79 [
    i8 -105, label %70
    i8 -64, label %70
  ]

70:                                               ; preds = %68, %68
  %71 = icmp eq i32 %21, 5416
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = icmp ne i32 %26, 0
  %74 = sext i1 %73 to i32
  %75 = load ptr, ptr %9, align 4
  %76 = getelementptr i8, ptr %75, i32 4300356
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #16, !srcloc !9
  %77 = load ptr, ptr %9, align 4
  %78 = getelementptr i8, ptr %77, i32 4300364
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %74) #16, !srcloc !9
  br label %88

79:                                               ; preds = %70, %68
  %80 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %7, align 4
  %85 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.53, ptr noundef %87, i32 noundef %44, i64 noundef %32, ptr noundef %43, i32 noundef %23, i32 noundef %57, i32 noundef %21, i32 noundef %26) #17
  br label %88

88:                                               ; preds = %83, %79, %72
  %89 = load ptr, ptr %9, align 4
  %90 = getelementptr i8, ptr %89, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 16) #16, !srcloc !9
  %91 = and i32 %65, -17
  br label %92

92:                                               ; preds = %88, %64
  %93 = phi i32 [ %91, %88 ], [ %65, %64 ]
  %94 = and i32 %93, 32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %7, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.54, ptr noundef %104, i32 noundef %44, i64 noundef %32, ptr noundef %43, i32 noundef %23, i32 noundef %57, i32 noundef %21, i32 noundef %26) #17
  br label %105

105:                                              ; preds = %100, %96
  %106 = load ptr, ptr %9, align 4
  %107 = getelementptr i8, ptr %106, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 32) #16, !srcloc !9
  %108 = and i32 %93, -33
  br label %109

109:                                              ; preds = %105, %92
  %110 = phi i32 [ %108, %105 ], [ %93, %92 ]
  %111 = and i32 %110, 1048576
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %109
  %114 = call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_data_error_names, i32 noundef %29) #16
  %115 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %7, align 4
  %120 = getelementptr inbounds %struct.nvkm_device, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  %123 = icmp eq ptr %114, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.nvkm_enum, ptr %114, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = phi ptr [ %126, %124 ], [ @.str.35, %118 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.55, ptr noundef %122, i32 noundef %29, ptr noundef %128, i32 noundef %44, i64 noundef %32, ptr noundef %43, i32 noundef %23, i32 noundef %57, i32 noundef %21, i32 noundef %26) #17
  br label %129

129:                                              ; preds = %127, %113
  %130 = load ptr, ptr %9, align 4
  %131 = getelementptr i8, ptr %130, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 1048576) #16, !srcloc !9
  %132 = and i32 %110, -1048577
  br label %133

133:                                              ; preds = %129, %109
  %134 = phi i32 [ %132, %129 ], [ %110, %109 ]
  %135 = and i32 %134, 2097152
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %652, label %137

137:                                              ; preds = %133
  %138 = getelementptr %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %7, align 4
  %143 = getelementptr inbounds %struct.nvkm_device, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.56, ptr noundef %145, i32 noundef %44, i64 noundef %32, ptr noundef %43) #17
  br label %146

146:                                              ; preds = %141, %137
  %147 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false) #16, !annotation !10
  %148 = getelementptr inbounds %struct.nvkm_device, ptr %147, i32 0, i32 11
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr i8, ptr %149, i32 4194568
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %172, label %154

154:                                              ; preds = %146
  %155 = load ptr, ptr %148, align 4
  %156 = getelementptr i8, ptr %155, i32 4210688
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %158 = and i32 %157, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @gf100_dispatch_error, i32 noundef %158) #16
  %159 = load i32, ptr %138, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %154
  %162 = load ptr, ptr %7, align 4
  %163 = getelementptr inbounds %struct.nvkm_device, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.58, ptr noundef %165, i32 noundef %157, ptr noundef nonnull %3) #17
  br label %166

166:                                              ; preds = %161, %154
  %167 = load ptr, ptr %148, align 4
  %168 = getelementptr i8, ptr %167, i32 4210688
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 -1073741824) #16, !srcloc !9
  %169 = load ptr, ptr %148, align 4
  %170 = getelementptr i8, ptr %169, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 1) #16, !srcloc !9
  %171 = and i32 %151, -2
  br label %172

172:                                              ; preds = %166, %146
  %173 = phi i32 [ %171, %166 ], [ %151, %146 ]
  %174 = and i32 %173, 2
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %148, align 4
  %178 = getelementptr i8, ptr %177, i32 4212224
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %180 = and i32 %179, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @gf100_m2mf_error, i32 noundef %180) #16
  %181 = load i32, ptr %138, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %176
  %184 = load ptr, ptr %7, align 4
  %185 = getelementptr inbounds %struct.nvkm_device, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.59, ptr noundef %187, i32 noundef %179, ptr noundef nonnull %3) #17
  br label %188

188:                                              ; preds = %183, %176
  %189 = load ptr, ptr %148, align 4
  %190 = getelementptr i8, ptr %189, i32 4212224
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 -1073741824) #16, !srcloc !9
  %191 = load ptr, ptr %148, align 4
  %192 = getelementptr i8, ptr %191, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 2) #16, !srcloc !9
  %193 = and i32 %173, -3
  br label %194

194:                                              ; preds = %188, %172
  %195 = phi i32 [ %193, %188 ], [ %173, %172 ]
  %196 = and i32 %195, 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %216, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %148, align 4
  %200 = getelementptr i8, ptr %199, i32 4227120
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %202 = and i32 %201, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @gf100_ccache_error, i32 noundef %202) #16
  %203 = load i32, ptr %138, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %198
  %206 = load ptr, ptr %7, align 4
  %207 = getelementptr inbounds %struct.nvkm_device, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 8
  %209 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.60, ptr noundef %209, i32 noundef %201, ptr noundef nonnull %3) #17
  br label %210

210:                                              ; preds = %205, %198
  %211 = load ptr, ptr %148, align 4
  %212 = getelementptr i8, ptr %211, i32 4227120
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 -1073741824) #16, !srcloc !9
  %213 = load ptr, ptr %148, align 4
  %214 = getelementptr i8, ptr %213, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 8) #16, !srcloc !9
  %215 = and i32 %195, -9
  br label %216

216:                                              ; preds = %210, %194
  %217 = phi i32 [ %215, %210 ], [ %195, %194 ]
  %218 = and i32 %217, 16
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %240, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %148, align 4
  %222 = getelementptr i8, ptr %221, i32 4216896
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %224 = load i32, ptr %138, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %220
  %227 = load ptr, ptr %7, align 4
  %228 = getelementptr inbounds %struct.nvkm_device, ptr %227, i32 0, i32 2
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr i8, ptr %0, i32 24
  %231 = and i32 %223, 16777215
  %232 = lshr i32 %223, 24
  %233 = and i32 %232, 63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.61, ptr noundef %230, i32 noundef %223, i32 noundef %231, i32 noundef %233) #17
  br label %234

234:                                              ; preds = %226, %220
  %235 = load ptr, ptr %148, align 4
  %236 = getelementptr i8, ptr %235, i32 4216896
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 -1073741824) #16, !srcloc !9
  %237 = load ptr, ptr %148, align 4
  %238 = getelementptr i8, ptr %237, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 16) #16, !srcloc !9
  %239 = and i32 %217, -17
  br label %240

240:                                              ; preds = %234, %216
  %241 = phi i32 [ %239, %234 ], [ %217, %216 ]
  %242 = and i32 %241, 64
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %262, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %148, align 4
  %246 = getelementptr i8, ptr %245, i32 4218908
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %248 = and i32 %247, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @gf100_unk6_error, i32 noundef %248) #16
  %249 = load i32, ptr %138, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %244
  %252 = load ptr, ptr %7, align 4
  %253 = getelementptr inbounds %struct.nvkm_device, ptr %252, i32 0, i32 2
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %254, ptr noundef nonnull @.str.62, ptr noundef %255, i32 noundef %247, ptr noundef nonnull %3) #17
  br label %256

256:                                              ; preds = %251, %244
  %257 = load ptr, ptr %148, align 4
  %258 = getelementptr i8, ptr %257, i32 4218908
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 -1073741824) #16, !srcloc !9
  %259 = load ptr, ptr %148, align 4
  %260 = getelementptr i8, ptr %259, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 64) #16, !srcloc !9
  %261 = and i32 %241, -65
  br label %262

262:                                              ; preds = %256, %240
  %263 = phi i32 [ %261, %256 ], [ %241, %240 ]
  %264 = and i32 %263, 128
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %294, label %266

266:                                              ; preds = %262
  %267 = load ptr, ptr %148, align 4
  %268 = getelementptr i8, ptr %267, i32 4211856
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %270 = load ptr, ptr %148, align 4
  %271 = getelementptr i8, ptr %270, i32 4211860
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %273 = load ptr, ptr %148, align 4
  %274 = getelementptr i8, ptr %273, i32 4211868
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %276 = and i32 %269, 536870911
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @gf100_macro_error, i32 noundef %276) #16
  %277 = load i32, ptr %138, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %288, label %279

279:                                              ; preds = %266
  %280 = load ptr, ptr %7, align 4
  %281 = getelementptr inbounds %struct.nvkm_device, ptr %280, i32 0, i32 2
  %282 = load ptr, ptr %281, align 8
  %283 = getelementptr i8, ptr %0, i32 24
  %284 = and i32 %272, 2047
  %285 = and i32 %272, 268435456
  %286 = icmp eq i32 %285, 0
  %287 = select i1 %286, ptr @.str.64, ptr @.str.35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %282, ptr noundef nonnull @.str.63, ptr noundef %283, i32 noundef %269, ptr noundef nonnull %3, i32 noundef %284, ptr noundef nonnull %287, i32 noundef %275) #17
  br label %288

288:                                              ; preds = %279, %266
  %289 = load ptr, ptr %148, align 4
  %290 = getelementptr i8, ptr %289, i32 4211856
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 -1073741824) #16, !srcloc !9
  %291 = load ptr, ptr %148, align 4
  %292 = getelementptr i8, ptr %291, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 128) #16, !srcloc !9
  %293 = and i32 %263, -129
  br label %294

294:                                              ; preds = %288, %262
  %295 = phi i32 [ %293, %288 ], [ %263, %262 ]
  %296 = and i32 %295, 256
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %319, label %298

298:                                              ; preds = %294
  %299 = load ptr, ptr %148, align 4
  %300 = getelementptr i8, ptr %299, i32 4223008
  %301 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %300) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %302 = and i32 %301, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @gk104_sked_error, i32 noundef %302) #16
  %303 = load i32, ptr %138, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %298
  %306 = load ptr, ptr %7, align 4
  %307 = getelementptr inbounds %struct.nvkm_device, ptr %306, i32 0, i32 2
  %308 = load ptr, ptr %307, align 8
  %309 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %308, ptr noundef nonnull @.str.65, ptr noundef %309, i32 noundef %302, ptr noundef nonnull %3) #17
  br label %310

310:                                              ; preds = %305, %298
  %311 = icmp eq i32 %302, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %310
  %313 = load ptr, ptr %148, align 4
  %314 = getelementptr i8, ptr %313, i32 4223008
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 1073741824) #16, !srcloc !9
  br label %315

315:                                              ; preds = %312, %310
  %316 = load ptr, ptr %148, align 4
  %317 = getelementptr i8, ptr %316, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 256) #16, !srcloc !9
  %318 = and i32 %295, -257
  br label %319

319:                                              ; preds = %315, %294
  %320 = phi i32 [ %318, %315 ], [ %295, %294 ]
  %321 = and i32 %320, 16777216
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %594, label %323

323:                                              ; preds = %319
  %324 = load ptr, ptr %148, align 4
  %325 = getelementptr i8, ptr %324, i32 4194584
  %326 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %325) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %327 = getelementptr i8, ptr %0, i32 1521
  %328 = icmp eq i32 %326, 0
  br i1 %328, label %590, label %329

329:                                              ; preds = %323
  %330 = getelementptr i8, ptr %0, i32 24
  br label %331

331:                                              ; preds = %586, %329
  %332 = phi i32 [ %326, %329 ], [ %587, %586 ]
  %333 = phi i32 [ 0, %329 ], [ %588, %586 ]
  %334 = load i8, ptr %327, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp ult i32 %333, %335
  br i1 %336, label %337, label %590

337:                                              ; preds = %331
  %338 = shl nuw i32 1, %333
  %339 = and i32 %338, %332
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %586, label %341

341:                                              ; preds = %337
  %342 = load ptr, ptr %7, align 4
  %343 = getelementptr inbounds %struct.nvkm_device, ptr %342, i32 0, i32 11
  %344 = load ptr, ptr %343, align 4
  %345 = shl i32 %333, 15
  %346 = add nuw nsw i32 %345, 5254288
  %347 = getelementptr i8, ptr %344, i32 %346
  %348 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %347) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %349 = and i32 %348, 1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %386, label %351

351:                                              ; preds = %341
  %352 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #16, !annotation !10
  %353 = getelementptr inbounds %struct.nvkm_device, ptr %352, i32 0, i32 11
  %354 = load ptr, ptr %353, align 4
  %355 = add nuw nsw i32 %345, 5243936
  %356 = getelementptr i8, ptr %354, i32 %355
  %357 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %356) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %358 = and i32 %357, 1073741823
  %359 = load ptr, ptr %353, align 4
  %360 = add nuw nsw i32 %345, 5243956
  %361 = getelementptr i8, ptr %359, i32 %360
  %362 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %361) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %363 = load ptr, ptr %353, align 4
  %364 = add nuw nsw i32 %345, 5243960
  %365 = getelementptr i8, ptr %363, i32 %364
  %366 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %365) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %367 = load ptr, ptr %353, align 4
  %368 = add nuw nsw i32 %345, 5243964
  %369 = getelementptr i8, ptr %367, i32 %368
  %370 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %369) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @gf100_gpc_rop_error, i32 noundef %358) #16
  %371 = load i32, ptr %138, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %382, label %373

373:                                              ; preds = %351
  %374 = load ptr, ptr %7, align 4
  %375 = getelementptr inbounds %struct.nvkm_device, ptr %374, i32 0, i32 2
  %376 = load ptr, ptr %375, align 8
  %377 = and i32 %362, 65535
  %378 = lshr i32 %362, 16
  %379 = lshr i32 %366, 8
  %380 = and i32 %379, 63
  %381 = and i32 %370, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %376, ptr noundef nonnull @.str.99, ptr noundef %330, i32 noundef %333, i32 noundef %358, ptr noundef nonnull %2, i32 noundef %377, i32 noundef %378, i32 noundef %380, i32 noundef %381) #17
  br label %382

382:                                              ; preds = %373, %351
  %383 = load ptr, ptr %353, align 4
  %384 = getelementptr i8, ptr %383, i32 %355
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 -1073741824) #16, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #16
  %385 = and i32 %348, -2
  br label %386

386:                                              ; preds = %382, %341
  %387 = phi i32 [ %385, %382 ], [ %348, %341 ]
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %405, label %390

390:                                              ; preds = %386
  %391 = load ptr, ptr %343, align 4
  %392 = add nuw nsw i32 %345, 5245184
  %393 = getelementptr i8, ptr %391, i32 %392
  %394 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %393) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %395 = load i32, ptr %138, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %390
  %398 = load ptr, ptr %7, align 4
  %399 = getelementptr inbounds %struct.nvkm_device, ptr %398, i32 0, i32 2
  %400 = load ptr, ptr %399, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %400, ptr noundef nonnull @.str.95, ptr noundef %330, i32 noundef %333, i32 noundef %394) #17
  br label %401

401:                                              ; preds = %397, %390
  %402 = load ptr, ptr %343, align 4
  %403 = getelementptr i8, ptr %402, i32 %392
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 -1073741824) #16, !srcloc !9
  %404 = and i32 %387, -3
  br label %405

405:                                              ; preds = %401, %386
  %406 = phi i32 [ %404, %401 ], [ %387, %386 ]
  %407 = and i32 %406, 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %424, label %409

409:                                              ; preds = %405
  %410 = load ptr, ptr %343, align 4
  %411 = add nuw nsw i32 %345, 5247016
  %412 = getelementptr i8, ptr %410, i32 %411
  %413 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %412) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %414 = load i32, ptr %138, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %420, label %416

416:                                              ; preds = %409
  %417 = load ptr, ptr %7, align 4
  %418 = getelementptr inbounds %struct.nvkm_device, ptr %417, i32 0, i32 2
  %419 = load ptr, ptr %418, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %419, ptr noundef nonnull @.str.96, ptr noundef %330, i32 noundef %333, i32 noundef %413) #17
  br label %420

420:                                              ; preds = %416, %409
  %421 = load ptr, ptr %343, align 4
  %422 = getelementptr i8, ptr %421, i32 %411
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %422, i32 -1073741824) #16, !srcloc !9
  %423 = and i32 %406, -5
  br label %424

424:                                              ; preds = %420, %405
  %425 = phi i32 [ %423, %420 ], [ %406, %405 ]
  %426 = and i32 %425, 8
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %443, label %428

428:                                              ; preds = %424
  %429 = load ptr, ptr %343, align 4
  %430 = add nuw nsw i32 %345, 5244964
  %431 = getelementptr i8, ptr %429, i32 %430
  %432 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %431) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %433 = load i32, ptr %138, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %439, label %435

435:                                              ; preds = %428
  %436 = load ptr, ptr %7, align 4
  %437 = getelementptr inbounds %struct.nvkm_device, ptr %436, i32 0, i32 2
  %438 = load ptr, ptr %437, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %438, ptr noundef nonnull @.str.97, ptr noundef %330, i32 noundef %333, i32 noundef %432) #17
  br label %439

439:                                              ; preds = %435, %428
  %440 = load ptr, ptr %343, align 4
  %441 = getelementptr i8, ptr %440, i32 %430
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 -1073741824) #16, !srcloc !9
  %442 = and i32 %425, -10
  br label %443

443:                                              ; preds = %439, %424
  %444 = phi i32 [ %442, %439 ], [ %425, %424 ]
  %445 = getelementptr %struct.gf100_gr, ptr %6, i32 0, i32 14, i32 %333
  %446 = load i8, ptr %445, align 1
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %571, label %448

448:                                              ; preds = %443
  %449 = add nuw nsw i32 %345, 5259264
  br label %450

450:                                              ; preds = %565, %448
  %451 = phi i8 [ %446, %448 ], [ %566, %565 ]
  %452 = phi i32 [ 0, %448 ], [ %568, %565 ]
  %453 = phi i32 [ %444, %448 ], [ %567, %565 ]
  %454 = shl i32 65536, %452
  %455 = and i32 %454, %453
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %565, label %457

457:                                              ; preds = %450
  %458 = load ptr, ptr %7, align 4
  %459 = getelementptr inbounds %struct.nvkm_device, ptr %458, i32 0, i32 11
  %460 = load ptr, ptr %459, align 4
  %461 = shl i32 %452, 11
  %462 = add nuw nsw i32 %449, %461
  %463 = or i32 %462, 1288
  %464 = getelementptr i8, ptr %460, i32 %463
  %465 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %464) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %466 = and i32 %465, 1
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %483, label %468

468:                                              ; preds = %457
  %469 = load ptr, ptr %459, align 4
  %470 = or i32 %462, 548
  %471 = getelementptr i8, ptr %469, i32 %470
  %472 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %471) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %473 = load i32, ptr %138, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %479, label %475

475:                                              ; preds = %468
  %476 = load ptr, ptr %7, align 4
  %477 = getelementptr inbounds %struct.nvkm_device, ptr %476, i32 0, i32 2
  %478 = load ptr, ptr %477, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %478, ptr noundef nonnull @.str.106, ptr noundef %330, i32 noundef %333, i32 noundef %452, i32 noundef %472) #17
  br label %479

479:                                              ; preds = %475, %468
  %480 = load ptr, ptr %459, align 4
  %481 = getelementptr i8, ptr %480, i32 %470
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %481, i32 -1073741824) #16, !srcloc !9
  %482 = and i32 %465, -2
  br label %483

483:                                              ; preds = %479, %457
  %484 = phi i32 [ %482, %479 ], [ %465, %457 ]
  %485 = and i32 %484, 2
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %483
  %488 = load ptr, ptr %6, align 4
  %489 = getelementptr inbounds %struct.gf100_gr_func, ptr %488, i32 0, i32 27
  %490 = load ptr, ptr %489, align 4
  call void %490(ptr noundef %6, i32 noundef %333, i32 noundef %452) #16
  %491 = and i32 %484, -3
  br label %492

492:                                              ; preds = %487, %483
  %493 = phi i32 [ %491, %487 ], [ %484, %483 ]
  %494 = and i32 %493, 4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %511, label %496

496:                                              ; preds = %492
  %497 = load ptr, ptr %459, align 4
  %498 = or i32 %462, 132
  %499 = getelementptr i8, ptr %497, i32 %498
  %500 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %499) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %501 = load i32, ptr %138, align 4
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %507, label %503

503:                                              ; preds = %496
  %504 = load ptr, ptr %7, align 4
  %505 = getelementptr inbounds %struct.nvkm_device, ptr %504, i32 0, i32 2
  %506 = load ptr, ptr %505, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %506, ptr noundef nonnull @.str.107, ptr noundef %330, i32 noundef %333, i32 noundef %452, i32 noundef %500) #17
  br label %507

507:                                              ; preds = %503, %496
  %508 = load ptr, ptr %459, align 4
  %509 = getelementptr i8, ptr %508, i32 %498
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %509, i32 -1073741824) #16, !srcloc !9
  %510 = and i32 %493, -5
  br label %511

511:                                              ; preds = %507, %492
  %512 = phi i32 [ %510, %507 ], [ %493, %492 ]
  %513 = and i32 %512, 8
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %530, label %515

515:                                              ; preds = %511
  %516 = load ptr, ptr %459, align 4
  %517 = or i32 %462, 1164
  %518 = getelementptr i8, ptr %516, i32 %517
  %519 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %518) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %520 = load i32, ptr %138, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %526, label %522

522:                                              ; preds = %515
  %523 = load ptr, ptr %7, align 4
  %524 = getelementptr inbounds %struct.nvkm_device, ptr %523, i32 0, i32 2
  %525 = load ptr, ptr %524, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %525, ptr noundef nonnull @.str.108, ptr noundef %330, i32 noundef %333, i32 noundef %452, i32 noundef %519) #17
  br label %526

526:                                              ; preds = %522, %515
  %527 = load ptr, ptr %459, align 4
  %528 = getelementptr i8, ptr %527, i32 %517
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %528, i32 -1073741824) #16, !srcloc !9
  %529 = and i32 %512, -9
  br label %530

530:                                              ; preds = %526, %511
  %531 = phi i32 [ %529, %526 ], [ %512, %511 ]
  %532 = and i32 %531, 16
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %549, label %534

534:                                              ; preds = %530
  %535 = load ptr, ptr %459, align 4
  %536 = or i32 %462, 1072
  %537 = getelementptr i8, ptr %535, i32 %536
  %538 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %537) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %539 = load i32, ptr %138, align 4
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %545, label %541

541:                                              ; preds = %534
  %542 = load ptr, ptr %7, align 4
  %543 = getelementptr inbounds %struct.nvkm_device, ptr %542, i32 0, i32 2
  %544 = load ptr, ptr %543, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %544, ptr noundef nonnull @.str.109, ptr noundef %330, i32 noundef %333, i32 noundef %452, i32 noundef %538) #17
  br label %545

545:                                              ; preds = %541, %534
  %546 = load ptr, ptr %459, align 4
  %547 = getelementptr i8, ptr %546, i32 %536
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %547, i32 -1073741824) #16, !srcloc !9
  %548 = and i32 %531, -17
  br label %549

549:                                              ; preds = %545, %530
  %550 = phi i32 [ %548, %545 ], [ %531, %530 ]
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %559, label %552

552:                                              ; preds = %549
  %553 = load i32, ptr %138, align 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %559, label %555

555:                                              ; preds = %552
  %556 = load ptr, ptr %7, align 4
  %557 = getelementptr inbounds %struct.nvkm_device, ptr %556, i32 0, i32 2
  %558 = load ptr, ptr %557, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %558, ptr noundef nonnull @.str.110, ptr noundef %330, i32 noundef %333, i32 noundef %452, i32 noundef %550) #17
  br label %559

559:                                              ; preds = %555, %552, %549
  %560 = load ptr, ptr %343, align 4
  %561 = getelementptr i8, ptr %560, i32 %346
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %561, i32 %454) #16, !srcloc !9
  %562 = xor i32 %454, -1
  %563 = and i32 %453, %562
  %564 = load i8, ptr %445, align 1
  br label %565

565:                                              ; preds = %559, %450
  %566 = phi i8 [ %564, %559 ], [ %451, %450 ]
  %567 = phi i32 [ %563, %559 ], [ %453, %450 ]
  %568 = add nuw nsw i32 %452, 1
  %569 = zext i8 %566 to i32
  %570 = icmp ult i32 %568, %569
  br i1 %570, label %450, label %571

571:                                              ; preds = %565, %443
  %572 = phi i32 [ %444, %443 ], [ %567, %565 ]
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %581, label %574

574:                                              ; preds = %571
  %575 = load i32, ptr %138, align 4
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %581, label %577

577:                                              ; preds = %574
  %578 = load ptr, ptr %7, align 4
  %579 = getelementptr inbounds %struct.nvkm_device, ptr %578, i32 0, i32 2
  %580 = load ptr, ptr %579, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %580, ptr noundef nonnull @.str.98, ptr noundef %330, i32 noundef %333, i32 noundef %572) #17
  br label %581

581:                                              ; preds = %577, %574, %571
  %582 = load ptr, ptr %148, align 4
  %583 = getelementptr i8, ptr %582, i32 4194584
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %583, i32 %338) #16, !srcloc !9
  %584 = xor i32 %338, -1
  %585 = and i32 %332, %584
  br label %586

586:                                              ; preds = %581, %337
  %587 = phi i32 [ %585, %581 ], [ %332, %337 ]
  %588 = add nuw nsw i32 %333, 1
  %589 = icmp eq i32 %587, 0
  br i1 %589, label %590, label %331

590:                                              ; preds = %586, %331, %323
  %591 = load ptr, ptr %148, align 4
  %592 = getelementptr i8, ptr %591, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %592, i32 16777216) #16, !srcloc !9
  %593 = and i32 %320, -16777217
  br label %594

594:                                              ; preds = %590, %319
  %595 = phi i32 [ %593, %590 ], [ %320, %319 ]
  %596 = and i32 %595, 33554432
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %634, label %598

598:                                              ; preds = %594
  %599 = getelementptr i8, ptr %0, i32 1520
  %600 = load i8, ptr %599, align 4
  %601 = icmp eq i8 %600, 0
  br i1 %601, label %630, label %602

602:                                              ; preds = %598
  %603 = getelementptr i8, ptr %0, i32 24
  br label %604

604:                                              ; preds = %621, %602
  %605 = phi i32 [ 0, %602 ], [ %626, %621 ]
  %606 = load ptr, ptr %148, align 4
  %607 = shl i32 %605, 10
  %608 = add nuw nsw i32 %607, 4259952
  %609 = getelementptr i8, ptr %606, i32 %608
  %610 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %611 = load ptr, ptr %148, align 4
  %612 = add nuw nsw i32 %607, 4260164
  %613 = getelementptr i8, ptr %611, i32 %612
  %614 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %613) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %615 = load i32, ptr %138, align 4
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %621, label %617

617:                                              ; preds = %604
  %618 = load ptr, ptr %7, align 4
  %619 = getelementptr inbounds %struct.nvkm_device, ptr %618, i32 0, i32 2
  %620 = load ptr, ptr %619, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %620, ptr noundef nonnull @.str.66, ptr noundef %603, i32 noundef %605, i32 noundef %610, i32 noundef %614) #17
  br label %621

621:                                              ; preds = %617, %604
  %622 = load ptr, ptr %148, align 4
  %623 = getelementptr i8, ptr %622, i32 %608
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %623, i32 -1073741824) #16, !srcloc !9
  %624 = load ptr, ptr %148, align 4
  %625 = getelementptr i8, ptr %624, i32 %612
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %625, i32 -1073741824) #16, !srcloc !9
  %626 = add nuw nsw i32 %605, 1
  %627 = load i8, ptr %599, align 4
  %628 = zext i8 %627 to i32
  %629 = icmp ult i32 %626, %628
  br i1 %629, label %604, label %630

630:                                              ; preds = %621, %598
  %631 = load ptr, ptr %148, align 4
  %632 = getelementptr i8, ptr %631, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %632, i32 33554432) #16, !srcloc !9
  %633 = and i32 %595, -33554433
  br label %634

634:                                              ; preds = %630, %594
  %635 = phi i32 [ %633, %630 ], [ %595, %594 ]
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %648, label %637

637:                                              ; preds = %634
  %638 = load i32, ptr %138, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %645, label %640

640:                                              ; preds = %637
  %641 = load ptr, ptr %7, align 4
  %642 = getelementptr inbounds %struct.nvkm_device, ptr %641, i32 0, i32 2
  %643 = load ptr, ptr %642, align 8
  %644 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %643, ptr noundef nonnull @.str.67, ptr noundef %644, i32 noundef %635) #17
  br label %645

645:                                              ; preds = %640, %637
  %646 = load ptr, ptr %148, align 4
  %647 = getelementptr i8, ptr %646, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %647, i32 %635) #16, !srcloc !9
  br label %648

648:                                              ; preds = %645, %634
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #16
  %649 = load ptr, ptr %9, align 4
  %650 = getelementptr i8, ptr %649, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %650, i32 2097152) #16, !srcloc !9
  %651 = and i32 %134, -2097153
  br label %652

652:                                              ; preds = %648, %133
  %653 = phi i32 [ %651, %648 ], [ %134, %133 ]
  %654 = and i32 %653, 524288
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %775, label %656

656:                                              ; preds = %652
  %657 = load ptr, ptr %7, align 4
  %658 = getelementptr inbounds %struct.nvkm_device, ptr %657, i32 0, i32 11
  %659 = load ptr, ptr %658, align 4
  %660 = getelementptr i8, ptr %659, i32 4234264
  %661 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %660) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %662 = getelementptr i8, ptr %0, i32 540
  %663 = load i8, ptr %662, align 4, !range !13
  %664 = icmp ne i8 %663, 0
  %665 = and i32 %661, 1
  %666 = icmp eq i32 %665, 0
  %667 = select i1 %664, i1 true, i1 %666
  br i1 %667, label %708, label %668

668:                                              ; preds = %656
  %669 = load ptr, ptr %658, align 4
  %670 = getelementptr i8, ptr %669, i32 4233236
  %671 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %670) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %672 = icmp eq i32 %671, 3
  br i1 %672, label %673, label %694

673:                                              ; preds = %668
  %674 = load ptr, ptr %658, align 4
  %675 = getelementptr i8, ptr %674, i32 4233224
  %676 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %675) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %677 = load ptr, ptr %658, align 4
  %678 = getelementptr i8, ptr %677, i32 4233228
  %679 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %678) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %680 = load ptr, ptr %658, align 4
  %681 = getelementptr i8, ptr %680, i32 4233232
  %682 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %681) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %683 = getelementptr i8, ptr %0, i32 40
  %684 = load i32, ptr %683, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %703, label %686

686:                                              ; preds = %673
  %687 = and i32 %679, 16380
  %688 = lshr i32 %679, 16
  %689 = and i32 %688, 7
  %690 = load ptr, ptr %7, align 4
  %691 = getelementptr inbounds %struct.nvkm_device, ptr %690, i32 0, i32 2
  %692 = load ptr, ptr %691, align 8
  %693 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %692, ptr noundef nonnull @.str.111, ptr noundef %693, i32 noundef %689, i32 noundef %676, i32 noundef %687, i32 noundef %682) #17
  br label %703

694:                                              ; preds = %668
  %695 = getelementptr i8, ptr %0, i32 40
  %696 = load i32, ptr %695, align 4
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %703, label %698

698:                                              ; preds = %694
  %699 = load ptr, ptr %7, align 4
  %700 = getelementptr inbounds %struct.nvkm_device, ptr %699, i32 0, i32 2
  %701 = load ptr, ptr %700, align 8
  %702 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %701, ptr noundef nonnull @.str.112, ptr noundef %702, i32 noundef %671) #17
  br label %703

703:                                              ; preds = %698, %694, %686, %673
  %704 = load ptr, ptr %658, align 4
  %705 = getelementptr i8, ptr %704, i32 4234272
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %705, i32 1) #16, !srcloc !9
  %706 = and i32 %661, -2
  %707 = load i8, ptr %662, align 4, !range !13
  br label %708

708:                                              ; preds = %703, %656
  %709 = phi i8 [ %663, %656 ], [ %707, %703 ]
  %710 = phi i32 [ %661, %656 ], [ %706, %703 ]
  %711 = icmp ne i8 %709, 0
  %712 = and i32 %710, 524288
  %713 = icmp eq i32 %712, 0
  %714 = select i1 %711, i1 true, i1 %713
  br i1 %714, label %742, label %715

715:                                              ; preds = %708
  %716 = getelementptr i8, ptr %0, i32 40
  %717 = load i32, ptr %716, align 4
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %724, label %719

719:                                              ; preds = %715
  %720 = load ptr, ptr %7, align 4
  %721 = getelementptr inbounds %struct.nvkm_device, ptr %720, i32 0, i32 2
  %722 = load ptr, ptr %721, align 8
  %723 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %722, ptr noundef nonnull @.str.113, ptr noundef %723) #17
  br label %724

724:                                              ; preds = %719, %715
  %725 = load ptr, ptr %7, align 4
  %726 = getelementptr inbounds %struct.nvkm_device, ptr %725, i32 0, i32 11
  %727 = load ptr, ptr %726, align 4
  %728 = getelementptr i8, ptr %727, i32 4232708
  %729 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %728) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %730 = and i32 %729, 65535
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %6, i32 noundef 4231168) #16
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %738, label %732

732:                                              ; preds = %732, %724
  %733 = phi i32 [ %736, %732 ], [ 0, %724 ]
  %734 = shl i32 %733, 15
  %735 = add nuw i32 %734, 5251072
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %6, i32 noundef %735) #16
  %736 = add nuw nsw i32 %733, 1
  %737 = icmp eq i32 %736, %730
  br i1 %737, label %738, label %732

738:                                              ; preds = %732, %724
  %739 = load ptr, ptr %658, align 4
  %740 = getelementptr i8, ptr %739, i32 4234272
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %740, i32 524288) #16, !srcloc !9
  %741 = and i32 %710, -524289
  br label %742

742:                                              ; preds = %738, %708
  %743 = phi i32 [ %710, %708 ], [ %741, %738 ]
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %771, label %745

745:                                              ; preds = %742
  %746 = getelementptr i8, ptr %0, i32 40
  %747 = load i32, ptr %746, align 4
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %754, label %749

749:                                              ; preds = %745
  %750 = load ptr, ptr %7, align 4
  %751 = getelementptr inbounds %struct.nvkm_device, ptr %750, i32 0, i32 2
  %752 = load ptr, ptr %751, align 8
  %753 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %752, ptr noundef nonnull @.str.114, ptr noundef %753, i32 noundef %743) #17
  br label %754

754:                                              ; preds = %749, %745
  %755 = load ptr, ptr %7, align 4
  %756 = getelementptr inbounds %struct.nvkm_device, ptr %755, i32 0, i32 11
  %757 = load ptr, ptr %756, align 4
  %758 = getelementptr i8, ptr %757, i32 4232708
  %759 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %758) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %760 = and i32 %759, 65535
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %6, i32 noundef 4231168) #16
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %768, label %762

762:                                              ; preds = %762, %754
  %763 = phi i32 [ %766, %762 ], [ 0, %754 ]
  %764 = shl i32 %763, 15
  %765 = add nuw i32 %764, 5251072
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %6, i32 noundef %765) #16
  %766 = add nuw nsw i32 %763, 1
  %767 = icmp eq i32 %766, %760
  br i1 %767, label %768, label %762

768:                                              ; preds = %762, %754
  %769 = load ptr, ptr %658, align 4
  %770 = getelementptr i8, ptr %769, i32 4234272
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %770, i32 %743) #16, !srcloc !9
  br label %771

771:                                              ; preds = %768, %742
  %772 = load ptr, ptr %9, align 4
  %773 = getelementptr i8, ptr %772, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %773, i32 524288) #16, !srcloc !9
  %774 = and i32 %653, -524289
  br label %775

775:                                              ; preds = %771, %652
  %776 = phi i32 [ %774, %771 ], [ %653, %652 ]
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %790, label %778

778:                                              ; preds = %775
  %779 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %780 = load i32, ptr %779, align 4
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %787, label %782

782:                                              ; preds = %778
  %783 = load ptr, ptr %7, align 4
  %784 = getelementptr inbounds %struct.nvkm_device, ptr %783, i32 0, i32 2
  %785 = load ptr, ptr %784, align 8
  %786 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %785, ptr noundef nonnull @.str.57, ptr noundef %786, i32 noundef %776) #17
  br label %787

787:                                              ; preds = %782, %778
  %788 = load ptr, ptr %9, align 4
  %789 = getelementptr i8, ptr %788, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %789, i32 %776) #16, !srcloc !9
  br label %790

790:                                              ; preds = %787, %775
  %791 = load ptr, ptr %9, align 4
  %792 = getelementptr i8, ptr %791, i32 4195584
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %792, i32 65537) #16, !srcloc !9
  %793 = load ptr, ptr %30, align 8
  %794 = load i32, ptr %5, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %793, i32 noundef %794, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_chan_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.gf100_vmm_map_v0, align 1
  %6 = getelementptr i8, ptr %0, i32 2648
  %7 = getelementptr i8, ptr %0, i32 2696
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @__const.gf100_gr_chan_new.args, i32 5, i1 false)
  %8 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 128) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %141, label %13

13:                                               ; preds = %4
  %14 = getelementptr i8, ptr %0, i32 -4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @gf100_gr_chan, ptr noundef %2, ptr noundef nonnull %11) #16
  %15 = getelementptr inbounds %struct.gf100_gr_chan, ptr %11, i32 0, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @nvkm_vmm_ref(ptr noundef %17) #16
  %19 = getelementptr inbounds %struct.gf100_gr_chan, ptr %11, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  store ptr %11, ptr %3, align 4
  %20 = getelementptr inbounds %struct.gf100_gr_chan, ptr %11, i32 0, i32 3
  %21 = tail call i32 @nvkm_memory_new(ptr noundef %9, i32 noundef 0, i64 noundef 4096, i32 noundef 256, i1 noundef zeroext false, ptr noundef %20) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %141

23:                                               ; preds = %13
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr inbounds %struct.gf100_gr_chan, ptr %11, i32 0, i32 4
  %26 = tail call i32 @nvkm_vmm_get(ptr noundef %24, i8 noundef zeroext 12, i64 noundef 4096, ptr noundef %25) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %141

28:                                               ; preds = %23
  %29 = load ptr, ptr %20, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_memory_func, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %16, align 4
  %34 = load ptr, ptr %25, align 4
  %35 = call i32 %32(ptr noundef %29, i64 noundef 0, ptr noundef %33, ptr noundef %34, ptr noundef nonnull %5, i32 noundef 5) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %141

37:                                               ; preds = %28
  %38 = load i32, ptr %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %80, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %5, i32 0, i32 3
  br label %42

42:                                               ; preds = %73, %40
  %43 = phi i32 [ %38, %40 ], [ %76, %73 ]
  %44 = phi i32 [ 0, %40 ], [ %75, %73 ]
  %45 = phi ptr [ %6, %40 ], [ %74, %73 ]
  %46 = zext i32 %43 to i64
  %47 = getelementptr inbounds %struct.gf100_gr_data, ptr %45, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.gf100_gr_chan, ptr %11, i32 0, i32 6, i32 %44
  %50 = call i32 @nvkm_memory_new(ptr noundef %9, i32 noundef 0, i64 noundef %46, i32 noundef %48, i1 noundef zeroext false, ptr noundef %49) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %141

52:                                               ; preds = %42
  %53 = load ptr, ptr %16, align 4
  %54 = load ptr, ptr %49, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_memory_func, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = call i64 %57(ptr noundef %54) #16
  %59 = getelementptr %struct.gf100_gr_chan, ptr %11, i32 0, i32 6, i32 %44, i32 1
  %60 = call i32 @nvkm_vmm_get(ptr noundef %53, i8 noundef zeroext 12, i64 noundef %58, ptr noundef %59) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %141

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.gf100_gr_data, ptr %45, i32 0, i32 2
  %64 = load i8, ptr %63, align 4, !range !13
  store i8 %64, ptr %41, align 1
  %65 = load ptr, ptr %49, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_memory_func, ptr %66, i32 0, i32 9
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %19, align 4
  %70 = load ptr, ptr %59, align 8
  %71 = call i32 %68(ptr noundef %65, i64 noundef 0, ptr noundef %69, ptr noundef %70, ptr noundef nonnull %5, i32 noundef 5) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %141

73:                                               ; preds = %62
  %74 = getelementptr %struct.gf100_gr_data, ptr %45, i32 1
  %75 = add nuw nsw i32 %44, 1
  %76 = load i32, ptr %74, align 4
  %77 = icmp ne i32 %76, 0
  %78 = icmp ult i32 %44, 3
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %42, label %80

80:                                               ; preds = %73, %37
  %81 = load ptr, ptr %20, align 8
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_memory_func, ptr %82, i32 0, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = call ptr %84(ptr noundef %81) #16
  %86 = load i32, ptr %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %136, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.gf100_gr_chan, ptr %11, i32 0, i32 5
  br label %90

90:                                               ; preds = %110, %88
  %91 = phi i32 [ %86, %88 ], [ %132, %110 ]
  %92 = phi i32 [ 0, %88 ], [ %131, %110 ]
  %93 = phi ptr [ %7, %88 ], [ %130, %110 ]
  %94 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %93, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %110

99:                                               ; preds = %90
  %100 = getelementptr %struct.gf100_gr_chan, ptr %11, i32 0, i32 6, i32 %97, i32 1
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nvkm_vma, ptr %101, i32 0, i32 2
  %103 = load i64, ptr %102, align 8
  %104 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %93, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = zext i32 %105 to i64
  %107 = lshr i64 %103, %106
  %108 = trunc i64 %107 to i32
  %109 = or i32 %95, %108
  br label %110

110:                                              ; preds = %99, %90
  %111 = phi i32 [ %109, %99 ], [ %95, %90 ]
  %112 = load ptr, ptr %20, align 8
  %113 = getelementptr inbounds %struct.nvkm_memory, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %89, align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr %89, align 8
  %119 = shl i32 %117, 2
  %120 = sext i32 %119 to i64
  call void %116(ptr noundef %112, i64 noundef %120, i32 noundef %91) #16
  %121 = load ptr, ptr %20, align 8
  %122 = getelementptr inbounds %struct.nvkm_memory, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %89, align 8
  %127 = add i32 %126, 1
  store i32 %127, ptr %89, align 8
  %128 = shl i32 %126, 2
  %129 = sext i32 %128 to i64
  call void %125(ptr noundef %121, i64 noundef %129, i32 noundef %111) #16
  %130 = getelementptr %struct.gf100_gr_mmio, ptr %93, i32 1
  %131 = add nuw nsw i32 %92, 1
  %132 = load i32, ptr %130, align 4
  %133 = icmp ne i32 %132, 0
  %134 = icmp ult i32 %92, 511
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %90, label %136

136:                                              ; preds = %110, %80
  %137 = load ptr, ptr %20, align 8
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nvkm_memory_func, ptr %138, i32 0, i32 8
  %140 = load ptr, ptr %139, align 4
  call void %140(ptr noundef %137) #16
  br label %141

141:                                              ; preds = %136, %62, %52, %42, %28, %23, %13, %4
  %142 = phi i32 [ 0, %136 ], [ -12, %4 ], [ %21, %13 ], [ %26, %23 ], [ %35, %28 ], [ %71, %62 ], [ %60, %52 ], [ %50, %42 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %5) #16
  ret i32 %142
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_object_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %8 = getelementptr %struct.gf100_gr_func, ptr %5, i32 0, i32 39, i32 %7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  %13 = icmp eq i32 %7, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %11
  %15 = getelementptr %struct.gf100_gr_func, ptr %5, i32 0, i32 39, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %2, ptr noundef align 4 dereferenceable(20) %15, i32 16, i1 false)
  %16 = getelementptr inbounds %struct.nvkm_sclass, ptr %2, i32 0, i32 4
  store ptr @gf100_gr_object_new, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %1, %14 ], [ %7, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @gf100_gr_chsw_load(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 540
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  br i1 %4, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %8, i32 4233244
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %20

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %8, i32 4233224
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  %17 = and i32 %16, 524288
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %19, %14, %9
  %21 = phi i1 [ false, %19 ], [ true, %14 ], [ true, %9 ]
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_fecs_stop_ctxsw(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 304
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr i8, ptr %0, i32 324
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = tail call fastcc i32 @gf100_gr_fecs_ctrl_ctxsw(ptr noundef %8, i32 noundef 56)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !14

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 767, i32 noundef 9, ptr noundef null) #16
  %12 = load i32, ptr %3, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %3, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i32 [ 0, %1 ], [ %9, %11 ], [ 0, %7 ]
  tail call void @mutex_unlock(ptr noundef %2) #16
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_fecs_start_ctxsw(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 304
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr i8, ptr %0, i32 324
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = tail call fastcc i32 @gf100_gr_fecs_ctrl_ctxsw(ptr noundef %8, i32 noundef 57)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !14

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 752, i32 noundef 9, ptr noundef null) #16
  %12 = load i32, ptr %3, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %3, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i32 [ 0, %1 ], [ %9, %11 ], [ 0, %7 ]
  tail call void @mutex_unlock(ptr noundef %2) #16
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_ctxsw_inst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4233984
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_pmu_pgob(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gf100_gr_chan_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 0
  %5 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 0, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %3, ptr noundef %5) #16
  tail call void @nvkm_memory_unref(ptr noundef %4) #16
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 1
  %8 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 1, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %6, ptr noundef %8) #16
  tail call void @nvkm_memory_unref(ptr noundef %7) #16
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 2
  %11 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 2, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %9, ptr noundef %11) #16
  tail call void @nvkm_memory_unref(ptr noundef %10) #16
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 3
  %14 = getelementptr %struct.gf100_gr_chan, ptr %0, i32 0, i32 6, i32 3, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %12, ptr noundef %14) #16
  tail call void @nvkm_memory_unref(ptr noundef %13) #16
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 4
  tail call void @nvkm_vmm_put(ptr noundef %15, ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %17) #16
  tail call void @nvkm_vmm_unref(ptr noundef %2) #16
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_chan_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gf100_gr, ptr %6, i32 0, i32 1, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gf100_gr, ptr %6, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef %10, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %108

13:                                               ; preds = %4
  %14 = load ptr, ptr %3, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %14) #16
  %18 = load i32, ptr %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gf100_gr, ptr %6, i32 0, i32 30
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %32, %22 ]
  %24 = load ptr, ptr %3, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %21, align 4
  %29 = sdiv i32 %23, 4
  %30 = getelementptr i32, ptr %28, i32 %29
  %31 = load i32, ptr %30, align 4
  tail call void %27(ptr noundef %24, i32 noundef %23, i32 noundef %31) #16
  %32 = add i32 %23, 4
  %33 = load i32, ptr %9, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %22, label %35

35:                                               ; preds = %22, %13
  %36 = getelementptr inbounds %struct.gf100_gr, ptr %6, i32 0, i32 4
  %37 = load i8, ptr %36, align 4, !range !13
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr %3, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  br i1 %38, label %43, label %57

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = sdiv i32 %45, 2
  tail call void %42(ptr noundef %39, i32 noundef 0, i32 noundef %46) #16
  %47 = load ptr, ptr %3, align 4
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_vma, ptr %52, i32 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = lshr i64 %54, 8
  %56 = trunc i64 %55 to i32
  tail call void %50(ptr noundef %47, i32 noundef 4, i32 noundef %56) #16
  br label %103

57:                                               ; preds = %35
  tail call void %42(ptr noundef %39, i32 noundef 244, i32 noundef 0) #16
  %58 = load ptr, ptr %3, align 4
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %58, i32 noundef 248, i32 noundef 0) #16
  %62 = load ptr, ptr %3, align 4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 5
  %67 = load i32, ptr %66, align 8
  %68 = sdiv i32 %67, 2
  tail call void %65(ptr noundef %62, i32 noundef 16, i32 noundef %68) #16
  %69 = load ptr, ptr %3, align 4
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.gf100_gr_chan, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nvkm_vma, ptr %74, i32 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i32
  tail call void %72(ptr noundef %69, i32 noundef 20, i32 noundef %77) #16
  %78 = load ptr, ptr %3, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %73, align 4
  %83 = getelementptr inbounds %struct.nvkm_vma, ptr %82, i32 0, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = lshr i64 %84, 32
  %86 = trunc i64 %85 to i32
  tail call void %81(ptr noundef %78, i32 noundef 24, i32 noundef %86) #16
  %87 = load ptr, ptr %3, align 4
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %87, i32 noundef 28, i32 noundef 1) #16
  %91 = load ptr, ptr %3, align 4
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %91, i32 noundef 32, i32 noundef 0) #16
  %95 = load ptr, ptr %3, align 4
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %95, i32 noundef 40, i32 noundef 0) #16
  %99 = load ptr, ptr %3, align 4
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef %99, i32 noundef 44, i32 noundef 0) #16
  br label %103

103:                                              ; preds = %57, %43
  %104 = load ptr, ptr %3, align 4
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void %107(ptr noundef %104) #16
  br label %108

108:                                              ; preds = %103, %4
  %109 = phi i32 [ 0, %103 ], [ %11, %4 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_gr_object_new(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 80) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  store ptr %8, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @gf100_gr_object_func, ptr %12
  tail call void @nvkm_object_ctor(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %8) #16
  %15 = getelementptr inbounds %struct.gf100_gr_object, ptr %8, i32 0, i32 1
  store ptr %6, ptr %15, align 8
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ 0, %10 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_fecs_ctrl_ctxsw(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4233220
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #16, !srcloc !9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 4233280
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #16, !srcloc !9
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 4232448
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #16, !srcloc !9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 4232452
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !8
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %1) #16, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #16
  br label %15

15:                                               ; preds = %19, %2
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 4233220
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #16, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !12
  switch i32 %18, label %19 [
    i32 2, label %39
    i32 1, label %40
  ]

19:                                               ; preds = %15
  %20 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #16
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %15, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_timer, ptr %23, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = call ptr @dev_driver_string(ptr noundef %27) #16
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_timer, ptr %29, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load ptr, ptr %33, align 4
  br label %42

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39, %15
  %41 = phi i32 [ -5, %39 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  br label %44

42:                                               ; preds = %37, %22
  %43 = phi ptr [ %38, %37 ], [ %35, %22 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 739, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %28, ptr noundef %43) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ -110, %42 ], [ %41, %40 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_bind_context(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }

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
!8 = !{i64 2151565047}
!9 = !{i64 4023954}
!10 = !{!"auto-init"}
!11 = !{i64 4024372}
!12 = !{i64 2151563825}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 2000, i32 1}
