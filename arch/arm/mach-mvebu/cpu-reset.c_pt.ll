; ModuleID = '/llk/IR/arch/arm/mach-mvebu/cpu-reset.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/cpu-reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@cpu_reset_base = internal unnamed_addr global ptr null, align 4
@cpu_reset_size = internal unnamed_addr global i32 0, align 4
@__initcall__kmod_cpu_reset__102_104_mvebu_cpu_reset_initearly = internal global ptr @mvebu_cpu_reset_init, section ".initcallearly.init", align 4
@.str = private unnamed_addr constant [29 x i8] c"marvell,armada-370-cpu-reset\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"marvell,armada-370-xp-pmsu\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"\014mvebu-cpureset: [Firmware Warn]: deprecated pmsu binding\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\013mvebu-cpureset: unable to get resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"\013mvebu-cpureset: unable to request region\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\013mvebu-cpureset: unable to map registers\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cpu_reset__102_104_mvebu_cpu_reset_initearly], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_cpu_reset_deassert(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cpu_reset_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = shl i32 %0, 3
  %6 = load i32, ptr @cpu_reset_size, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %2, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = and i32 %10, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %12 = load ptr, ptr @cpu_reset_base, align 4
  %13 = getelementptr i8, ptr %12, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !11
  br label %14

14:                                               ; preds = %8, %4, %1
  %15 = phi i32 [ 0, %8 ], [ -19, %1 ], [ -22, %4 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_cpu_reset_init() #3 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi ptr [ %2, %0 ], [ %5, %7 ]
  %11 = phi i32 [ 0, %0 ], [ 1, %7 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false) #6, !annotation !12
  %12 = call i32 @of_address_to_resource(ptr noundef nonnull %10, i32 noundef %11, ptr noundef nonnull %1) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %46

16:                                               ; preds = %9
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 1, %17
  %21 = add i32 %20, %19
  %22 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %21, ptr noundef %23, i32 noundef 0) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %46

28:                                               ; preds = %16
  %29 = load i32, ptr %1, align 4
  %30 = load i32, ptr %18, align 4
  %31 = sub i32 1, %29
  %32 = add i32 %31, %30
  %33 = call ptr @ioremap(i32 noundef %29, i32 noundef %32) #6
  store ptr %33, ptr @cpu_reset_base, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  %37 = load i32, ptr %1, align 4
  %38 = load i32, ptr %18, align 4
  %39 = sub i32 1, %37
  %40 = add i32 %39, %38
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %37, i32 noundef %40) #6
  br label %46

41:                                               ; preds = %28
  %42 = load i32, ptr %18, align 4
  %43 = load i32, ptr %1, align 4
  %44 = add i32 %42, 1
  %45 = sub i32 %44, %43
  store i32 %45, ptr @cpu_reset_size, align 4
  br label %46

46:                                               ; preds = %41, %35, %26, %14
  %47 = phi i32 [ -2, %14 ], [ 0, %41 ], [ -12, %35 ], [ -16, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #6
  call void @of_node_put(ptr noundef nonnull %10) #6
  br label %48

48:                                               ; preds = %46, %4
  %49 = phi i32 [ %47, %46 ], [ -19, %4 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2806303}
!9 = !{i64 2150375705}
!10 = !{i64 2150376000}
!11 = !{i64 2805885}
!12 = !{!"auto-init"}
