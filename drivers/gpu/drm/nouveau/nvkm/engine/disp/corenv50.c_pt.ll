; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { i32, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.nv50_disp_core_channel_dma_v0 = type { i8, [7 x i8], i64 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.131, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.131 = type { i32, i32 }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.128, %struct.anon.128, %struct.anon.128, %struct.anon.129, %struct.anon.130, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.126 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.125 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.125 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.126 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.128 = type { i32, i32 }
%struct.anon.129 = type { i32, i32, i32 }
%struct.anon.130 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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

@.str = private unnamed_addr constant [70 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp core channel dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp core channel dma vers %d pushbuf %016llx\0A\00", align 1
@nv50_disp_core_mthd_base = dso_local constant { i32, i32, [5 x %struct.anon.0] } { i32 0, i32 0, [5 x %struct.anon.0] [%struct.anon.0 { i32 128, i32 0, ptr null }, %struct.anon.0 { i32 132, i32 6359992, ptr null }, %struct.anon.0 { i32 136, i32 6359964, ptr null }, %struct.anon.0 { i32 140, i32 0, ptr null }, %struct.anon.0 zeroinitializer] }, align 4
@nv50_disp_core_mthd_sor = dso_local constant { i32, i32, [2 x %struct.anon.0] } { i32 64, i32 8, [2 x %struct.anon.0] [%struct.anon.0 { i32 1536, i32 6359920, ptr null }, %struct.anon.0 zeroinitializer] }, align 4
@nv50_disp_core_mthd_pior = dso_local constant { i32, i32, [2 x %struct.anon.0] } { i32 64, i32 8, [2 x %struct.anon.0] [%struct.anon.0 { i32 1792, i32 6359936, ptr null }, %struct.anon.0 zeroinitializer] }, align 4
@nv50_disp_core_func = dso_local constant %struct.nv50_disp_chan_func { ptr @nv50_disp_core_init, ptr @nv50_disp_core_fini, ptr @nv50_disp_chan_intr, ptr @nv50_disp_chan_user, ptr @nv50_disp_dmac_bind }, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: core init: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s: core fini: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"SOR\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PIOR\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@nv50_disp_core_mthd = internal constant { ptr, i32, i32, [6 x %struct.anon] } { ptr @.str.6, i32 0, i32 4, [6 x %struct.anon] [%struct.anon { ptr @.str.7, i32 1, ptr @nv50_disp_core_mthd_base }, %struct.anon { ptr @.str.8, i32 3, ptr @nv50_disp_core_mthd_dac }, %struct.anon { ptr @.str.9, i32 2, ptr @nv50_disp_core_mthd_sor }, %struct.anon { ptr @.str.10, i32 3, ptr @nv50_disp_core_mthd_pior }, %struct.anon { ptr @.str.11, i32 2, ptr @nv50_disp_core_mthd_head }, %struct.anon zeroinitializer] }, align 4
@nv50_disp_core_mthd_dac = internal constant { i32, i32, [4 x %struct.anon.0] } { i32 128, i32 8, [4 x %struct.anon.0] [%struct.anon.0 { i32 1024, i32 6359896, ptr null }, %struct.anon.0 { i32 1028, i32 6360028, ptr null }, %struct.anon.0 { i32 1056, i32 6359080, ptr null }, %struct.anon.0 zeroinitializer] }, align 4
@nv50_disp_core_mthd_head = internal constant { i32, i32, [39 x %struct.anon.0] } { i32 1024, i32 1344, [39 x %struct.anon.0] [%struct.anon.0 { i32 2048, i32 6359768, ptr null }, %struct.anon.0 { i32 2052, i32 6359760, ptr null }, %struct.anon.0 { i32 2056, i32 6359624, ptr null }, %struct.anon.0 { i32 2060, i32 6359672, ptr null }, %struct.anon.0 { i32 2064, i32 6359744, ptr null }, %struct.anon.0 { i32 2068, i32 6359800, ptr null }, %struct.anon.0 { i32 2072, i32 6359808, ptr null }, %struct.anon.0 { i32 2076, i32 6359784, ptr null }, %struct.anon.0 { i32 2080, i32 6359792, ptr null }, %struct.anon.0 { i32 2084, i32 6359816, ptr null }, %struct.anon.0 { i32 2088, i32 6359824, ptr null }, %struct.anon.0 { i32 2092, i32 6359656, ptr null }, %struct.anon.0 { i32 2096, i32 6359648, ptr null }, %struct.anon.0 { i32 2100, i32 0, ptr null }, %struct.anon.0 { i32 2104, i32 6359616, ptr null }, %struct.anon.0 { i32 2112, i32 6359588, ptr null }, %struct.anon.0 { i32 2116, i32 6359596, ptr null }, %struct.anon.0 { i32 2120, i32 6359720, ptr null }, %struct.anon.0 { i32 2124, i32 6359728, ptr null }, %struct.anon.0 { i32 2144, i32 6359684, ptr null }, %struct.anon.0 { i32 2148, i32 6359696, ptr null }, %struct.anon.0 { i32 2152, i32 6359832, ptr null }, %struct.anon.0 { i32 2156, i32 6359840, ptr null }, %struct.anon.0 { i32 2160, i32 6359752, ptr null }, %struct.anon.0 { i32 2164, i32 6359608, ptr null }, %struct.anon.0 { i32 2176, i32 6359640, ptr null }, %struct.anon.0 { i32 2180, i32 6359708, ptr null }, %struct.anon.0 { i32 2208, i32 6359664, ptr null }, %struct.anon.0 { i32 2212, i32 6359632, ptr null }, %struct.anon.0 { i32 2216, i32 6359776, ptr null }, %struct.anon.0 { i32 2240, i32 6359848, ptr null }, %struct.anon.0 { i32 2244, i32 6359856, ptr null }, %struct.anon.0 { i32 2248, i32 6359872, ptr null }, %struct.anon.0 { i32 2260, i32 6359864, ptr null }, %struct.anon.0 { i32 2264, i32 6359880, ptr null }, %struct.anon.0 { i32 2268, i32 6359888, ptr null }, %struct.anon.0 { i32 2304, i32 6359576, ptr null }, %struct.anon.0 { i32 2308, i32 6359736, ptr null }, %struct.anon.0 zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_core_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = icmp ugt i32 %14, 4
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %6) #5
  br label %23

23:                                               ; preds = %16, %8
  %24 = icmp ugt i32 %6, 15
  br i1 %24, label %25, label %48

25:                                               ; preds = %23
  %26 = load i8, ptr %5, align 8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = icmp eq i32 %6, 16
  br i1 %29, label %30, label %48

30:                                               ; preds = %28
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = icmp ugt i32 %33, 4
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 1
  %37 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nv50_disp_core_channel_dma_v0, ptr %5, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef 0, i64 noundef %42) #5
  br label %44

44:                                               ; preds = %35, %30
  %45 = getelementptr inbounds %struct.nv50_disp_core_channel_dma_v0, ptr %5, i32 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = tail call i32 @nv50_disp_dmac_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i64 noundef %46, ptr noundef %4, ptr noundef %7) #6
  br label %48

48:                                               ; preds = %44, %28, %25, %23
  %49 = phi i32 [ %47, %44 ], [ -38, %23 ], [ -38, %25 ], [ -7, %28 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_dmac_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_core_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 6357504
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = and i32 %10, 10420224
  %12 = icmp eq i32 %11, 131072
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 6357504
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %17 = or i32 %16, 8388608
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 6357504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !11
  br label %20

20:                                               ; preds = %13, %1
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 6357504
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %24 = and i32 %23, 4128768
  %25 = icmp eq i32 %24, 196608
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 6357504
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %30 = or i32 %29, 6291456
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 6357504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #6, !srcloc !11
  br label %33

33:                                               ; preds = %26, %20
  %34 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 7
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr i8, ptr %37, i32 6357508
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !11
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 6357512
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 65536) #6, !srcloc !11
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr i8, ptr %41, i32 6357516
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #6, !srcloc !11
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr i8, ptr %43, i32 6357504
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %46 = or i32 %45, 16
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr i8, ptr %47, i32 6357504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #6, !srcloc !11
  %49 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  %50 = load i32, ptr %49, align 8
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr i8, ptr %51, i32 6553600
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #6, !srcloc !11
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr i8, ptr %53, i32 6357504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 16777235) #6, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %55

55:                                               ; preds = %60, %33
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 6357504
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %93, label %60

60:                                               ; preds = %55
  %61 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %62 = icmp sgt i64 %61, -1
  br i1 %62, label %55, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.nvkm_timer, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = call ptr @dev_driver_string(ptr noundef %68) #6
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.nvkm_timer, ptr %70, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load ptr, ptr %74, align 4
  br label %80

80:                                               ; preds = %78, %63
  %81 = phi ptr [ %79, %78 ], [ %76, %63 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %69, ptr noundef %81) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %82 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %5, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 4
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr i8, ptr %90, i32 6357504
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.4, ptr noundef %89, i32 noundef %92) #5
  br label %94

93:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %94

94:                                               ; preds = %93, %85, %80
  %95 = phi i32 [ 0, %93 ], [ -16, %85 ], [ -16, %80 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_core_fini(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 6357504
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = and i32 %10, -17
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 6357504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !11
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 6357504
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %17 = and i32 %16, -4
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 6357504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %20

20:                                               ; preds = %26, %1
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 6357504
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %24 = and i32 %23, 1966080
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %20
  %27 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %20, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @dev_driver_string(ptr noundef %34) #6
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.nvkm_timer, ptr %36, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load ptr, ptr %40, align 4
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi ptr [ %45, %44 ], [ %42, %29 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %35, ptr noundef %47) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %48 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 4
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 6357504
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.5, ptr noundef %55, i32 noundef %58) #5
  br label %60

59:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %60

60:                                               ; preds = %59, %51, %46
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr i8, ptr %61, i32 6553600
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %64 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  store i32 %63, ptr %64, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_intr(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_dmac_bind(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_core_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @nv50_disp_core_func, ptr noundef nonnull @nv50_disp_core_mthd, ptr noundef %3, i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
!8 = !{i64 3945678}
!9 = !{i64 2151485131}
!10 = !{i64 2151486353}
!11 = !{i64 3945260}
!12 = !{!"auto-init"}
