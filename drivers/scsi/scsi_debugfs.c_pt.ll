; ModuleID = '/llk/IR/drivers/scsi/scsi_debugfs.c_pt.bc'
source_filename = "../drivers/scsi/scsi_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.27, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.28, %union.anon.29, %union.anon.30, %union.anon.35, ptr, ptr }
%union.anon.27 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.28 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.29 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.30 = type { %struct.anon.34 }
%struct.anon.34 = type { i32, %struct.list_head, ptr }
%union.anon.35 = type { i64, [8 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [47 x i8] c", .cmd=%s, .retries=%d, .result = %#x, .flags=\00", align 1
@scsi_cmd_flags = internal unnamed_addr constant [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@.str.1 = private unnamed_addr constant [44 x i8] c", .timeout=%d.%03d, allocated %d.%03d s ago\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TAGGED\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"INITIALIZED\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LAST\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_show_rq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 1
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr %struct.request, ptr %1, i32 1, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = tail call i32 @jiffies_to_msecs(i32 noundef %8) #4
  %10 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @jiffies_to_msecs(i32 noundef %11) #4
  %13 = getelementptr %struct.request, ptr %1, i32 1, i32 25, i32 0, i32 2
  %14 = load volatile ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #4
  %15 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %15, i8 0, i32 77, i1 false)
  store i8 40, ptr %4, align 1
  %16 = getelementptr inbounds [80 x i8], ptr %4, i32 0, i32 1
  store i8 63, ptr %16, align 1
  %17 = getelementptr inbounds [80 x i8], ptr %4, i32 0, i32 2
  store i8 41, ptr %17, align 1
  %18 = icmp eq ptr %14, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = getelementptr %struct.request, ptr %1, i32 1, i32 25, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = call i32 @__scsi_format_command(ptr noundef nonnull %4, i32 noundef 80, ptr noundef nonnull %14, i32 noundef %22) #4
  br label %24

24:                                               ; preds = %19, %2
  %25 = getelementptr %struct.request, ptr %1, i32 1, i32 24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.request, ptr %1, i32 2, i32 11
  %28 = load i32, ptr %27, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef %26, i32 noundef %28) #4
  %29 = getelementptr %struct.request, ptr %1, i32 2, i32 12
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %30, ptr %3, align 4
  %31 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %58

33:                                               ; preds = %24
  %34 = icmp slt i32 %31, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = getelementptr ptr, ptr @scsi_cmd_flags, i32 %31
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %37) #4
  br label %41

40:                                               ; preds = %35, %33
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %31) #4
  br label %41

41:                                               ; preds = %40, %39
  %42 = add nsw i32 %31, 1
  %43 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %42) #4
  %44 = icmp slt i32 %43, 32
  br i1 %44, label %45, label %58

45:                                               ; preds = %54, %41
  %46 = phi i32 [ %56, %54 ], [ %43, %41 ]
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = getelementptr ptr, ptr @scsi_cmd_flags, i32 %46
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %50) #4
  br label %54

53:                                               ; preds = %48, %45
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %46) #4
  br label %54

54:                                               ; preds = %53, %52
  %55 = add nsw i32 %46, 1
  %56 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %55) #4
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %45, label %58, !llvm.loop !8

58:                                               ; preds = %54, %41, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %59 = freeze i32 %12
  %60 = sdiv i32 %59, 1000
  %61 = mul i32 %60, 1000
  %62 = sub i32 %59, %61
  %63 = freeze i32 %9
  %64 = sdiv i32 %63, 1000
  %65 = mul i32 %64, 1000
  %66 = sub i32 %63, %65
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_format_command(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 1}
