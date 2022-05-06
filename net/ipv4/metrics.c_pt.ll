; ModuleID = '/llk/IR/net/ipv4/metrics.c_pt.bc'
source_filename = "../net/ipv4/metrics.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_fib_metrics_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_fib_metrics_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip_fib_metrics_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@__kstrtab_ip_fib_metrics_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_fib_metrics_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_fib_metrics_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_fib_metrics_init to i32), ptr @__kstrtab_ip_fib_metrics_init, ptr @__kstrtabns_ip_fib_metrics_init }, section "___ksymtab_gpl+ip_fib_metrics_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ip_metrics_convert.__msg = internal constant [20 x i8] c"Invalid metric type\00", align 1
@ip_metrics_convert.__msg.1 = internal constant [33 x i8] c"Unknown tcp congestion algorithm\00", align 1
@ip_metrics_convert.__msg.2 = internal constant [29 x i8] c"Invalid attribute in metrics\00", align 1
@ip_metrics_convert.__msg.3 = internal constant [54 x i8] c"Unknown flag set in feature mask in metrics attribute\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ip_fib_metrics_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_fib_metrics_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca [16 x i8], align 1
  %7 = icmp eq ptr %1, null
  br i1 %7, label %96, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 72) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %96, label %12, !prof !8

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1
  %13 = icmp sgt i32 %2, 3
  br i1 %13, label %14, label %93

14:                                               ; preds = %79, %12
  %15 = phi ptr [ %84, %79 ], [ %1, %12 ]
  %16 = phi i32 [ %83, %79 ], [ %2, %12 ]
  %17 = load i16, ptr %15, align 2
  %18 = icmp ult i16 %17, 4
  %19 = zext i16 %17 to i32
  %20 = icmp ult i32 %16, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %86, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.nlattr, ptr %15, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, 16383
  %26 = zext i16 %25 to i32
  %27 = icmp eq i16 %25, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %22
  %29 = icmp ugt i16 %25, 17
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg) #6
  %31 = icmp eq ptr %3, null
  br i1 %31, label %95, label %32

32:                                               ; preds = %30
  store ptr @ip_metrics_convert.__msg, ptr %3, align 4
  br label %95

33:                                               ; preds = %28
  %34 = icmp eq i16 %25, 16
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #6, !annotation !9
  %36 = call i32 @nla_strscpy(ptr noundef nonnull %6, ptr noundef %15, i32 noundef 16) #6
  %37 = call i32 @tcp_ca_get_key_by_name(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg.1) #6
  %40 = icmp eq ptr %3, null
  br i1 %40, label %78, label %41

41:                                               ; preds = %39
  store ptr @ip_metrics_convert.__msg.1, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %95

42:                                               ; preds = %33
  %43 = icmp eq i16 %17, 8
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg.2) #6
  %45 = icmp eq ptr %3, null
  br i1 %45, label %95, label %46

46:                                               ; preds = %44
  store ptr @ip_metrics_convert.__msg.2, ptr %3, align 4
  %47 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  store ptr %15, ptr %47, align 4
  %48 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  store ptr null, ptr %48, align 4
  br label %95

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %15, i32 4
  %51 = load i32, ptr %50, align 4
  br label %53

52:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ %37, %52 ]
  %55 = icmp eq i16 %25, 8
  %56 = icmp ugt i32 %54, 65495
  %57 = select i1 %55, i1 %56, i1 false
  %58 = select i1 %57, i32 65495, i32 %54
  %59 = icmp eq i16 %25, 2
  %60 = icmp ugt i32 %58, 65520
  %61 = select i1 %59, i1 %60, i1 false
  %62 = select i1 %61, i32 65520, i32 %58
  %63 = icmp eq i16 %25, 10
  %64 = icmp ugt i32 %62, 255
  %65 = select i1 %63, i1 %64, i1 false
  %66 = select i1 %65, i32 255, i32 %62
  %67 = icmp ne i16 %25, 12
  %68 = icmp ult i32 %66, 16
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %53
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg.3) #6
  %71 = icmp eq ptr %3, null
  br i1 %71, label %95, label %72

72:                                               ; preds = %70
  store ptr @ip_metrics_convert.__msg.3, ptr %3, align 4
  br label %95

73:                                               ; preds = %53
  %74 = add nsw i32 %26, -1
  %75 = getelementptr i32, ptr %10, i32 %74
  store i32 %66, ptr %75, align 4
  %76 = load i16, ptr %15, align 2
  %77 = zext i16 %76 to i32
  br label %79

78:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %95

79:                                               ; preds = %73, %22
  %80 = phi i32 [ %77, %73 ], [ %19, %22 ]
  %81 = add nuw nsw i32 %80, 3
  %82 = and i32 %81, 131068
  %83 = sub nsw i32 %16, %82
  %84 = getelementptr i8, ptr %15, i32 %82
  %85 = icmp sgt i32 %83, 3
  br i1 %85, label %14, label %86

86:                                               ; preds = %79, %14
  %87 = load i8, ptr %5, align 1, !range !10
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr i32, ptr %10, i32 11
  %91 = load i32, ptr %90, align 4
  %92 = or i32 %91, -2147483648
  store i32 %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %89, %86, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %94 = getelementptr inbounds %struct.dst_metrics, ptr %10, i32 0, i32 1
  store volatile i32 1, ptr %94, align 4
  br label %96

95:                                               ; preds = %78, %72, %70, %46, %44, %41, %32, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @kfree(ptr noundef nonnull %10) #6
  br label %96

96:                                               ; preds = %95, %93, %8, %4
  %97 = phi ptr [ @dst_default_metrics, %4 ], [ inttoptr (i32 -22 to ptr), %95 ], [ %10, %93 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %97
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_ca_get_key_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
