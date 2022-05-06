; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/coregv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.136 = type { ptr, i32, ptr }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.137, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.137 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.133, %struct.anon.133, %struct.anon.133, %struct.anon.134, %struct.anon.135, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.133 = type { i32, i32 }
%struct.anon.134 = type { i32, i32, i32 }
%struct.anon.135 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@gv100_disp_core_mthd_base = dso_local constant { i32, i32, [8 x %struct.anon] } { i32 0, i32 0, [8 x %struct.anon] [%struct.anon { i32 512, i32 6816256, ptr null }, %struct.anon { i32 520, i32 6816264, ptr null }, %struct.anon { i32 524, i32 6816268, ptr null }, %struct.anon { i32 528, i32 6816272, ptr null }, %struct.anon { i32 532, i32 6816276, ptr null }, %struct.anon { i32 536, i32 6816280, ptr null }, %struct.anon { i32 540, i32 6816284, ptr null }, %struct.anon zeroinitializer] }, align 4
@gv100_disp_core_mthd_sor = dso_local constant { i32, i32, [5 x %struct.anon] } { i32 32, i32 32, [5 x %struct.anon] [%struct.anon { i32 768, i32 6816512, ptr null }, %struct.anon { i32 772, i32 6816516, ptr null }, %struct.anon { i32 776, i32 6816520, ptr null }, %struct.anon { i32 780, i32 6816524, ptr null }, %struct.anon zeroinitializer] }, align 4
@gv100_disp_core = internal constant %struct.nv50_disp_chan_func { ptr @gv100_disp_core_init, ptr @gv100_disp_core_fini, ptr @gv100_disp_core_intr, ptr @gv100_disp_core_user, ptr @gv100_disp_dmac_bind }, align 4
@.str = private unnamed_addr constant [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/coregv100.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"SOR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"WINDOW\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@gv100_disp_core_mthd = internal constant { ptr, i32, i32, [5 x %struct.anon.136] } { ptr @.str.2, i32 0, i32 32768, [5 x %struct.anon.136] [%struct.anon.136 { ptr @.str.3, i32 1, ptr @gv100_disp_core_mthd_base }, %struct.anon.136 { ptr @.str.4, i32 4, ptr @gv100_disp_core_mthd_sor }, %struct.anon.136 { ptr @.str.5, i32 8, ptr @gv100_disp_core_mthd_wndw }, %struct.anon.136 { ptr @.str.6, i32 4, ptr @gv100_disp_core_mthd_head }, %struct.anon.136 zeroinitializer] }, align 4
@gv100_disp_core_mthd_wndw = internal constant { i32, i32, [6 x %struct.anon] } { i32 128, i32 128, [6 x %struct.anon] [%struct.anon { i32 4096, i32 6819840, ptr null }, %struct.anon { i32 4100, i32 6819844, ptr null }, %struct.anon { i32 4104, i32 6819848, ptr null }, %struct.anon { i32 4108, i32 6819852, ptr null }, %struct.anon { i32 4112, i32 6819856, ptr null }, %struct.anon zeroinitializer] }, align 4
@gv100_disp_core_mthd_head = internal constant { i32, i32, [46 x %struct.anon] } { i32 1024, i32 1024, [46 x %struct.anon] [%struct.anon { i32 8192, i32 6823936, ptr null }, %struct.anon { i32 8196, i32 6823940, ptr null }, %struct.anon { i32 8200, i32 6823944, ptr null }, %struct.anon { i32 8204, i32 6823948, ptr null }, %struct.anon { i32 8212, i32 6823956, ptr null }, %struct.anon { i32 8216, i32 6823960, ptr null }, %struct.anon { i32 8220, i32 6823964, ptr null }, %struct.anon { i32 8224, i32 6823968, ptr null }, %struct.anon { i32 8232, i32 6823976, ptr null }, %struct.anon { i32 8236, i32 6823980, ptr null }, %struct.anon { i32 8240, i32 6823984, ptr null }, %struct.anon { i32 8248, i32 6823992, ptr null }, %struct.anon { i32 8252, i32 6823996, ptr null }, %struct.anon { i32 8264, i32 6824008, ptr null }, %struct.anon { i32 8268, i32 6824012, ptr null }, %struct.anon { i32 8272, i32 6824016, ptr null }, %struct.anon { i32 8276, i32 6824020, ptr null }, %struct.anon { i32 8280, i32 6824024, ptr null }, %struct.anon { i32 8284, i32 6824028, ptr null }, %struct.anon { i32 8288, i32 6824032, ptr null }, %struct.anon { i32 8292, i32 6824036, ptr null }, %struct.anon { i32 8296, i32 6824040, ptr null }, %struct.anon { i32 8300, i32 6824044, ptr null }, %struct.anon { i32 8304, i32 6824048, ptr null }, %struct.anon { i32 8308, i32 6824052, ptr null }, %struct.anon { i32 8312, i32 6824056, ptr null }, %struct.anon { i32 8316, i32 6824060, ptr null }, %struct.anon { i32 8320, i32 6824064, ptr null }, %struct.anon { i32 8328, i32 6824072, ptr null }, %struct.anon { i32 8336, i32 6824080, ptr null }, %struct.anon { i32 8348, i32 6824092, ptr null }, %struct.anon { i32 8352, i32 6824096, ptr null }, %struct.anon { i32 8356, i32 6824100, ptr null }, %struct.anon { i32 8360, i32 6824104, ptr null }, %struct.anon { i32 8364, i32 6824108, ptr null }, %struct.anon { i32 8576, i32 6824320, ptr null }, %struct.anon { i32 8580, i32 6824324, ptr null }, %struct.anon { i32 8588, i32 6824332, ptr null }, %struct.anon { i32 8596, i32 6824340, ptr null }, %struct.anon { i32 8600, i32 6824344, ptr null }, %struct.anon { i32 8604, i32 6824348, ptr null }, %struct.anon { i32 8608, i32 6824352, ptr null }, %struct.anon { i32 8612, i32 6824356, ptr null }, %struct.anon { i32 8724, i32 6824468, ptr null }, %struct.anon { i32 8728, i32 6824472, ptr null }, %struct.anon zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_core_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @gv100_disp_core, ptr noundef nonnull @gv100_disp_core_mthd, ptr noundef %3, i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gv100_disp_core_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv50_disp, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 7
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 6359844
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #5, !srcloc !9
  %12 = load i64, ptr %6, align 8
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 6359840
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !9
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 6359848
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #5, !srcloc !9
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 6359852
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 64) #5, !srcloc !9
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 6358240
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %24 = or i32 %23, 16
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 6358240
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !9
  %27 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr i8, ptr %29, i32 6815744
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !9
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 6358240
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 19) #5, !srcloc !9
  %33 = tail call fastcc i32 @gv100_disp_core_idle(ptr noundef %0)
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_disp_core_fini(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv50_disp, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 6358240
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %10 = and i32 %9, -17
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 6358240
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !9
  %13 = tail call fastcc i32 @gv100_disp_core_idle(ptr noundef %0)
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 6358240
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %17 = and i32 %16, -3
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 6358240
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !9
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 6815744
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %23 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  store i32 %22, ptr %23, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_disp_core_intr(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = zext i1 %1 to i32
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 6364588
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %12 = and i32 %11, -2
  %13 = or i32 %12, %7
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 6364588
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i64 @gv100_disp_core_user(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #2 {
  store i64 65536, ptr %1, align 8
  ret i64 6815744
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_dmac_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gv100_disp_core_idle(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %8

8:                                                ; preds = %14, %1
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %9, i32 6358576
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %12 = and i32 %11, 2031616
  %13 = icmp eq i32 %12, 720896
  br i1 %13, label %36, label %14

14:                                               ; preds = %8
  %15 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %16 = icmp sgt i64 %15, -1
  br i1 %16, label %8, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.nvkm_timer, ptr %18, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @dev_driver_string(ptr noundef %22) #5
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load ptr, ptr %28, align 4
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi ptr [ %33, %32 ], [ %30, %17 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %23, ptr noundef %35) #5
  br label %36

36:                                               ; preds = %34, %8
  %37 = phi i32 [ -16, %34 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!8 = !{i64 2151485569}
!9 = !{i64 3944476}
!10 = !{i64 3944894}
!11 = !{i64 2151484347}
!12 = !{!"auto-init"}
