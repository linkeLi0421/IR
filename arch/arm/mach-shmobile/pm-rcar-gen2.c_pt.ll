; ModuleID = '/llk/IR/arch/arm/mach-shmobile/pm-rcar-gen2.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/pm-rcar-gen2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@rcar_gen2_pm_init.once = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"arm,cortex-a15\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"arm,cortex-a7\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"renesas,smp-sram\00", align 1
@shmobile_boot_size = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"\013Failed to get smp-sram address: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\013Invalid smp-sram region\0A\00", align 1
@shmobile_boot_size_gen2 = external dso_local local_unnamed_addr global i32, align 4
@shmobile_boot_cpu_gen2 = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rcar_gen2_pm_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !8
  %2 = load i32, ptr @rcar_gen2_pm_init.once, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @rcar_gen2_pm_init.once, align 4
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %89

5:                                                ; preds = %0
  %6 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %18, %5
  %9 = phi ptr [ %21, %18 ], [ %6, %5 ]
  %10 = phi i1 [ %20, %18 ], [ false, %5 ]
  %11 = phi i1 [ %19, %18 ], [ false, %5 ]
  %12 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %9, ptr noundef nonnull @.str) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %9, ptr noundef nonnull @.str.1) #5
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %16, i1 true, i1 %10
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i1 [ true, %8 ], [ %11, %14 ]
  %20 = phi i1 [ %10, %8 ], [ %17, %14 ]
  %21 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %9) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8

23:                                               ; preds = %18, %5
  %24 = phi i1 [ false, %5 ], [ %19, %18 ]
  %25 = phi i1 [ false, %5 ], [ %20, %18 ]
  %26 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, ptr @shmobile_boot_size, align 4
  %30 = add i32 %29, -432275457
  store i32 -432275456, ptr %1, align 4
  %31 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %1, i32 8
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %1, i32 12
  store i32 512, ptr %33, align 4
  %34 = getelementptr inbounds i8, ptr %1, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %44

35:                                               ; preds = %23
  %36 = call i32 @of_address_to_resource(ptr noundef nonnull %26, i32 noundef 0, ptr noundef nonnull %1) #5
  call void @of_node_put(ptr noundef nonnull %26) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %36) #6
  br label %89

40:                                               ; preds = %35
  %41 = load i32, ptr %1, align 4
  %42 = and i32 %41, 262143
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %28
  %45 = phi i32 [ -432275456, %28 ], [ %41, %40 ]
  %46 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 1, %45
  %49 = add i32 %48, %47
  %50 = load i32, ptr @shmobile_boot_size, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44, %40
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %89

54:                                               ; preds = %44
  %55 = call ptr @ioremap(i32 noundef %45, i32 noundef %49) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %46, align 4
  %59 = load i32, ptr %1, align 4
  %60 = add i32 %58, 1
  %61 = sub i32 %60, %59
  %62 = load i32, ptr @shmobile_boot_size_gen2, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #7, !srcloc !9
  store i32 %65, ptr @shmobile_boot_cpu_gen2, align 4
  call void @mmiocpy(ptr noundef nonnull %55, ptr noundef nonnull @shmobile_boot_vector_gen2, i32 noundef %62) #5
  br label %68

66:                                               ; preds = %57
  %67 = load i32, ptr @shmobile_boot_size, align 4
  call void @mmiocpy(ptr noundef nonnull %55, ptr noundef nonnull @shmobile_boot_vector, i32 noundef %67) #5
  br label %68

68:                                               ; preds = %66, %64
  call void @iounmap(ptr noundef nonnull %55) #5
  %69 = call ptr @ioremap(i32 noundef -434765824, i32 noundef 99) #5
  %70 = load i32, ptr %1, align 4
  %71 = lshr i32 %70, 8
  %72 = and i32 %71, 16776192
  br i1 %24, label %73, label %80

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %69, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #5, !srcloc !10
  %75 = or i32 %72, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %75) #5, !srcloc !10
  %76 = getelementptr i8, ptr %69, i32 64
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !11
  %78 = and i32 %77, 1515913200
  %79 = or i32 %78, -1515913216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %79) #5, !srcloc !10
  br label %80

80:                                               ; preds = %73, %68
  br i1 %25, label %81, label %88

81:                                               ; preds = %80
  %82 = getelementptr i8, ptr %69, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %72) #5, !srcloc !10
  %83 = or i32 %72, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %83) #5, !srcloc !10
  %84 = getelementptr i8, ptr %69, i32 68
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !11
  %86 = and i32 %85, -1515847696
  %87 = or i32 %86, 1515847680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %87) #5, !srcloc !10
  br label %88

88:                                               ; preds = %81, %80
  call void @iounmap(ptr noundef %69) #5
  call void @shmobile_smp_apmu_suspend_init() #5
  br label %89

89:                                               ; preds = %88, %54, %52, %38, %0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_boot_vector_gen2() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_boot_vector() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_apmu_suspend_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!9 = !{i64 2150377016}
!10 = !{i64 2806939}
!11 = !{i64 2807357}
