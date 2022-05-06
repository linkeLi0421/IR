; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_volt_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvbios_volt = type { i32, i32, i32, i32, i8, i8, i16, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.gk104_volt = type { %struct.nvkm_volt, %struct.nvbios_volt }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.121], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.121 = type { i32, i8 }

@gk104_volt_gpio = internal constant %struct.nvkm_volt_func { ptr @gf100_volt_oneinit, ptr null, ptr null, ptr @nvkm_voltgpio_get, ptr @nvkm_voltgpio_set, ptr null, ptr @gk104_volt_speedo_read }, align 4
@gk104_volt_pwm = internal constant %struct.nvkm_volt_func { ptr @gf100_volt_oneinit, ptr @gk104_volt_get, ptr @gk104_volt_set, ptr null, ptr null, ptr null, ptr @gk104_volt_speedo_read }, align 4
@.str = private unnamed_addr constant [93 x i8] c"%s: Type mismatch between the voltage table type and the GPIO table. Fallback to GPIO mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PWM\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: Using %s mode\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_volt_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dcb_gpio_func, align 1
  %6 = alloca %struct.nvbios_volt, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %5, i8 0, i32 5, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #7
  store i8 0, ptr %10, align 1, !annotation !8
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 21
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @nvbios_volt_parse(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @nvkm_gpio_find(ptr noundef %17, i32 noundef 0, i8 noundef zeroext -127, i8 noundef zeroext -1, ptr noundef nonnull %5) #7
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %6, align 4
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %19, i1 %21, i1 false
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 2152) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %15
  %27 = select i1 %22, ptr @gk104_volt_pwm, ptr @gk104_volt_gpio
  %28 = xor i1 %22, true
  call void @nvkm_volt_ctor(ptr noundef nonnull %27, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %24) #7
  store ptr %24, ptr %3, align 4
  %29 = getelementptr inbounds %struct.gk104_volt, ptr %24, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %29, ptr noundef nonnull align 4 dereferenceable(28) %6, i32 28, i1 false)
  %30 = load i32, ptr %6, align 4
  %31 = icmp eq i32 %30, 1
  %32 = select i1 %31, i1 %28, i1 false
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.nvkm_volt, ptr %24, i32 0, i32 1, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nvkm_volt, ptr %24, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nvkm_volt, ptr %24, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str, ptr noundef %42) #9
  br label %43

43:                                               ; preds = %37, %33, %26
  br i1 %22, label %46, label %44

44:                                               ; preds = %43
  %45 = call i32 @nvkm_voltgpio_init(ptr noundef nonnull %24) #7
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi ptr [ @.str.1, %44 ], [ @.str.2, %43 ]
  %48 = getelementptr inbounds %struct.nvkm_volt, ptr %24, i32 0, i32 1, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 3
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nvkm_volt, ptr %24, i32 0, i32 1, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_volt, ptr %24, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef %56, ptr noundef nonnull %47) #9
  br label %57

57:                                               ; preds = %51, %46, %15, %4
  %58 = phi i32 [ 0, %4 ], [ -12, %15 ], [ 0, %51 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %5) #7
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_volt_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_volt_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_voltgpio_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_volt_oneinit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_voltgpio_get(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_voltgpio_set(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_volt_speedo_read(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1189428
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !10
  %11 = tail call i32 @nvkm_fuse_read(ptr noundef nonnull %5, i32 noundef 936) #7
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 1189428
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 65) #7, !srcloc !10
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i32 [ %11, %7 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fuse_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_volt_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 131904
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 131908
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %11 = getelementptr inbounds %struct.gk104_volt, ptr %0, i32 0, i32 1, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gk104_volt, ptr %0, i32 0, i32 1, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %10
  %16 = udiv i32 %15, %7
  %17 = add i32 %16, %12
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_volt_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gk104_volt, ptr %0, i32 0, i32 1, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 27648000, %6
  %8 = getelementptr inbounds %struct.gk104_volt, ptr %0, i32 0, i32 1, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %1, %9
  %11 = mul i32 %10, %7
  %12 = getelementptr inbounds %struct.gk104_volt, ptr %0, i32 0, i32 1, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = add i32 %14, %11
  %16 = udiv i32 %15, %13
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 131904
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %7) #7, !srcloc !10
  %20 = or i32 %16, -2147483648
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 131908
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2151483131}
!10 = !{i64 3942038}
!11 = !{i64 3942456}
!12 = !{i64 2151481909}
