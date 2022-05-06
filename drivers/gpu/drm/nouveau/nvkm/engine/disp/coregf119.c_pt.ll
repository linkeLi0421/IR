; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.125 = type { ptr, i32, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.131, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.131 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.128, %struct.anon.128, %struct.anon.128, %struct.anon.129, %struct.anon.130, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.126 }
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
%struct.anon.126 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.128 = type { i32, i32 }
%struct.anon.129 = type { i32, i32, i32 }
%struct.anon.130 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
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

@gf119_disp_core_mthd_base = dso_local constant { i32, i32, [5 x %struct.anon] } { i32 0, i32 0, [5 x %struct.anon] [%struct.anon { i32 128, i32 6684800, ptr null }, %struct.anon { i32 132, i32 6684804, ptr null }, %struct.anon { i32 136, i32 6684808, ptr null }, %struct.anon { i32 140, i32 0, ptr null }, %struct.anon zeroinitializer] }, align 4
@gf119_disp_core_mthd_dac = dso_local constant { i32, i32, [5 x %struct.anon] } { i32 32, i32 32, [5 x %struct.anon] [%struct.anon { i32 384, i32 6685056, ptr null }, %struct.anon { i32 388, i32 6685060, ptr null }, %struct.anon { i32 392, i32 6685064, ptr null }, %struct.anon { i32 400, i32 6685072, ptr null }, %struct.anon zeroinitializer] }, align 4
@gf119_disp_core_mthd_sor = dso_local constant { i32, i32, [5 x %struct.anon] } { i32 32, i32 32, [5 x %struct.anon] [%struct.anon { i32 512, i32 6685184, ptr null }, %struct.anon { i32 516, i32 6685188, ptr null }, %struct.anon { i32 520, i32 6685192, ptr null }, %struct.anon { i32 528, i32 6685200, ptr null }, %struct.anon zeroinitializer] }, align 4
@gf119_disp_core_mthd_pior = dso_local constant { i32, i32, [5 x %struct.anon] } { i32 32, i32 32, [5 x %struct.anon] [%struct.anon { i32 768, i32 6685440, ptr null }, %struct.anon { i32 772, i32 6685444, ptr null }, %struct.anon { i32 776, i32 6685448, ptr null }, %struct.anon { i32 784, i32 6685456, ptr null }, %struct.anon zeroinitializer] }, align 4
@.str = private unnamed_addr constant [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: core fini: %08x\0A\00", align 1
@gf119_disp_core_func = dso_local constant %struct.nv50_disp_chan_func { ptr @gf119_disp_core_init, ptr @gf119_disp_core_fini, ptr @gf119_disp_chan_intr, ptr @nv50_disp_chan_user, ptr @gf119_disp_dmac_bind }, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: core init: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SOR\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PIOR\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@gf119_disp_core_mthd = internal constant { ptr, i32, i32, [6 x %struct.anon.125] } { ptr @.str.4, i32 0, i32 -131072, [6 x %struct.anon.125] [%struct.anon.125 { ptr @.str.5, i32 1, ptr @gf119_disp_core_mthd_base }, %struct.anon.125 { ptr @.str.6, i32 3, ptr @gf119_disp_core_mthd_dac }, %struct.anon.125 { ptr @.str.7, i32 8, ptr @gf119_disp_core_mthd_sor }, %struct.anon.125 { ptr @.str.8, i32 4, ptr @gf119_disp_core_mthd_pior }, %struct.anon.125 { ptr @.str.9, i32 4, ptr @gf119_disp_core_mthd_head }, %struct.anon.125 zeroinitializer] }, align 4
@gf119_disp_core_mthd_head = internal constant { i32, i32, [66 x %struct.anon] } { i32 768, i32 768, [66 x %struct.anon] [%struct.anon { i32 1024, i32 6685696, ptr null }, %struct.anon { i32 1028, i32 6685700, ptr null }, %struct.anon { i32 1032, i32 6685704, ptr null }, %struct.anon { i32 1036, i32 6685708, ptr null }, %struct.anon { i32 1040, i32 6685712, ptr null }, %struct.anon { i32 1044, i32 6685716, ptr null }, %struct.anon { i32 1048, i32 6685720, ptr null }, %struct.anon { i32 1052, i32 6685724, ptr null }, %struct.anon { i32 1056, i32 6685728, ptr null }, %struct.anon { i32 1060, i32 6685732, ptr null }, %struct.anon { i32 1064, i32 6685736, ptr null }, %struct.anon { i32 1068, i32 6685740, ptr null }, %struct.anon { i32 1072, i32 6685744, ptr null }, %struct.anon { i32 1076, i32 6685748, ptr null }, %struct.anon { i32 1080, i32 6685752, ptr null }, %struct.anon { i32 1088, i32 6685760, ptr null }, %struct.anon { i32 1092, i32 6685764, ptr null }, %struct.anon { i32 1096, i32 6685768, ptr null }, %struct.anon { i32 1100, i32 6685772, ptr null }, %struct.anon { i32 1104, i32 6685776, ptr null }, %struct.anon { i32 1108, i32 6685780, ptr null }, %struct.anon { i32 1112, i32 6685784, ptr null }, %struct.anon { i32 1116, i32 6685788, ptr null }, %struct.anon { i32 1120, i32 6685792, ptr null }, %struct.anon { i32 1128, i32 6685800, ptr null }, %struct.anon { i32 1132, i32 6685804, ptr null }, %struct.anon { i32 1136, i32 6685808, ptr null }, %struct.anon { i32 1140, i32 6685812, ptr null }, %struct.anon { i32 1152, i32 6685824, ptr null }, %struct.anon { i32 1156, i32 6685828, ptr null }, %struct.anon { i32 1164, i32 6685836, ptr null }, %struct.anon { i32 1168, i32 6685840, ptr null }, %struct.anon { i32 1172, i32 6685844, ptr null }, %struct.anon { i32 1176, i32 6685848, ptr null }, %struct.anon { i32 1200, i32 6685872, ptr null }, %struct.anon { i32 1208, i32 6685880, ptr null }, %struct.anon { i32 1212, i32 6685884, ptr null }, %struct.anon { i32 1216, i32 6685888, ptr null }, %struct.anon { i32 1220, i32 6685892, ptr null }, %struct.anon { i32 1224, i32 6685896, ptr null }, %struct.anon { i32 1232, i32 6685904, ptr null }, %struct.anon { i32 1236, i32 6685908, ptr null }, %struct.anon { i32 1248, i32 6685920, ptr null }, %struct.anon { i32 1252, i32 6685924, ptr null }, %struct.anon { i32 1256, i32 6685928, ptr null }, %struct.anon { i32 1260, i32 6685932, ptr null }, %struct.anon { i32 1264, i32 6685936, ptr null }, %struct.anon { i32 1268, i32 6685940, ptr null }, %struct.anon { i32 1272, i32 6685944, ptr null }, %struct.anon { i32 1276, i32 6685948, ptr null }, %struct.anon { i32 1280, i32 6685952, ptr null }, %struct.anon { i32 1284, i32 6685956, ptr null }, %struct.anon { i32 1288, i32 6685960, ptr null }, %struct.anon { i32 1292, i32 6685964, ptr null }, %struct.anon { i32 1296, i32 6685968, ptr null }, %struct.anon { i32 1300, i32 6685972, ptr null }, %struct.anon { i32 1304, i32 6685976, ptr null }, %struct.anon { i32 1308, i32 6685980, ptr null }, %struct.anon { i32 1324, i32 6685996, ptr null }, %struct.anon { i32 1328, i32 6686000, ptr null }, %struct.anon { i32 1356, i32 6686028, ptr null }, %struct.anon { i32 1360, i32 6686032, ptr null }, %struct.anon { i32 1364, i32 6686036, ptr null }, %struct.anon { i32 1368, i32 6686040, ptr null }, %struct.anon { i32 1372, i32 6686044, ptr null }, %struct.anon zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_disp_core_fini(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 6358160
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = and i32 %10, -17
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 6358160
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !11
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 6358160
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %17 = and i32 %16, -4
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 6358160
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %20

20:                                               ; preds = %26, %1
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 6358160
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %24 = and i32 %23, 1966080
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %20
  %27 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %20, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @dev_driver_string(ptr noundef %34) #5
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %35, ptr noundef %47) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
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
  %57 = getelementptr i8, ptr %56, i32 6358160
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.2, ptr noundef %55, i32 noundef %58) #6
  br label %60

59:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %60

60:                                               ; preds = %59, %51, %46
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr i8, ptr %61, i32 6553600
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %64 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  store i32 %63, ptr %64, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf119_disp_core_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 7
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 6358164
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #5, !srcloc !11
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr i8, ptr %13, i32 6358168
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 65536) #5, !srcloc !11
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 6358172
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #5, !srcloc !11
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 6358160
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %20 = or i32 %19, 16
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 6358160
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !11
  %23 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr i8, ptr %25, i32 6553600
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !11
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 6358160
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16777235) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %29

29:                                               ; preds = %34, %1
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr i8, ptr %30, i32 6358160
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %67, label %34

34:                                               ; preds = %29
  %35 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %36 = icmp sgt i64 %35, -1
  br i1 %36, label %29, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.nvkm_timer, ptr %38, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = call ptr @dev_driver_string(ptr noundef %42) #5
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.nvkm_timer, ptr %44, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load ptr, ptr %48, align 4
  br label %54

54:                                               ; preds = %52, %37
  %55 = phi ptr [ %53, %52 ], [ %50, %37 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %43, ptr noundef %55) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %56 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 4
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr i8, ptr %64, i32 6358160
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.3, ptr noundef %63, i32 noundef %66) #6
  br label %68

67:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %68

68:                                               ; preds = %67, %59, %54
  %69 = phi i32 [ 0, %67 ], [ -16, %59 ], [ -16, %54 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_disp_chan_intr(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_disp_dmac_bind(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_core_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @gf119_disp_core_func, ptr noundef nonnull @gf119_disp_core_mthd, ptr noundef %3, i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3945325}
!9 = !{i64 2151484778}
!10 = !{i64 2151486000}
!11 = !{i64 3944907}
!12 = !{!"auto-init"}
