; ModuleID = '/llk/IR/fs/nfs/io.c_pt.bc'
source_filename = "../fs/nfs/io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.151 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.152 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.154 = type { ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_start_io_read(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @down_read(ptr noundef %2) #2
  %3 = getelementptr i8, ptr %0, i32 -156
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  tail call void @up_read(ptr noundef %2) #2
  tail call void @down_write(ptr noundef %2) #2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 4096
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %3) #2
  tail call void @inode_dio_wait(ptr noundef %0) #2
  br label %12

12:                                               ; preds = %11, %7
  tail call void @downgrade_write(ptr noundef %2) #2
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_end_io_read(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @up_read(ptr noundef %2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_start_io_write(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @down_write(ptr noundef %2) #2
  %3 = getelementptr i8, ptr %0, i32 -156
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %3) #2
  tail call void @inode_dio_wait(ptr noundef %0) #2
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_end_io_write(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @up_write(ptr noundef %2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_start_io_direct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @down_read(ptr noundef %2) #2
  %3 = getelementptr i8, ptr %0, i32 -156
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  tail call void @up_read(ptr noundef %2) #2
  tail call void @down_write(ptr noundef %2) #2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 4096
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 12, ptr noundef %3) #2
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @nfs_sync_mapping(ptr noundef %13) #2
  br label %15

15:                                               ; preds = %11, %7
  tail call void @downgrade_write(ptr noundef %2) #2
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_end_io_direct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @up_read(ptr noundef %2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_sync_mapping(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
