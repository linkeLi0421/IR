; ModuleID = '/llk/IR/fs/bad_inode.c_pt.bc'
source_filename = "../fs/bad_inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_make_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22make_bad_inode\22\09\09\09\09\09"
module asm "__kstrtabns_make_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22is_bad_inode\22\09\09\09\09\09"
module asm "__kstrtabns_is_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iget_failed:\09\09\09\09\09"
module asm "\09.asciz \09\22iget_failed\22\09\09\09\09\09"
module asm "__kstrtabns_iget_failed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.59 = type { ptr }

@bad_inode_ops = internal constant %struct.inode_operations { ptr @bad_inode_lookup, ptr @bad_inode_get_link, ptr @bad_inode_permission, ptr @bad_inode_get_acl, ptr @bad_inode_readlink, ptr @bad_inode_create, ptr @bad_inode_link, ptr @bad_inode_unlink, ptr @bad_inode_symlink, ptr @bad_inode_mkdir, ptr @bad_inode_rmdir, ptr @bad_inode_mknod, ptr @bad_inode_rename2, ptr @bad_inode_setattr, ptr @bad_inode_getattr, ptr @bad_inode_listxattr, ptr @bad_inode_fiemap, ptr @bad_inode_update_time, ptr @bad_inode_atomic_open, ptr @bad_inode_tmpfile, ptr @bad_inode_set_acl, ptr null, ptr null, [36 x i8] undef }, align 64
@bad_file_ops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bad_file_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_make_bad_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_make_bad_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_make_bad_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @make_bad_inode to i32), ptr @__kstrtab_make_bad_inode, ptr @__kstrtabns_make_bad_inode }, section "___ksymtab+make_bad_inode", align 4
@__kstrtab_is_bad_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_bad_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_is_bad_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_bad_inode to i32), ptr @__kstrtab_is_bad_inode, ptr @__kstrtabns_is_bad_inode }, section "___ksymtab+is_bad_inode", align 4
@__kstrtab_iget_failed = external dso_local constant [0 x i8], align 1
@__kstrtabns_iget_failed = external dso_local constant [0 x i8], align 1
@__ksymtab_iget_failed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iget_failed to i32), ptr @__kstrtab_iget_failed, ptr @__kstrtabns_iget_failed }, section "___ksymtab+iget_failed", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_iget_failed, ptr @__ksymtab_is_bad_inode, ptr @__ksymtab_make_bad_inode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @make_bad_inode(ptr noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @__remove_inode_hash(ptr noundef %0) #6
  br label %10

10:                                               ; preds = %9, %1
  store i16 -32768, ptr %0, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %2, ptr noundef %0) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %12, ptr noundef align 8 dereferenceable(16) %13, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %13, i32 16, i1 false)
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @bad_inode_ops, ptr %14, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, -9
  store i16 %17, ptr %15, align 2
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @bad_file_ops, ptr %18, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_bad_inode(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @bad_inode_ops
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iget_failed(ptr noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @__remove_inode_hash(ptr noundef %0) #6
  br label %10

10:                                               ; preds = %9, %1
  store i16 -32768, ptr %0, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %2, ptr noundef %0) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %12, ptr noundef align 8 dereferenceable(16) %13, i32 16, i1 false) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %13, i32 16, i1 false) #6
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @bad_inode_ops, ptr %14, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, -9
  store i16 %17, ptr %15, align 2
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @bad_file_ops, ptr %18, align 8
  call void @unlock_new_inode(ptr noundef %0) #6
  call void @iput(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bad_inode_lookup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bad_inode_get_link(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #5 {
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_permission(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bad_inode_get_acl(ptr nocapture noundef readnone %0, i32 noundef %1, i1 noundef zeroext %2) #5 {
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_readlink(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_create(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_link(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_unlink(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_symlink(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_mkdir(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_rmdir(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_mknod(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3, i32 noundef %4) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_rename2(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, i32 noundef %5) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_setattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_listxattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_fiemap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2, i64 noundef %3) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_update_time(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_atomic_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, i16 noundef zeroext %4) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_tmpfile(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_set_acl(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #5 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bad_file_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -5
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
