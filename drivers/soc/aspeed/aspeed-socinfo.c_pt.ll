; ModuleID = '/llk/IR/drivers/soc/aspeed/aspeed-socinfo.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-socinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.5 = type { ptr, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_aspeed_socinfo__166_153_aspeed_socinfo_initearly = internal global ptr @aspeed_socinfo_init, section ".initcallearly.init", align 4
@.str = private unnamed_addr constant [18 x i8] c"aspeed,silicon-id\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\016ASPEED %s rev %s (%s)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rev_table = internal unnamed_addr constant [11 x %struct.anon.5] [%struct.anon.5 { ptr @.str.7, i32 33555203 }, %struct.anon.5 { ptr @.str.8, i32 33620227 }, %struct.anon.5 { ptr @.str.9, i32 33620739 }, %struct.anon.5 { ptr @.str.10, i32 67109635 }, %struct.anon.5 { ptr @.str.11, i32 67109123 }, %struct.anon.5 { ptr @.str.12, i32 67109379 }, %struct.anon.5 { ptr @.str.13, i32 67109891 }, %struct.anon.5 { ptr @.str.14, i32 83886851 }, %struct.anon.5 { ptr @.str.15, i32 83952131 }, %struct.anon.5 { ptr @.str.16, i32 84082947 }, %struct.anon.5 { ptr @.str.17, i32 84083715 }], align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"AST2400\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"AST1400\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"AST1250\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"AST2500\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"AST2510\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"AST2520\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"AST2530\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"AST2600\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"AST2620\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"AST2605\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"AST2625\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_aspeed_socinfo__166_153_aspeed_socinfo_initearly], section "llvm.metadata"
@switch.table.aspeed_socinfo_init = private unnamed_addr constant [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.20], align 4
@switch.table.aspeed_socinfo_init.23 = private unnamed_addr constant [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_socinfo_init() #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store ptr null, ptr %1, align 4
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %3 = tail call zeroext i1 @of_device_is_available(ptr noundef %2) #5
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @of_node_put(ptr noundef %2) #5
  br label %74

5:                                                ; preds = %0
  %6 = tail call ptr @of_iomap(ptr noundef %2, i32 noundef 0) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @of_node_put(ptr noundef %2) #5
  br label %74

9:                                                ; preds = %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void @iounmap(ptr noundef nonnull %6) #5
  %11 = tail call ptr @of_iomap(ptr noundef %2, i32 noundef 1) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %15 = getelementptr i8, ptr %11, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void @iounmap(ptr noundef nonnull %11) #5
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %16, %13 ], [ 0, %9 ]
  %19 = phi i32 [ %14, %13 ], [ 0, %9 ]
  tail call void @of_node_put(ptr noundef %2) #5
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 28) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.1, ptr noundef null) #5
  %25 = call i32 @of_property_read_string(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #5
  %26 = load ptr, ptr %1, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call noalias ptr @kstrdup(ptr noundef nonnull %26, i32 noundef 3264) #5
  store ptr %29, ptr %21, align 8
  br label %30

30:                                               ; preds = %28, %23
  call void @of_node_put(ptr noundef %24) #5
  %31 = and i32 %10, -16711681
  switch i32 %31, label %41 [
    i32 33555203, label %37
    i32 67109635, label %32
    i32 67109123, label %33
    i32 67109379, label %34
    i32 67109891, label %35
    i32 83886851, label %36
  ]

32:                                               ; preds = %30
  br label %37

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %32, %30
  %38 = phi i32 [ 0, %30 ], [ 3, %32 ], [ 4, %33 ], [ 5, %34 ], [ 6, %35 ], [ 7, %36 ]
  %39 = getelementptr [11 x %struct.anon.5], ptr @rev_table, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi ptr [ %40, %37 ], [ @.str.6, %30 ]
  %43 = getelementptr inbounds %struct.soc_device_attribute, ptr %21, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = and i32 %10, 16515072
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = icmp ult i32 %10, 83886080
  %48 = select i1 %47, ptr @switch.table.aspeed_socinfo_init, ptr @switch.table.aspeed_socinfo_init.23
  %49 = shl i32 %10, 8
  %50 = ashr i32 %49, 24
  %51 = getelementptr inbounds [4 x ptr], ptr %48, i32 0, i32 %50
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = phi ptr [ %52, %46 ], [ @.str.22, %41 ]
  %55 = getelementptr inbounds %struct.soc_device_attribute, ptr %21, i32 0, i32 2
  store ptr %54, ptr %55, align 8
  %56 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %10) #5
  %57 = getelementptr inbounds %struct.soc_device_attribute, ptr %21, i32 0, i32 4
  store ptr %56, ptr %57, align 8
  br i1 %12, label %61, label %58

58:                                               ; preds = %53
  %59 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %19) #5
  %60 = getelementptr inbounds %struct.soc_device_attribute, ptr %21, i32 0, i32 3
  store ptr %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = call ptr @soc_device_register(ptr noundef nonnull %21) #5
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load ptr, ptr %57, align 8
  call void @kfree(ptr noundef %65) #5
  %66 = getelementptr inbounds %struct.soc_device_attribute, ptr %21, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  call void @kfree(ptr noundef %67) #5
  call void @kfree(ptr noundef nonnull %21) #5
  %68 = ptrtoint ptr %62 to i32
  br label %74

69:                                               ; preds = %61
  %70 = load ptr, ptr %43, align 4
  %71 = load ptr, ptr %55, align 8
  %72 = load ptr, ptr %57, align 8
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %70, ptr noundef %71, ptr noundef %72) #7
  br label %74

74:                                               ; preds = %69, %64, %17, %8, %4
  %75 = phi i32 [ %68, %64 ], [ 0, %69 ], [ -19, %8 ], [ -19, %4 ], [ -19, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret i32 %75
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
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
!8 = !{i64 362533}
!9 = !{i64 2151451647}
!10 = !{i64 2151451947}
!11 = !{i64 2151452251}
