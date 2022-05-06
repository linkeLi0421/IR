; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/sornv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sornv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ior_func = type { %struct.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.132, %struct.anon.133, %struct.anon.134 }
%struct.anon = type { ptr, ptr }
%struct.anon.132 = type { ptr, ptr }
%struct.anon.133 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { ptr, ptr, ptr }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.135, %struct.anon.136 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.135 = type { i8, i8, i8, i8 }
%struct.anon.136 = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sornv50.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@nv50_sor = internal constant %struct.nvkm_ior_func { %struct.anon zeroinitializer, ptr @nv50_sor_state, ptr @nv50_sor_power, ptr null, ptr @nv50_sor_clock, ptr null, ptr null, %struct.anon.132 zeroinitializer, %struct.anon.133 zeroinitializer, %struct.anon.134 zeroinitializer }, align 4
@switch.table.nv50_sor_state = private unnamed_addr constant [6 x i32] [i32 -497, i32 -497, i32 -497, i32 -113, i32 -113, i32 -497], align 4
@switch.table.nv50_sor_state.2 = private unnamed_addr constant [6 x i32] [i32 176, i32 160, i32 288, i32 80, i32 80, i32 416], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_sor_clock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 384
  %9 = icmp eq i32 %8, 384
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 11
  %14 = add i32 %13, 6374144
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %19 = and i32 %18, -1800
  %20 = select i1 %9, i32 256, i32 0
  %21 = or i32 %20, %10
  %22 = or i32 %21, %19
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr i8, ptr %23, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_sor_power(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 zeroext %3, i1 zeroext %4, i1 zeroext %5) #0 {
  %7 = alloca %struct.nvkm_timer_wait, align 8
  %8 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_disp, ptr %9, i32 0, i32 1, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 11
  %15 = select i1 %1, i32 0, i32 16
  %16 = zext i1 %2 to i32
  %17 = shl nuw nsw i32 %16, %15
  %18 = or i32 %17, -2147483648
  %19 = shl nuw nsw i32 1, %15
  tail call fastcc void @nv50_sor_power_wait(ptr noundef %11, i32 noundef %14)
  %20 = add i32 %14, 6406148
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = xor i32 %19, -1
  %26 = and i32 %24, %25
  %27 = or i32 %26, %18
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr i8, ptr %28, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #4, !srcloc !11
  tail call fastcc void @nv50_sor_power_wait(ptr noundef %11, i32 noundef %14)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %11, i64 noundef 2000000000, ptr noundef nonnull %7) #4
  %30 = add i32 %14, 6406192
  br label %31

31:                                               ; preds = %37, %6
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %35 = and i32 %34, 268435456
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %31
  %38 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %7) #4
  %39 = icmp sgt i64 %38, -1
  br i1 %39, label %31, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.nvkm_timer, ptr %41, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = call ptr @dev_driver_string(ptr noundef %45) #4
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr inbounds %struct.nvkm_timer, ptr %47, i32 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load ptr, ptr %51, align 4
  br label %57

57:                                               ; preds = %55, %40
  %58 = phi ptr [ %56, %55 ], [ %53, %40 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %46, ptr noundef %58) #4
  br label %59

59:                                               ; preds = %57, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_sor_power_wait(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %0, i64 noundef 2000000000, ptr noundef nonnull %3) #4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = add i32 %1, 6406148
  br label %6

6:                                                ; preds = %11, %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #4
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %6, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @dev_driver_string(ptr noundef %19) #4
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = load ptr, ptr %25, align 4
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi ptr [ %30, %29 ], [ %27, %14 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %20, ptr noundef %32) #4
  br label %33

33:                                               ; preds = %31, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #4
  ret void
}

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_sor_state(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 7
  %11 = icmp eq ptr %10, %1
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = select i1 %11, i32 6359924, i32 6359920
  %15 = add i32 %14, %9
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 15
  %20 = getelementptr inbounds %struct.nvkm_ior_state, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, 6
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = getelementptr inbounds [6 x i32], ptr @switch.table.nv50_sor_state, i32 0, i32 %19
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [6 x i32], ptr @switch.table.nv50_sor_state.2, i32 0, i32 %19
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i32 [ %25, %23 ], [ -113, %2 ]
  %30 = phi i32 [ %27, %23 ], [ 80, %2 ]
  %31 = and i32 %21, -130688
  %32 = or i32 %31, %19
  %33 = and i32 %32, %29
  %34 = or i32 %33, %30
  %35 = shl i32 %17, 9
  %36 = and i32 %35, 1536
  %37 = or i32 %34, %36
  store i32 %37, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_sor_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull @nv50_sor, ptr noundef %0, i32 noundef 1, i32 noundef %1) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_sor_cnt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6357380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = lshr i32 %8, 24
  %10 = and i32 %9, 3
  store i32 %10, ptr %1, align 4
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{i64 3951002}
!9 = !{i64 2151490455}
!10 = !{i64 2151491677}
!11 = !{i64 3950584}
!12 = !{!"auto-init"}
