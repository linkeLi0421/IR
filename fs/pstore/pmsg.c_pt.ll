; ModuleID = '/llk/IR/fs/pstore/pmsg.c_pt.bc'
source_filename = "../fs/pstore/pmsg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@.str = private unnamed_addr constant [5 x i8] c"pmsg\00", align 1
@pmsg_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @write_pmsg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pmsg_major = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\013pmsg: register_chrdev failed\0A\00", align 1
@pstore_register_pmsg.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@pmsg_class = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\013pmsg: device class file already in use\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013pmsg: failed to create device\0A\00", align 1
@psinfo = external dso_local local_unnamed_addr global ptr, align 4
@pmsg_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pmsg_lock, i64 12), ptr getelementptr (i8, ptr @pmsg_lock, i64 12) } }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pstore_register_pmsg() local_unnamed_addr #0 {
  %1 = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @pmsg_fops) #6
  store i32 %1, ptr @pmsg_major, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %21

5:                                                ; preds = %0
  %6 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @pstore_register_pmsg.__key) #6
  store ptr %6, ptr @pmsg_class, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 6
  store ptr @pmsg_devnode, ptr %11, align 4
  %12 = load i32, ptr @pmsg_major, align 4
  %13 = shl i32 %12, 20
  %14 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %6, ptr noundef null, i32 noundef %13, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 0) #6
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  %18 = load ptr, ptr @pmsg_class, align 4
  tail call void @class_destroy(ptr noundef %18) #6
  br label %19

19:                                               ; preds = %16, %8
  %20 = load i32, ptr @pmsg_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %20, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #6
  br label %21

21:                                               ; preds = %19, %10, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal noalias ptr @pmsg_devnode(ptr nocapture noundef readnone %0, ptr noundef writeonly %1) #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i16 144, ptr %1, align 2
  br label %5

5:                                                ; preds = %4, %2
  ret ptr null
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pstore_unregister_pmsg() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pmsg_class, align 4
  %2 = load i32, ptr @pmsg_major, align 4
  %3 = shl i32 %2, 20
  tail call void @device_destroy(ptr noundef %1, i32 noundef %3) #6
  %4 = load ptr, ptr @pmsg_class, align 4
  tail call void @class_destroy(ptr noundef %4) #6
  %5 = load i32, ptr @pmsg_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %5, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_pmsg(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.pstore_record, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @psinfo, align 4
  call void @pstore_record_init(ptr noundef nonnull %5, ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.pstore_record, ptr %5, i32 0, i32 1
  store i32 7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pstore_record, ptr %5, i32 0, i32 5
  store i32 %2, ptr %10, align 4
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #8, !srcloc !9
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  call void @mutex_lock(ptr noundef nonnull @pmsg_lock) #6
  %15 = load ptr, ptr @psinfo, align 4
  %16 = getelementptr inbounds %struct.pstore_info, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef nonnull %5, ptr noundef %1) #6
  call void @mutex_unlock(ptr noundef nonnull @pmsg_lock) #6
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %2, i32 %18
  br label %21

21:                                               ; preds = %14, %7, %4
  %22 = phi i32 [ %20, %14 ], [ 0, %4 ], [ -14, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_record_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 2151798876, i64 2151798901}
