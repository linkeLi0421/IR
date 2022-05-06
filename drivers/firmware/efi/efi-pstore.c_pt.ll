; ModuleID = '/llk/IR/drivers/firmware/efi/efi-pstore.c_pt.bc'
source_filename = "../drivers/firmware/efi/efi-pstore.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.efivar_entry = type { %struct.efi_variable, %struct.list_head, %struct.kobject, i8, i8 }
%struct.efi_variable = type { [512 x i16], %struct.guid_t, i32, [1024 x i8], i32, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@__param_str_pstore_disable = internal constant [26 x i8] c"efi_pstore.pstore_disable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@efivars_pstore_disable = internal global i8 0, align 1
@__param_pstore_disable = internal constant %struct.kernel_param { ptr @__param_str_pstore_disable, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @efivars_pstore_disable } }, section "__param", align 4
@__UNIQUE_ID_pstore_disabletype210 = internal constant [40 x i8] c"efi_pstore.parmtype=pstore_disable:bool\00", section ".modinfo", align 1
@efi_pstore_info = internal global %struct.pstore_info { ptr null, ptr @.str, %struct.semaphore zeroinitializer, ptr null, i32 0, %struct.mutex zeroinitializer, i32 1, i32 0, ptr null, ptr @efi_pstore_open, ptr @efi_pstore_close, ptr @efi_pstore_read, ptr @efi_pstore_write, ptr null, ptr @efi_pstore_erase }, align 4
@__initcall__kmod_efi_pstore__213_462_efivars_pstore_init6 = internal global ptr @efivars_pstore_init, section ".initcall6.init", align 4
@__exitcall_efivars_pstore_exit = internal global ptr @efivars_pstore_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description214 = internal constant [55 x i8] c"efi_pstore.description=EFI variable backend for pstore\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [48 x i8] c"efi_pstore.file=drivers/firmware/efi/efi-pstore\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [23 x i8] c"efi_pstore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias217 = internal constant [34 x i8] c"efi_pstore.alias=platform:efivars\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"efi\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@efi_pstore_list = internal global %struct.list_head { ptr @efi_pstore_list, ptr @efi_pstore_list }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"dump-type%u-%u-%d-%llu-%c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"dump-type%u-%u-%d-%llu\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"dump-type%u-%u-%llu\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"dump-type%u-%u-%d-%lld-%c\00", align 1
@efivar_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @efivar_work, i64 4), ptr getelementptr (i8, ptr @efivar_work, i64 4) }, ptr null }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"dump-type%u-%u-%d-%lld\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dump-type%u-%u-%lld\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias217, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__UNIQUE_ID_pstore_disabletype210, ptr @__exitcall_efivars_pstore_exit, ptr @__initcall__kmod_efi_pstore__213_462_efivars_pstore_init6, ptr @__param_pstore_disable, ptr @efivars_pstore_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @efivars_pstore_exit() #0 section ".exit.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 4), align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @pstore_unregister(ptr noundef nonnull @efi_pstore_info) #11
  %4 = load ptr, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %4) #11
  store ptr null, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 4), align 4
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @efivars_pstore_init() #0 section ".init.text" {
  %1 = tail call ptr @efivars_kobject() #11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @efivar_supports_writes() #11
  %5 = icmp ne i32 %4, 0
  %6 = load i8, ptr @efivars_pstore_disable, align 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = tail call i32 @efivar_init(ptr noundef nonnull @efi_pstore_callback, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @efi_pstore_list) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4096) #12
  store ptr %14, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 3), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  store i32 1024, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 4), align 4
  %17 = tail call i32 @pstore_register(ptr noundef nonnull @efi_pstore_info) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %20) #11
  store ptr null, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.pstore_info, ptr @efi_pstore_info, i32 0, i32 4), align 4
  br label %21

21:                                               ; preds = %19, %16
  store i32 -32, ptr @efivar_work, align 4
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @efivar_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @efivar_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @efivar_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @efivar_work, i32 0, i32 1, i32 1), align 4
  store ptr @efi_pstore_update_entries, ptr getelementptr inbounds (%struct.work_struct, ptr @efivar_work, i32 0, i32 2), align 4
  br label %22

22:                                               ; preds = %21, %12, %9, %3, %0
  %23 = phi i32 [ 0, %21 ], [ 0, %3 ], [ 0, %0 ], [ %10, %9 ], [ -12, %12 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @efi_pstore_open(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 8
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @efi_pstore_close(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 8
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_pstore_read(ptr noundef %0) #3 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1024) #12
  %4 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 4
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %72, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @efivar_entry_iter_begin() #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.pstore_info, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.efivar_entry, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -2076
  %18 = icmp eq ptr %15, @efi_pstore_list
  br i1 %18, label %63, label %41

19:                                               ; preds = %9
  %20 = load ptr, ptr @efi_pstore_list, align 4
  %21 = getelementptr i8, ptr %20, i32 -2076
  br label %22

22:                                               ; preds = %39, %19
  %23 = phi ptr [ %20, %19 ], [ %25, %39 ]
  %24 = phi ptr [ %21, %19 ], [ %26, %39 ]
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %25, i32 -2076
  %27 = getelementptr inbounds %struct.efivar_entry, ptr %24, i32 0, i32 1
  %28 = icmp eq ptr %27, @efi_pstore_list
  br i1 %28, label %63, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.efivar_entry, ptr %24, i32 0, i32 3
  store i8 1, ptr %30, align 4
  %31 = icmp eq ptr %25, @efi_pstore_list
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %25, i32 44
  store i8 1, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call fastcc i32 @efi_pstore_read_func(ptr noundef %24, ptr noundef %0) #11
  %36 = icmp slt i32 %35, 0
  %37 = tail call fastcc i32 @efi_pstore_scan_sysfs_exit(ptr noundef %24, ptr noundef %26, i1 noundef zeroext %36) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %22, label %63

41:                                               ; preds = %58, %14
  %42 = phi ptr [ %43, %58 ], [ %12, %14 ]
  %43 = phi ptr [ %61, %58 ], [ %17, %14 ]
  %44 = phi ptr [ %60, %58 ], [ %16, %14 ]
  %45 = getelementptr inbounds %struct.efivar_entry, ptr %42, i32 0, i32 3
  store i8 1, ptr %45, align 4
  %46 = icmp eq ptr %44, @efi_pstore_list
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %44, i32 44
  store i8 1, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load ptr, ptr %11, align 4
  %51 = tail call fastcc i32 @efi_pstore_read_func(ptr noundef %50, ptr noundef %0) #11
  %52 = load ptr, ptr %11, align 4
  %53 = icmp slt i32 %51, 0
  %54 = tail call fastcc i32 @efi_pstore_scan_sysfs_exit(ptr noundef %52, ptr noundef %43, i1 noundef zeroext %53) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = icmp eq i32 %51, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  store ptr %43, ptr %11, align 4
  %59 = getelementptr inbounds %struct.efivar_entry, ptr %43, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -2076
  %62 = icmp eq ptr %59, @efi_pstore_list
  br i1 %62, label %63, label %41

63:                                               ; preds = %58, %56, %39, %22, %14
  %64 = phi ptr [ %17, %14 ], [ %26, %22 ], [ %26, %39 ], [ %61, %58 ], [ %43, %56 ]
  %65 = phi i32 [ 0, %14 ], [ %35, %39 ], [ 0, %22 ], [ 0, %58 ], [ %51, %56 ]
  store ptr %64, ptr %11, align 4
  br label %66

66:                                               ; preds = %63, %49, %34
  %67 = phi i32 [ %65, %63 ], [ %37, %34 ], [ %54, %49 ]
  tail call void @efivar_entry_iter_end() #11
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %6
  %70 = phi i32 [ %67, %66 ], [ -4, %6 ]
  %71 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %71) #11
  store ptr null, ptr %4, align 8
  br label %72

72:                                               ; preds = %69, %66, %1
  %73 = phi i32 [ -12, %1 ], [ %70, %69 ], [ %67, %66 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_pstore_write(ptr nocapture noundef %0) #3 {
  %2 = alloca [66 x i8], align 1
  %3 = alloca [66 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(132) %3, i8 0, i32 132, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = mul i64 %5, 100
  %11 = zext i32 %7 to i64
  %12 = add i64 %10, %11
  %13 = mul i64 %12, 1000
  %14 = sext i32 %9 to i64
  %15 = add i64 %13, %14
  %16 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  store i64 %15, ptr %16, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(66) %2, i8 0, i32 66, i1 false)
  %17 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 10
  %20 = load i8, ptr %19, align 8, !range !9
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 68, i32 67
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 66, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %7, i32 noundef %9, i64 noundef %5, i32 noundef %22)
  br label %24

24:                                               ; preds = %24, %1
  %25 = phi i32 [ 0, %1 ], [ %30, %24 ]
  %26 = getelementptr [66 x i8], ptr %2, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  %29 = getelementptr [66 x i16], ptr %3, i32 0, i32 %25
  store i16 %28, ptr %29, align 2
  %30 = add nuw nsw i32 %25, 1
  %31 = icmp eq i32 %30, 66
  br i1 %31, label %32, label %24

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.pstore_info, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @efivar_entry_set_safe(ptr noundef nonnull %3, [4 x i32] [i32 -808911751, i32 1306312238, i32 -1734348649, i32 -1600593217], i32 noundef 7, i1 noundef zeroext false, i32 noundef %34, ptr noundef %37) #11
  %39 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = load ptr, ptr @system_wq, align 4
  %46 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef nonnull @efivar_work) #11
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call void @module_put(ptr noundef null) #11
  br label %48

48:                                               ; preds = %47, %44, %42, %32
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %2) #11
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_pstore_erase(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca ptr, align 4
  %3 = alloca [66 x i16], align 2
  %4 = alloca ptr, align 4
  %5 = alloca [66 x i16], align 2
  %6 = alloca [66 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(66) %6, i8 0, i32 66, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 66, ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef %10, i32 noundef %12, i64 noundef %14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(132) %5, i8 0, i32 132, i1 false) #11, !annotation !8
  br label %16

16:                                               ; preds = %16, %1
  %17 = phi i32 [ 0, %1 ], [ %23, %16 ]
  %18 = getelementptr i8, ptr %6, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  %21 = getelementptr [66 x i16], ptr %5, i32 0, i32 %17
  store i16 %20, ptr %21, align 2
  %22 = icmp eq i8 %19, 0
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, 66
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %16

26:                                               ; preds = %16
  %27 = tail call i32 @efivar_entry_iter_begin() #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = call i32 @__efivar_entry_iter(ptr noundef nonnull @efi_pstore_erase_func, ptr noundef nonnull @efi_pstore_list, ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  call void @efivar_entry_iter_end() #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.efivar_entry, ptr %33, i32 0, i32 3
  %35 = load i8, ptr %34, align 4, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @kfree(ptr noundef %33) #11
  br label %38

38:                                               ; preds = %37, %32, %26
  %39 = phi i32 [ 0, %32 ], [ 0, %37 ], [ -4, %26 ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %69

40:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %41 = load i32, ptr %7, align 4
  %42 = load i32, ptr %9, align 4
  %43 = load i64, ptr %13, align 8
  %44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 66, ptr noundef nonnull @.str.6, i32 noundef %41, i32 noundef %42, i64 noundef %43)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(132) %3, i8 0, i32 132, i1 false) #11, !annotation !8
  br label %45

45:                                               ; preds = %45, %40
  %46 = phi i32 [ 0, %40 ], [ %52, %45 ]
  %47 = getelementptr i8, ptr %6, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  %50 = getelementptr [66 x i16], ptr %3, i32 0, i32 %46
  store i16 %49, ptr %50, align 2
  %51 = icmp eq i8 %48, 0
  %52 = add nuw nsw i32 %46, 1
  %53 = icmp eq i32 %52, 66
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %45

55:                                               ; preds = %45
  %56 = call i32 @efivar_entry_iter_begin() #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = call i32 @__efivar_entry_iter(ptr noundef nonnull @efi_pstore_erase_func, ptr noundef nonnull @efi_pstore_list, ptr noundef nonnull %3, ptr noundef nonnull %2) #11
  call void @efivar_entry_iter_end() #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.efivar_entry, ptr %62, i32 0, i32 3
  %64 = load i8, ptr %63, align 4, !range !9
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  call void @kfree(ptr noundef %62) #11
  br label %67

67:                                               ; preds = %66, %61, %58, %55
  %68 = phi i32 [ -4, %55 ], [ 0, %66 ], [ 0, %61 ], [ -2, %58 ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %69

69:                                               ; preds = %67, %38
  %70 = phi i32 [ %68, %67 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %6) #11
  ret i32 %70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_iter_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efivar_entry_iter_end() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @efi_pstore_read_func(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.guid_t, align 4
  %4 = alloca %struct.guid_t, align 4
  %5 = alloca [66 x i8], align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(66) %5, i8 0, i32 66, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  store i64 0, ptr %9, align 8, !annotation !8
  %10 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  store i32 %11, ptr %3, align 4
  %18 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  store i32 %13, ptr %18, align 4
  %19 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 %15, ptr %19, align 4
  %20 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %17, ptr %20, align 4
  store i32 -808911751, ptr %4, align 4
  %21 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  store i32 1306312238, ptr %21, align 4
  %22 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  store i32 -1734348649, ptr %22, align 4
  %23 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  store i32 -1600593217, ptr %23, align 4
  %24 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %4, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %101

26:                                               ; preds = %26, %2
  %27 = phi i32 [ %32, %26 ], [ 0, %2 ]
  %28 = getelementptr [512 x i16], ptr %0, i32 0, i32 %27
  %29 = load i16, ptr %28, align 2
  %30 = trunc i16 %29 to i8
  %31 = getelementptr [66 x i8], ptr %5, i32 0, i32 %27
  store i8 %30, ptr %31, align 1
  %32 = add nuw nsw i32 %27, 1
  %33 = icmp eq i32 %32, 66
  br i1 %33, label %34, label %26

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 1
  %36 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %35, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %6)
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i64, ptr %9, align 8
  %40 = load i32, ptr %8, align 4
  %41 = load i32, ptr %7, align 4
  %42 = mul i64 %39, 100
  %43 = zext i32 %40 to i64
  %44 = add i64 %42, %43
  %45 = mul i64 %44, 1000
  %46 = sext i32 %41 to i64
  %47 = add i64 %45, %46
  %48 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 2
  store i64 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 9
  store i32 %40, ptr %49, align 4
  %50 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 7
  store i32 %41, ptr %50, align 4
  %51 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 3
  store i64 %39, ptr %51, align 8
  %52 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 3, i32 1
  store i32 0, ptr %52, align 8
  %53 = load i8, ptr %6, align 1
  %54 = icmp eq i8 %53, 67
  %55 = zext i1 %54 to i8
  br label %89

56:                                               ; preds = %34
  %57 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef %35, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i64, ptr %9, align 8
  %61 = load i32, ptr %8, align 4
  %62 = load i32, ptr %7, align 4
  %63 = mul i64 %60, 100
  %64 = zext i32 %61 to i64
  %65 = add i64 %63, %64
  %66 = mul i64 %65, 1000
  %67 = sext i32 %62 to i64
  %68 = add i64 %66, %67
  %69 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 2
  store i64 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 9
  store i32 %61, ptr %70, align 4
  %71 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 7
  store i32 %62, ptr %71, align 4
  %72 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 3
  store i64 %60, ptr %72, align 8
  %73 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 3, i32 1
  store i32 0, ptr %73, align 8
  br label %89

74:                                               ; preds = %56
  %75 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef %35, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load i64, ptr %9, align 8
  %79 = load i32, ptr %8, align 4
  %80 = mul i64 %78, 100
  %81 = zext i32 %79 to i64
  %82 = add i64 %80, %81
  %83 = mul i64 %82, 1000
  %84 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 2
  store i64 %83, ptr %84, align 8
  %85 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 9
  store i32 %79, ptr %85, align 4
  %86 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 7
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 3
  store i64 %78, ptr %87, align 8
  %88 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 3, i32 1
  store i32 0, ptr %88, align 8
  br label %89

89:                                               ; preds = %77, %59, %38
  %90 = phi i8 [ 0, %59 ], [ 0, %77 ], [ %55, %38 ]
  %91 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 10
  store i8 %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 6
  store i32 0, ptr %92, align 8
  %93 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 2
  store i32 1024, ptr %93, align 4
  %94 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 5
  %95 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 3
  %96 = call i32 @__efivar_entry_get(ptr noundef %0, ptr noundef %94, ptr noundef %93, ptr noundef %95) #11
  %97 = load i32, ptr %93, align 4
  %98 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 4
  %99 = load ptr, ptr %98, align 8
  %100 = call i32 @llvm.umin.i32(i32 %97, i32 1024)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %99, ptr align 4 %95, i32 %100, i1 false)
  br label %101

101:                                              ; preds = %89, %74, %2
  %102 = phi i32 [ %97, %89 ], [ 0, %2 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %5) #11
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @efi_pstore_scan_sysfs_exit(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @efivar_entry_iter_end() #11
  tail call void @kfree(ptr noundef %0) #11
  %13 = tail call i32 @efivar_entry_iter_begin() #11
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %2, true
  %16 = or i1 %14, %15
  %17 = select i1 %14, i32 -4, i32 0
  br i1 %16, label %37, label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 3
  store i8 0, ptr %19, align 4
  br i1 %2, label %20, label %37

20:                                               ; preds = %18, %7
  %21 = getelementptr inbounds %struct.efivar_entry, ptr %1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.efivar_entry, ptr %1, i32 0, i32 4
  %23 = load i8, ptr %22, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.efivar_entry, ptr %1, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @efivar_entry_iter_end() #11
  tail call void @kfree(ptr noundef %1) #11
  %30 = tail call i32 @efivar_entry_iter_begin() #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %37

32:                                               ; preds = %20
  %33 = icmp eq ptr %21, @efi_pstore_list
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.efivar_entry, ptr %1, i32 0, i32 3
  store i8 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %32, %25
  br label %37

37:                                               ; preds = %36, %25, %18, %7
  %38 = phi i32 [ 0, %18 ], [ 0, %36 ], [ -4, %25 ], [ %17, %7 ]
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__efivar_entry_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_set_safe(ptr noundef, [4 x i32], i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__efivar_entry_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_pstore_erase_func(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.guid_t, align 4
  %4 = alloca %struct.guid_t, align 4
  %5 = tail call i32 @ucs2_strlen(ptr noundef %1) #11
  %6 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  store i32 %7, ptr %3, align 4
  %14 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  store i32 %9, ptr %14, align 4
  %15 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 %11, ptr %15, align 4
  %16 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %13, ptr %16, align 4
  store i32 -808911751, ptr %4, align 4
  %17 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  store i32 1306312238, ptr %17, align 4
  %18 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  store i32 -1734348649, ptr %18, align 4
  %19 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  store i32 -1600593217, ptr %19, align 4
  %20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %4, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = tail call i32 @ucs2_strncmp(ptr noundef %0, ptr noundef %1, i32 noundef %5) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 3
  %27 = load i8, ptr %26, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 4
  store i8 1, ptr %30, align 1
  br label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = tail call i32 @__efivar_entry_delete(ptr noundef %0) #11
  br label %39

39:                                               ; preds = %37, %22, %2
  %40 = phi i32 [ 1, %37 ], [ 0, %2 ], [ 0, %22 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_strlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_strncmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__efivar_entry_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efivars_kobject() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_supports_writes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_pstore_callback(ptr nocapture noundef readonly %0, [4 x i32] %1, i32 noundef %2, ptr nocapture noundef readnone %3) #3 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2124) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = extractvalue [4 x i32] %1, 3
  %10 = extractvalue [4 x i32] %1, 2
  %11 = extractvalue [4 x i32] %1, 1
  %12 = extractvalue [4 x i32] %1, 0
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 2 %0, i32 %2, i1 false)
  %13 = getelementptr inbounds %struct.efi_variable, ptr %6, i32 0, i32 1
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.efi_variable, ptr %6, i32 0, i32 1, i32 0, i32 4
  store i32 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.efi_variable, ptr %6, i32 0, i32 1, i32 0, i32 8
  store i32 %10, ptr %15, align 8
  %16 = getelementptr inbounds %struct.efi_variable, ptr %6, i32 0, i32 1, i32 0, i32 12
  store i32 %9, ptr %16, align 4
  %17 = tail call i32 @efivar_entry_add(ptr noundef nonnull %6, ptr noundef nonnull @efi_pstore_list) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #11
  br label %20

20:                                               ; preds = %19, %8, %4
  %21 = phi i32 [ -12, %4 ], [ %17, %19 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @efi_pstore_update_entries(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2124) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %12, %9 ], [ %3, %1 ]
  %7 = tail call i32 @efivar_init(ptr noundef nonnull @efi_pstore_update_entry, ptr noundef nonnull %6, i1 noundef zeroext false, ptr noundef nonnull @efi_pstore_list) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @efivar_entry_add(ptr noundef nonnull %6, ptr noundef nonnull @efi_pstore_list) #11
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 2124) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %5

14:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %6) #11
  tail call void @module_put(ptr noundef null) #11
  br label %15

15:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_pstore_update_entry(ptr noundef %0, [4 x i32] %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = tail call ptr @efivar_entry_find(ptr noundef %0, [4 x i32] %1, ptr noundef nonnull @efi_pstore_list, i1 noundef zeroext false) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = extractvalue [4 x i32] %1, 3
  %9 = extractvalue [4 x i32] %1, 2
  %10 = extractvalue [4 x i32] %1, 1
  %11 = extractvalue [4 x i32] %1, 0
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %3, ptr align 2 %0, i32 %2, i1 false)
  %12 = getelementptr inbounds %struct.efi_variable, ptr %3, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.efi_variable, ptr %3, i32 0, i32 1, i32 0, i32 4
  store i32 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.efi_variable, ptr %3, i32 0, i32 1, i32 0, i32 8
  store i32 %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.efi_variable, ptr %3, i32 0, i32 1, i32 0, i32 12
  store i32 %8, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %4
  %17 = phi i32 [ 1, %7 ], [ 0, %4 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efivar_entry_find(ptr noundef, [4 x i32], ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
