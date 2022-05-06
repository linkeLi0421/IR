; ModuleID = '/llk/IR/drivers/crypto/caam/debugfs.c_pt.bc'
source_filename = "../drivers/crypto/caam/debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rq_dequeued\00", align 1
@caam_fops_u64_ro = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @caam_fops_u64_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ob_rq_encrypted\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ib_rq_decrypted\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ob_bytes_encrypted\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ob_bytes_protected\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ib_bytes_decrypted\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ib_bytes_validated\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"fault_addr\00", align 1
@caam_fops_u32_ro = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @caam_fops_u32_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"fault_detail\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"fault_status\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"kek\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"tkek\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"tdsk\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.14 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @caam_debugfs_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26
  %5 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %1) #4
  %6 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 15
  store ptr %5, ptr %6, align 4
  %7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %4, ptr noundef nonnull @caam_fops_u64_ro) #4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 1
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %9, ptr noundef nonnull @caam_fops_u64_ro) #4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 2
  %13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %12, ptr noundef nonnull @caam_fops_u64_ro) #4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 3
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %14, ptr noundef %15, ptr noundef nonnull @caam_fops_u64_ro) #4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 4
  %19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %17, ptr noundef %18, ptr noundef nonnull @caam_fops_u64_ro) #4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 5
  %22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %20, ptr noundef %21, ptr noundef nonnull @caam_fops_u64_ro) #4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 6
  %25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %23, ptr noundef %24, ptr noundef nonnull @caam_fops_u64_ro) #4
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 13
  %28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %26, ptr noundef %27, ptr noundef nonnull @caam_fops_u32_ro) #4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 15
  %31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %29, ptr noundef %30, ptr noundef nonnull @caam_fops_u32_ro) #4
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 26, i32 17
  %34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %32, ptr noundef %33, ptr noundef nonnull @caam_fops_u32_ro) #4
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.caam_ctrl, ptr %35, i32 0, i32 17
  %37 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 16
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 16, i32 1
  store i32 32, ptr %38, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %39, ptr noundef %37) #4
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.caam_ctrl, ptr %41, i32 0, i32 18
  %43 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 17
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 17, i32 1
  store i32 32, ptr %44, align 4
  %45 = load ptr, ptr %6, align 4
  %46 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %45, ptr noundef %43) #4
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.caam_ctrl, ptr %47, i32 0, i32 19
  %49 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 18
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 18, i32 1
  store i32 32, ptr %50, align 4
  %51 = load ptr, ptr %6, align 4
  %52 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %51, ptr noundef %49) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_fops_u64_ro_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @caam_debugfs_u64_get, ptr noundef null, ptr noundef nonnull @.str.14) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @caam_debugfs_u64_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load i64, ptr %0, align 8
  %4 = load i8, ptr @caam_little_end, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  %6 = tail call i64 @llvm.bswap.i64(i64 %3) #4
  %7 = select i1 %5, i64 %6, i64 %3
  store i64 %7, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_fops_u32_ro_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @caam_debugfs_u32_get, ptr noundef null, ptr noundef nonnull @.str.14) #4
  ret i32 %3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @caam_debugfs_u32_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load i32, ptr %0, align 4
  %4 = load i8, ptr @caam_little_end, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %7 = select i1 %5, i32 %6, i32 %3
  %8 = zext i32 %7 to i64
  store i64 %8, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
