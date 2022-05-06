; ModuleID = '/llk/IR/drivers/firmware/efi/esrt.c_pt.bc'
source_filename = "../drivers/firmware/efi/esrt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.esre_attribute = type { %struct.attribute, ptr, ptr }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.efi_system_resource_table = type { i32, i32, i64, [0 x i8] }
%struct.efi_system_resource_entry_v1 = type { %struct.guid_t, i32, i32, i32, i32, i32, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.esre_entry = type { %union.anon.66, %struct.kobject, %struct.list_head }
%union.anon.66 = type { ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@efi = external dso_local global %struct.efi, align 4
@.str = private unnamed_addr constant [47 x i8] c"\014esrt: ESRT header is not in the memory map.\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\013esrt: EFI memory descriptor is invalid. (esrt: %p max: %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"\013esrt: ESRT header doesn't fit on single memory map entry. (size: %zu max: %zu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013esrt: early_memremap(%p, %zu) failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013esrt: Unsupported ESRT version %lld.\0A\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"\013esrt: ESRT memory map entry can only hold the header. (max: %zu size: %zu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"\013esrt: ESRT says fw_resource_count has very large value %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"\013esrt: ESRT does not fit on single memory map entry (size: %zu max: %zu)\0A\00", align 1
@esrt_data = internal global i32 0, align 4
@esrt_data_size = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"\016esrt: Reserving ESRT space from %pa to %pa.\0A\00", align 1
@__initcall__kmod_esrt__224_434_esrt_sysfs_init6 = internal global ptr @esrt_sysfs_init, section ".initcall6.init", align 4
@esrt = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"\013esrt: memremap(%pa, %zu) failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"esrt\00", align 1
@efi_kobj = external dso_local local_unnamed_addr global ptr, align 4
@esrt_kobj = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"\013esrt: Firmware table registration failed.\0A\00", align 1
@esrt_attr_group = internal constant %struct.attribute_group { ptr null, ptr @esrt_attr_is_visible, ptr null, ptr @esrt_attrs, ptr null }, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"\013esrt: Sysfs attribute export failed with error %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@esrt_kset = internal unnamed_addr global ptr null, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"\013esrt: kset creation failed.\0A\00", align 1
@esrt_attrs = internal global [4 x ptr] [ptr @esrt_fw_resource_count, ptr @esrt_fw_resource_count_max, ptr @esrt_fw_resource_version, ptr null], align 4
@esrt_fw_resource_count = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.15, i16 256 }, ptr @fw_resource_count_show, ptr null }, align 4
@esrt_fw_resource_count_max = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.17, i16 256 }, ptr @fw_resource_count_max_show, ptr null }, align 4
@esrt_fw_resource_version = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 256 }, ptr @fw_resource_version_show, ptr null }, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"fw_resource_count\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"fw_resource_count_max\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"fw_resource_version\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"\013esrt: ESRT entry creation failed with error %d.\0A\00", align 1
@esre1_ktype = internal global %struct.kobj_type { ptr @esre_release, ptr @esre_attr_ops, ptr null, ptr @esre1_groups, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"entry%d\00", align 1
@entry_list = internal global %struct.list_head { ptr @entry_list, ptr @entry_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@esre_attr_ops = internal constant %struct.sysfs_ops { ptr @esre_attr_show, ptr null }, align 4
@esre1_groups = internal global [2 x ptr] [ptr @esre1_group, ptr null], align 4
@esre1_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @esre1_attrs, ptr null }, align 4
@esre1_attrs = internal global [8 x ptr] [ptr @esre_fw_class, ptr @esre_fw_type, ptr @esre_fw_version, ptr @esre_lowest_supported_fw_version, ptr @esre_capsule_flags, ptr @esre_last_attempt_version, ptr @esre_last_attempt_status, ptr null], align 4
@esre_fw_class = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.22, i16 256 }, ptr @fw_class_show, ptr null }, align 4
@esre_fw_type = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.25, i16 256 }, ptr @fw_type_show, ptr null }, align 4
@esre_fw_version = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.26, i16 256 }, ptr @fw_version_show, ptr null }, align 4
@esre_lowest_supported_fw_version = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.27, i16 256 }, ptr @lowest_supported_fw_version_show, ptr null }, align 4
@esre_capsule_flags = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.28, i16 256 }, ptr @capsule_flags_show, ptr null }, align 4
@esre_last_attempt_version = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.30, i16 256 }, ptr @last_attempt_version_show, ptr null }, align 4
@esre_last_attempt_status = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.31, i16 256 }, ptr @last_attempt_status_show, ptr null }, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"fw_class\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"fw_type\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"lowest_supported_fw_version\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"capsule_flags\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"last_attempt_version\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"last_attempt_status\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_esrt__224_434_esrt_sysfs_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @efi_esrt_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.efi_memory_desc_t, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %81, label %6

6:                                                ; preds = %0
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 4
  %11 = icmp eq i32 %10, -1
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %81, label %13

13:                                               ; preds = %6
  %14 = zext i32 %10 to i64
  %15 = call i32 @efi_mem_desc_lookup(i64 noundef %14, ptr noundef nonnull %1) #11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = freeze i64 %19
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 8
  switch i32 %23, label %24 [
    i32 6, label %26
    i32 4, label %26
  ]

24:                                               ; preds = %22, %13
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %81

26:                                               ; preds = %22, %22, %17
  %27 = call i64 @efi_mem_desc_end(ptr noundef nonnull %1) #11
  %28 = trunc i64 %27 to i32
  %29 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 4
  %30 = icmp ugt i32 %29, %28
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = inttoptr i32 %29 to ptr
  %33 = inttoptr i32 %28 to ptr
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %32, ptr noundef %33) #12
  br label %81

35:                                               ; preds = %26
  %36 = sub i32 %28, %29
  %37 = icmp ult i32 %36, 16
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 16, i32 noundef %36) #12
  br label %81

40:                                               ; preds = %35
  %41 = call ptr @early_memremap(i32 noundef %29, i32 noundef 16) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 4
  %45 = inttoptr i32 %44 to ptr
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %45, i32 noundef 16) #12
  br label %81

47:                                               ; preds = %40
  %48 = load i32, ptr %41, align 1
  %49 = getelementptr inbounds i8, ptr %41, i32 8
  %50 = load i64, ptr %49, align 1
  call void @early_memunmap(ptr noundef nonnull %41, i32 noundef 16) #11
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %50) #12
  br label %81

54:                                               ; preds = %47
  %55 = icmp eq i32 %48, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %54
  %57 = add i32 %36, -16
  %58 = icmp ult i32 %57, 40
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %57, i32 noundef 40) #12
  br label %81

61:                                               ; preds = %56
  %62 = icmp ugt i32 %48, 128
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %48) #12
  br label %81

65:                                               ; preds = %61, %54
  %66 = mul nuw nsw i32 %48, 40
  %67 = add nuw nsw i32 %66, 16
  %68 = icmp ult i32 %36, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 16, i32 noundef %36) #12
  br label %81

71:                                               ; preds = %65
  %72 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 4
  store i32 %72, ptr @esrt_data, align 4
  store i32 %67, ptr @esrt_data_size, align 4
  %73 = add i32 %72, %67
  store i32 %73, ptr %2, align 4
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @esrt_data, ptr noundef nonnull %2) #12
  %75 = load i32, ptr %1, align 8
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, ptr @esrt_data, align 4
  %79 = load i32, ptr @esrt_data_size, align 4
  %80 = zext i32 %79 to i64
  call void @efi_mem_reserve(i32 noundef %78, i64 noundef %80) #11
  br label %81

81:                                               ; preds = %77, %71, %69, %63, %59, %52, %43, %38, %31, %24, %6, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_mem_desc_lookup(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efi_mem_desc_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @early_memremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_memunmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efi_mem_reserve(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @esrt_sysfs_init() #0 section ".init.text" {
  %1 = load i32, ptr @esrt_data, align 4
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @esrt_data_size, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %51

6:                                                ; preds = %0
  %7 = tail call ptr @memremap(i32 noundef %1, i32 noundef %3, i32 noundef 1) #11
  store ptr %7, ptr @esrt, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, ptr @esrt_data_size, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @esrt_data, i32 noundef %10) #12
  br label %51

12:                                               ; preds = %6
  %13 = load ptr, ptr @efi_kobj, align 4
  %14 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.10, ptr noundef %13) #11
  store ptr %14, ptr @esrt_kobj, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %48

18:                                               ; preds = %12
  %19 = tail call i32 @sysfs_create_group(ptr noundef nonnull %14, ptr noundef nonnull @esrt_attr_group) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %19) #12
  br label %45

23:                                               ; preds = %18
  %24 = load ptr, ptr @esrt_kobj, align 4
  %25 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef %24) #11
  store ptr %25, ptr @esrt_kset, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %42

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @register_entries() #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @entry_list, align 4
  %34 = icmp eq ptr %33, @entry_list
  br i1 %34, label %40, label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %37, %35 ], [ %33, %32 ]
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %36, i32 -36
  tail call void @kobject_put(ptr noundef %38) #11
  %39 = icmp eq ptr %37, @entry_list
  br i1 %39, label %40, label %35

40:                                               ; preds = %35, %32
  %41 = load ptr, ptr @esrt_kset, align 4
  tail call void @kset_unregister(ptr noundef %41) #11
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi i32 [ %30, %40 ], [ -12, %27 ]
  %44 = load ptr, ptr @esrt_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %44, ptr noundef nonnull @esrt_attr_group) #11
  br label %45

45:                                               ; preds = %42, %21
  %46 = phi i32 [ %19, %21 ], [ %43, %42 ]
  %47 = load ptr, ptr @esrt_kobj, align 4
  tail call void @kobject_put(ptr noundef %47) #11
  br label %48

48:                                               ; preds = %45, %16
  %49 = phi i32 [ %46, %45 ], [ -12, %16 ]
  %50 = load ptr, ptr @esrt, align 4
  tail call void @memunmap(ptr noundef %50) #11
  store ptr null, ptr @esrt, align 4
  br label %51

51:                                               ; preds = %48, %29, %9, %0
  %52 = phi i32 [ %49, %48 ], [ -12, %9 ], [ -38, %0 ], [ 0, %29 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @register_entries() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @esrt, align 4
  %2 = getelementptr inbounds %struct.efi_system_resource_table, ptr %1, i32 0, i32 3
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 4
  %7 = icmp eq i32 %6, -1
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %50, label %9

9:                                                ; preds = %0
  %10 = load i32, ptr %1, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %45, %9
  %13 = phi ptr [ %47, %45 ], [ %1, %9 ]
  %14 = phi i32 [ %46, %45 ], [ 0, %9 ]
  %15 = getelementptr inbounds %struct.efi_system_resource_table, ptr %13, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = getelementptr %struct.efi_system_resource_entry_v1, ptr %2, i32 %14
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 48) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @esrt_kset, align 4
  %25 = getelementptr inbounds %struct.esre_entry, ptr %21, i32 0, i32 1
  %26 = getelementptr inbounds %struct.esre_entry, ptr %21, i32 0, i32 1, i32 3
  store ptr %24, ptr %26, align 4
  %27 = load ptr, ptr @esrt, align 4
  %28 = getelementptr inbounds %struct.efi_system_resource_table, ptr %27, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  store ptr %19, ptr %21, align 8
  %32 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %25, ptr noundef nonnull @esre1_ktype, ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef %14) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %23
  %35 = getelementptr inbounds %struct.esre_entry, ptr %21, i32 0, i32 2
  %36 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @entry_list, i32 0, i32 1), align 4
  store ptr %35, ptr getelementptr inbounds (%struct.list_head, ptr @entry_list, i32 0, i32 1), align 4
  store ptr @entry_list, ptr %35, align 8
  %37 = getelementptr inbounds %struct.esre_entry, ptr %21, i32 0, i32 2, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %35, ptr %36, align 4
  br label %45

38:                                               ; preds = %31
  tail call void @kobject_put(ptr noundef %25) #11
  %39 = icmp slt i32 %32, 0
  br i1 %39, label %42, label %45

40:                                               ; preds = %12
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %16) #12
  br label %50

42:                                               ; preds = %38, %18
  %43 = phi i32 [ %32, %38 ], [ -12, %18 ]
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %43) #12
  br label %50

45:                                               ; preds = %38, %34
  %46 = add nuw i32 %14, 1
  %47 = load ptr, ptr @esrt, align 4
  %48 = load i32, ptr %47, align 8
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %12, label %50

50:                                               ; preds = %45, %42, %40, %9, %0
  %51 = phi i32 [ 0, %0 ], [ %43, %42 ], [ -22, %40 ], [ 0, %9 ], [ 0, %45 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i16 @esrt_attr_is_visible(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 4
  %8 = icmp eq i32 %7, -1
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i16 [ %12, %10 ], [ 0, %3 ]
  ret i16 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_resource_count_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load ptr, ptr @esrt, align 4
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_resource_count_max_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load ptr, ptr @esrt, align 4
  %5 = getelementptr inbounds %struct.efi_system_resource_table, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_resource_version_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load ptr, ptr @esrt, align 4
  %5 = getelementptr inbounds %struct.efi_system_resource_table, ptr %4, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esre_release(ptr noundef %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = getelementptr i8, ptr %0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esre_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #9 {
  %4 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr inbounds %struct.esre_attribute, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, ptr noundef %2) #11
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %9, %5 ], [ -13, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_class_show(ptr nocapture noundef readonly %0, ptr noundef %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %3) #11
  %5 = tail call i32 @strlen(ptr noundef %1)
  %6 = getelementptr i8, ptr %1, i32 %5
  store i16 10, ptr %6, align 1
  %7 = getelementptr i8, ptr %6, i32 1
  %8 = ptrtoint ptr %7 to i32
  %9 = ptrtoint ptr %1 to i32
  %10 = sub i32 %8, %9
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lowest_supported_fw_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @capsule_flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_attempt_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_attempt_status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(2) }

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
