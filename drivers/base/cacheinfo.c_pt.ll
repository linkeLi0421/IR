; ModuleID = '/llk/IR/drivers/base/cacheinfo.c_pt.bc'
source_filename = "../drivers/base/cacheinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cacheinfo = type { ptr, i32, i32, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.cache_type_info = type { ptr, [2 x ptr], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.cpumask, i32, ptr, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@ci_cpu_cacheinfo = internal global %struct.cpu_cacheinfo zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__initcall__kmod_cacheinfo__166_675_cacheinfo_sysfs_init6 = internal global ptr @cacheinfo_sysfs_init, section ".initcall6.init", align 4
@coherency_max_size = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"base/cacheinfo:online\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\014cacheinfo: Unable to detect cache hierarchy for CPU %d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"\013cacheinfo: No cpu device for CPU %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013cacheinfo: Failed to find cpu%d device node\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cache-unified\00", align 1
@cache_type_info = internal unnamed_addr constant [3 x %struct.cache_type_info] [%struct.cache_type_info { ptr @.str.5, [2 x ptr] [ptr @.str.6, ptr @.str.7], ptr @.str.8 }, %struct.cache_type_info { ptr @.str.9, [2 x ptr] [ptr @.str.10, ptr @.str.11], ptr @.str.12 }, %struct.cache_type_info { ptr @.str.13, [2 x ptr] [ptr @.str.14, ptr @.str.15], ptr @.str.16 }], align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"cache-line-size\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"cache-block-size\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cache-sets\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"i-cache-size\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"i-cache-line-size\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"i-cache-block-size\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"i-cache-sets\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"d-cache-size\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"d-cache-line-size\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"d-cache-block-size\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"d-cache-sets\00", align 1
@ci_cache_dev = internal global ptr null, section ".data..percpu", align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"index%1u\00", align 1
@ci_index_dev = internal global ptr null, section ".data..percpu", align 4
@cache_dev_map = internal global %struct.cpumask zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@cache_default_groups = internal global [2 x ptr] [ptr @cache_default_group, ptr null], align 4
@cache_private_groups = internal global [3 x ptr] [ptr @cache_default_group, ptr null, ptr null], align 4
@cache_default_group = internal constant %struct.attribute_group { ptr null, ptr @cache_default_attrs_is_visible, ptr null, ptr @cache_default_attrs, ptr null }, align 4
@cache_default_attrs = internal global [13 x ptr] [ptr @dev_attr_id, ptr @dev_attr_type, ptr @dev_attr_level, ptr @dev_attr_shared_cpu_map, ptr @dev_attr_shared_cpu_list, ptr @dev_attr_coherency_line_size, ptr @dev_attr_ways_of_associativity, ptr @dev_attr_number_of_sets, ptr @dev_attr_size, ptr @dev_attr_allocation_policy, ptr @dev_attr_write_policy, ptr @dev_attr_physical_line_partition, ptr null], align 4
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @id_show, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_level = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @level_show, ptr null }, align 4
@dev_attr_shared_cpu_map = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @shared_cpu_map_show, ptr null }, align 4
@dev_attr_shared_cpu_list = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @shared_cpu_list_show, ptr null }, align 4
@dev_attr_coherency_line_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @coherency_line_size_show, ptr null }, align 4
@dev_attr_ways_of_associativity = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @ways_of_associativity_show, ptr null }, align 4
@dev_attr_number_of_sets = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @number_of_sets_show, ptr null }, align 4
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @size_show, ptr null }, align 4
@dev_attr_write_policy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @write_policy_show, ptr null }, align 4
@dev_attr_allocation_policy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @allocation_policy_show, ptr null }, align 4
@dev_attr_physical_line_partition = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @physical_line_partition_show, ptr null }, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Unified\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"shared_cpu_map\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"shared_cpu_list\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"coherency_line_size\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"ways_of_associativity\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"number_of_sets\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%uK\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"write_policy\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"WriteThrough\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"WriteBack\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"allocation_policy\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ReadWriteAllocate\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"ReadAllocate\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"WriteAllocate\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"physical_line_partition\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cacheinfo__166_675_cacheinfo_sysfs_init6], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @get_cpu_cacheinfo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %5 = inttoptr i32 %4 to ptr
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cache_setup_acpi(i32 noundef %0) local_unnamed_addr #2 {
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @init_cache_level(i32 noundef %0) local_unnamed_addr #2 {
  ret i32 -2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @populate_cache_leaves(i32 noundef %0) local_unnamed_addr #2 {
  ret i32 -2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @cache_get_priv_group(ptr noundef %0) local_unnamed_addr #2 {
  ret ptr null
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cacheinfo_sysfs_init() #3 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 193, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @cacheinfo_cpu_online, ptr noundef nonnull @cacheinfo_cpu_pre_down, i1 noundef zeroext false) #9
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cacheinfo_cpu_online(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @init_cache_level(i32 noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %325

5:                                                ; preds = %1
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %325, label %13

13:                                               ; preds = %5
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 52) #9
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %19, label %16, !prof !8

16:                                               ; preds = %13
  %17 = extractvalue { i32, i1 } %14, 0
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #10
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  %21 = load i32, ptr %6, align 4
  %22 = add i32 %21, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %23 = inttoptr i32 %22 to ptr
  store ptr %20, ptr %23, align 4
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %24, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %325, label %29

29:                                               ; preds = %19
  %30 = tail call i32 @populate_cache_leaves(i32 noundef %0) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %223

32:                                               ; preds = %29
  %33 = load i32, ptr %6, align 4
  %34 = add i32 %33, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %35, i32 0, i32 3
  %37 = load i8, ptr %36, align 4, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %227

39:                                               ; preds = %32
  %40 = load ptr, ptr @of_root, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %157, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @get_cpu_device(i32 noundef %0) #9
  %44 = load i32, ptr %6, align 4
  %45 = add i32 %44, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.cacheinfo, ptr %47, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %157

51:                                               ; preds = %42
  %52 = icmp eq ptr %43, null
  br i1 %52, label %216, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %216, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %46, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %157, label %61

61:                                               ; preds = %147, %57
  %62 = phi ptr [ %148, %147 ], [ %47, %57 ]
  %63 = phi ptr [ %73, %147 ], [ %55, %57 ]
  %64 = phi i32 [ %140, %147 ], [ 0, %57 ]
  %65 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = call ptr @of_find_next_cache_node(ptr noundef nonnull %63) #9
  br label %72

70:                                               ; preds = %61
  %71 = call ptr @of_node_get(ptr noundef nonnull %63) #9
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %69, %68 ], [ %71, %70 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, ptr %6, align 4
  %77 = add i32 %76, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  br label %149

81:                                               ; preds = %72
  %82 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = call ptr @of_find_property(ptr noundef nonnull %73, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, ptr %82, align 4
  br label %91

90:                                               ; preds = %85
  store i32 4, ptr %82, align 4
  br label %94

91:                                               ; preds = %88, %81
  %92 = phi i32 [ %89, %88 ], [ %83, %81 ]
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %90
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32 [ 0, %94 ], [ %92, %91 ]
  %97 = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %96
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 7
  %100 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %73, ptr noundef %98, ptr noundef %99, i32 noundef 1, i32 noundef 0) #9
  %101 = load i32, ptr %82, align 4
  %102 = icmp eq i32 %101, 4
  %103 = select i1 %102, i32 0, i32 %101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %104 = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %103, i32 1, i32 0
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %73, ptr noundef %105, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %111, %95
  %109 = load i32, ptr %2, align 4
  %110 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 3
  store i32 %109, ptr %110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %117

111:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %112 = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %103, i32 1, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %73, ptr noundef %113, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %108, label %116

116:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %117

117:                                              ; preds = %116, %108
  %118 = load i32, ptr %82, align 4
  %119 = icmp eq i32 %118, 4
  %120 = select i1 %119, i32 0, i32 %118
  %121 = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %120, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 4
  %124 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %73, ptr noundef %122, ptr noundef %123, i32 noundef 1, i32 noundef 0) #9
  %125 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = load i32, ptr %123, align 4
  %128 = load i32, ptr %99, align 4
  %129 = icmp ugt i32 %127, 1
  %130 = icmp ne i32 %128, 0
  %131 = select i1 %129, i1 %130, i1 false
  %132 = icmp ne i32 %126, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %138

134:                                              ; preds = %117
  %135 = udiv i32 %128, %127
  %136 = udiv i32 %135, %126
  %137 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 5
  store i32 %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %134, %117
  %139 = getelementptr %struct.cacheinfo, ptr %62, i32 %64, i32 10
  store ptr %73, ptr %139, align 4
  %140 = add nuw i32 %64, 1
  %141 = load i32, ptr %6, align 4
  %142 = add i32 %141, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %143 = inttoptr i32 %142 to ptr
  %144 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = icmp ult i32 %140, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %138
  %148 = load ptr, ptr %46, align 4
  br label %61

149:                                              ; preds = %138, %75
  %150 = phi i32 [ %76, %75 ], [ %141, %138 ]
  %151 = phi i32 [ %80, %75 ], [ %145, %138 ]
  %152 = phi i32 [ %64, %75 ], [ %140, %138 ]
  %153 = icmp eq i32 %152, %151
  br i1 %153, label %154, label %220

154:                                              ; preds = %149
  %155 = add i32 %150, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %156 = inttoptr i32 %155 to ptr
  br label %157

157:                                              ; preds = %154, %57, %42, %39
  %158 = phi i32 [ %44, %42 ], [ %33, %39 ], [ %150, %154 ], [ %44, %57 ]
  %159 = phi ptr [ %46, %42 ], [ %35, %39 ], [ %156, %154 ], [ %46, %57 ]
  %160 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %159, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = add i32 %158, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %165 = inttoptr i32 %164 to ptr
  br label %227

166:                                              ; preds = %208, %157
  %167 = phi i32 [ %209, %208 ], [ 0, %157 ]
  %168 = load ptr, ptr %35, align 4
  %169 = getelementptr %struct.cacheinfo, ptr %168, i32 %167, i32 8
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %208

173:                                              ; preds = %166
  call void @_set_bit(i32 noundef %0, ptr noundef %169) #9
  %174 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  %175 = load i32, ptr @nr_cpu_ids, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %173
  %178 = getelementptr %struct.cacheinfo, ptr %168, i32 %167, i32 10
  br label %179

179:                                              ; preds = %198, %177
  %180 = phi i32 [ %175, %177 ], [ %199, %198 ]
  %181 = phi i32 [ %174, %177 ], [ %200, %198 ]
  %182 = icmp eq i32 %181, %0
  br i1 %182, label %198, label %183

183:                                              ; preds = %179
  %184 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %181
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %187 = inttoptr i32 %186 to ptr
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %198, label %190

190:                                              ; preds = %183
  %191 = getelementptr %struct.cacheinfo, ptr %188, i32 %167, i32 10
  %192 = load ptr, ptr %191, align 4
  %193 = load ptr, ptr %178, align 4
  %194 = icmp eq ptr %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = getelementptr %struct.cacheinfo, ptr %188, i32 %167, i32 8
  call void @_set_bit(i32 noundef %0, ptr noundef %196) #9
  call void @_set_bit(i32 noundef %181, ptr noundef %169) #9
  %197 = load i32, ptr @nr_cpu_ids, align 4
  br label %198

198:                                              ; preds = %195, %190, %183, %179
  %199 = phi i32 [ %180, %190 ], [ %197, %195 ], [ %180, %179 ], [ %180, %183 ]
  %200 = call i32 @cpumask_next(i32 noundef %181, ptr noundef nonnull @__cpu_online_mask) #11
  %201 = icmp ult i32 %200, %199
  br i1 %201, label %179, label %202

202:                                              ; preds = %198, %173
  %203 = getelementptr %struct.cacheinfo, ptr %168, i32 %167, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = load i32, ptr @coherency_max_size, align 4
  %206 = icmp ugt i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32 %204, ptr @coherency_max_size, align 4
  br label %208

208:                                              ; preds = %207, %202, %166
  %209 = add nuw i32 %167, 1
  %210 = load i32, ptr %6, align 4
  %211 = add i32 %210, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %212 = inttoptr i32 %211 to ptr
  %213 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %212, i32 0, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = icmp ult i32 %209, %214
  br i1 %215, label %166, label %225

216:                                              ; preds = %53, %51
  %217 = phi ptr [ @.str.2, %51 ], [ @.str.3, %53 ]
  %218 = phi i32 [ -19, %51 ], [ -2, %53 ]
  %219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %217, i32 noundef %0) #12
  br label %220

220:                                              ; preds = %216, %149
  %221 = phi i32 [ -2, %149 ], [ %218, %216 ]
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #12
  br label %223

223:                                              ; preds = %220, %29
  %224 = phi i32 [ %30, %29 ], [ %221, %220 ]
  call fastcc void @free_cache_attributes(i32 noundef %0) #9
  br label %325

225:                                              ; preds = %208
  %226 = inttoptr i32 %211 to ptr
  br label %227

227:                                              ; preds = %225, %163, %32
  %228 = phi ptr [ %165, %163 ], [ %35, %32 ], [ %226, %225 ]
  %229 = call ptr @get_cpu_device(i32 noundef %0) #9
  %230 = load i32, ptr %6, align 4
  %231 = add i32 %230, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %232 = inttoptr i32 %231 to ptr
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %323, label %235

235:                                              ; preds = %227
  %236 = call ptr (ptr, ptr, ptr, ptr, ...) @cpu_device_create(ptr noundef %229, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18) #9
  %237 = load i32, ptr %6, align 4
  %238 = add i32 %237, ptrtoint (ptr @ci_cache_dev to i32)
  %239 = inttoptr i32 %238 to ptr
  store ptr %236, ptr %239, align 4
  %240 = load i32, ptr %6, align 4
  %241 = add i32 %240, ptrtoint (ptr @ci_cache_dev to i32)
  %242 = inttoptr i32 %241 to ptr
  %243 = load ptr, ptr %242, align 4
  %244 = icmp ugt ptr %243, inttoptr (i32 -4096 to ptr)
  br i1 %244, label %270, label %245

245:                                              ; preds = %235
  %246 = add i32 %240, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %247 = inttoptr i32 %246 to ptr
  %248 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %247, i32 0, i32 2
  %249 = load i32, ptr %248, align 4
  %250 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %249, i32 4) #9
  %251 = extractvalue { i32, i1 } %250, 1
  br i1 %251, label %255, label %252, !prof !8

252:                                              ; preds = %245
  %253 = extractvalue { i32, i1 } %250, 0
  %254 = call noalias align 64 ptr @__kmalloc(i32 noundef %253, i32 noundef 3520) #10
  br label %255

255:                                              ; preds = %252, %245
  %256 = phi ptr [ %254, %252 ], [ null, %245 ]
  %257 = load i32, ptr %6, align 4
  %258 = add i32 %257, ptrtoint (ptr @ci_index_dev to i32)
  %259 = inttoptr i32 %258 to ptr
  store ptr %256, ptr %259, align 4
  %260 = load i32, ptr %6, align 4
  %261 = add i32 %260, ptrtoint (ptr @ci_index_dev to i32)
  %262 = inttoptr i32 %261 to ptr
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %269, label %265, !prof !8

265:                                              ; preds = %255
  %266 = add i32 %260, ptrtoint (ptr @ci_cache_dev to i32)
  %267 = inttoptr i32 %266 to ptr
  %268 = load ptr, ptr %267, align 4
  br label %272

269:                                              ; preds = %255
  call fastcc void @cpu_cache_sysfs_exit(i32 noundef %0) #9
  br label %323

270:                                              ; preds = %235
  %271 = icmp slt ptr %243, null
  br i1 %271, label %320, label %272, !prof !8

272:                                              ; preds = %270, %265
  %273 = phi ptr [ %268, %265 ], [ %243, %270 ]
  %274 = phi i32 [ %260, %265 ], [ %240, %270 ]
  %275 = add i32 %274, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %276 = inttoptr i32 %275 to ptr
  %277 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %276, i32 0, i32 2
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %319, label %280

280:                                              ; preds = %311, %272
  %281 = phi i32 [ %312, %311 ], [ %274, %272 ]
  %282 = phi i32 [ %313, %311 ], [ 0, %272 ]
  %283 = load ptr, ptr %228, align 4
  %284 = getelementptr %struct.cacheinfo, ptr %283, i32 %282
  %285 = getelementptr %struct.cacheinfo, ptr %283, i32 %282, i32 11
  %286 = load i8, ptr %285, align 4, !range !9
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %311

288:                                              ; preds = %280
  %289 = getelementptr %struct.cacheinfo, ptr %283, i32 %282, i32 1
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %319, label %292

292:                                              ; preds = %288
  %293 = call ptr @cache_get_priv_group(ptr noundef %284) #9
  %294 = icmp eq ptr %293, null
  br i1 %294, label %299, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @cache_private_groups, i32 0, i32 1), align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  store ptr %293, ptr getelementptr inbounds ([3 x ptr], ptr @cache_private_groups, i32 0, i32 1), align 4
  br label %299

299:                                              ; preds = %298, %295, %292
  %300 = phi ptr [ @cache_default_groups, %292 ], [ @cache_private_groups, %298 ], [ @cache_private_groups, %295 ]
  %301 = call ptr (ptr, ptr, ptr, ptr, ...) @cpu_device_create(ptr noundef %273, ptr noundef %284, ptr noundef nonnull %300, ptr noundef nonnull @.str.17, i32 noundef %282) #9
  %302 = icmp ugt ptr %301, inttoptr (i32 -4096 to ptr)
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  call fastcc void @cpu_cache_sysfs_exit(i32 noundef %0) #9
  br label %320

304:                                              ; preds = %299
  %305 = load i32, ptr %6, align 4
  %306 = add i32 %305, ptrtoint (ptr @ci_index_dev to i32)
  %307 = inttoptr i32 %306 to ptr
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr ptr, ptr %308, i32 %282
  store ptr %301, ptr %309, align 4
  %310 = load i32, ptr %6, align 4
  br label %311

311:                                              ; preds = %304, %280
  %312 = phi i32 [ %281, %280 ], [ %310, %304 ]
  %313 = add nuw i32 %282, 1
  %314 = add i32 %312, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %315 = inttoptr i32 %314 to ptr
  %316 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %315, i32 0, i32 2
  %317 = load i32, ptr %316, align 4
  %318 = icmp ult i32 %313, %317
  br i1 %318, label %280, label %319

319:                                              ; preds = %311, %288, %272
  call void @_set_bit(i32 noundef %0, ptr noundef nonnull @cache_dev_map) #9
  br label %325

320:                                              ; preds = %303, %270
  %321 = phi ptr [ %301, %303 ], [ %243, %270 ]
  %322 = ptrtoint ptr %321 to i32
  br label %323

323:                                              ; preds = %320, %269, %227
  %324 = phi i32 [ %322, %320 ], [ -12, %269 ], [ -2, %227 ]
  call fastcc void @free_cache_attributes(i32 noundef %0)
  br label %325

325:                                              ; preds = %323, %319, %223, %19, %5, %1
  %326 = phi i32 [ %324, %323 ], [ 0, %319 ], [ -12, %19 ], [ -2, %1 ], [ -2, %5 ], [ %224, %223 ]
  ret i32 %326
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cacheinfo_cpu_pre_down(i32 noundef %0) #2 {
  %2 = tail call i32 @_test_and_clear_bit(i32 noundef %0, ptr noundef nonnull @cache_dev_map) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @cpu_cache_sysfs_exit(i32 noundef %0)
  br label %5

5:                                                ; preds = %4, %1
  tail call fastcc void @free_cache_attributes(i32 noundef %0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_cache_attributes(i32 noundef %0) unnamed_addr #2 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr @nr_cpu_ids, align 4
  br label %14

14:                                               ; preds = %59, %12
  %15 = phi ptr [ %60, %59 ], [ %6, %12 ]
  %16 = phi i32 [ %50, %59 ], [ %13, %12 ]
  %17 = phi i32 [ %51, %59 ], [ %13, %12 ]
  %18 = phi i32 [ %52, %59 ], [ 0, %12 ]
  %19 = getelementptr %struct.cacheinfo, ptr %15, i32 %18, i32 8
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %19) #11
  %21 = icmp ult i32 %20, %17
  br i1 %21, label %22, label %40

22:                                               ; preds = %36, %14
  %23 = phi i32 [ %37, %36 ], [ %16, %14 ]
  %24 = phi i32 [ %38, %36 ], [ %20, %14 ]
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = getelementptr %struct.cacheinfo, ptr %31, i32 %18, i32 8
  tail call void @_clear_bit(i32 noundef %0, ptr noundef %34) #9
  tail call void @_clear_bit(i32 noundef %24, ptr noundef %19) #9
  %35 = load i32, ptr @nr_cpu_ids, align 4
  br label %36

36:                                               ; preds = %33, %26, %22
  %37 = phi i32 [ %23, %26 ], [ %23, %22 ], [ %35, %33 ]
  %38 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef %19) #11
  %39 = icmp ult i32 %38, %37
  br i1 %39, label %22, label %40

40:                                               ; preds = %36, %14
  %41 = phi i32 [ %16, %14 ], [ %37, %36 ]
  %42 = phi i32 [ %17, %14 ], [ %37, %36 ]
  %43 = load ptr, ptr @of_root, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.cacheinfo, ptr %15, i32 %18, i32 10
  %47 = load ptr, ptr %46, align 4
  tail call void @of_node_put(ptr noundef %47) #9
  %48 = load i32, ptr @nr_cpu_ids, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i32 [ %41, %40 ], [ %48, %45 ]
  %51 = phi i32 [ %42, %40 ], [ %48, %45 ]
  %52 = add nuw i32 %18, 1
  %53 = load i32, ptr %2, align 4
  %54 = add i32 %53, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %52, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load ptr, ptr %5, align 4
  br label %14

61:                                               ; preds = %49
  %62 = inttoptr i32 %54 to ptr
  br label %63

63:                                               ; preds = %61, %8
  %64 = phi ptr [ %5, %8 ], [ %62, %61 ]
  %65 = load ptr, ptr %64, align 4
  tail call void @kfree(ptr noundef %65) #9
  %66 = load i32, ptr %2, align 4
  %67 = add i32 %66, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %68 = inttoptr i32 %67 to ptr
  store ptr null, ptr %68, align 4
  %69 = load i32, ptr %2, align 4
  %70 = add i32 %69, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %71, i32 0, i32 2
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %63, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_next_cache_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpu_device_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpu_cache_sysfs_exit(i32 noundef %0) unnamed_addr #2 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @ci_index_dev to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %1
  %9 = add i32 %3, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %25, %8
  %15 = phi i32 [ %26, %25 ], [ %3, %8 ]
  %16 = phi i32 [ %27, %25 ], [ 0, %8 ]
  %17 = add i32 %15, ptrtoint (ptr @ci_index_dev to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr ptr, ptr %19, i32 %16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  tail call void @device_unregister(ptr noundef nonnull %21) #9
  %24 = load i32, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i32 [ %15, %14 ], [ %24, %23 ]
  %27 = add nuw i32 %16, 1
  %28 = add i32 %26, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %14, label %33

33:                                               ; preds = %25
  %34 = add i32 %26, ptrtoint (ptr @ci_index_dev to i32)
  %35 = inttoptr i32 %34 to ptr
  br label %36

36:                                               ; preds = %33, %8
  %37 = phi ptr [ %35, %33 ], [ %5, %8 ]
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #9
  %39 = load i32, ptr %2, align 4
  %40 = add i32 %39, ptrtoint (ptr @ci_index_dev to i32)
  %41 = inttoptr i32 %40 to ptr
  store ptr null, ptr %41, align 4
  %42 = load i32, ptr %2, align 4
  br label %43

43:                                               ; preds = %36, %1
  %44 = phi i32 [ %3, %1 ], [ %42, %36 ]
  %45 = add i32 %44, ptrtoint (ptr @ci_cache_dev to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load ptr, ptr %46, align 4
  tail call void @device_unregister(ptr noundef %47) #9
  %48 = load i32, ptr %2, align 4
  %49 = add i32 %48, ptrtoint (ptr @ci_cache_dev to i32)
  %50 = inttoptr i32 %49 to ptr
  store ptr null, ptr %50, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @cache_default_attrs_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 8
  %7 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq ptr %1, @dev_attr_id
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %83, label %84

15:                                               ; preds = %3
  %16 = icmp eq ptr %1, @dev_attr_type
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %83, label %84

21:                                               ; preds = %15
  %22 = icmp eq ptr %1, @dev_attr_level
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %83, label %84

27:                                               ; preds = %21
  %28 = icmp eq ptr %1, @dev_attr_shared_cpu_map
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load i32, ptr %6, align 4
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %83, label %84

33:                                               ; preds = %27
  %34 = icmp eq ptr %1, @dev_attr_shared_cpu_list
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load i32, ptr %6, align 4
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %83, label %84

39:                                               ; preds = %33
  %40 = icmp eq ptr %1, @dev_attr_coherency_line_size
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %83, label %84

45:                                               ; preds = %39
  %46 = icmp eq ptr %1, @dev_attr_ways_of_associativity
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %83, label %84

51:                                               ; preds = %45
  %52 = icmp eq ptr %1, @dev_attr_number_of_sets
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %83, label %84

57:                                               ; preds = %51
  %58 = icmp eq ptr %1, @dev_attr_size
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %83, label %84

63:                                               ; preds = %57
  %64 = icmp eq ptr %1, @dev_attr_write_policy
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %83, label %84

70:                                               ; preds = %63
  %71 = icmp eq ptr %1, @dev_attr_allocation_policy
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 12
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %84

77:                                               ; preds = %70
  %78 = icmp eq ptr %1, @dev_attr_physical_line_partition
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %77, %72, %65, %59, %53, %47, %41, %35, %29, %23, %17, %10
  br label %84

84:                                               ; preds = %83, %79, %72, %65, %59, %53, %47, %41, %35, %29, %23, %17, %10
  %85 = phi i16 [ 0, %83 ], [ %8, %10 ], [ %8, %17 ], [ %8, %23 ], [ %8, %29 ], [ %8, %35 ], [ %8, %41 ], [ %8, %47 ], [ %8, %53 ], [ %8, %59 ], [ %8, %65 ], [ %8, %72 ], [ %8, %79 ]
  ret i16 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %6) #9
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %13 [
    i32 2, label %10
    i32 1, label %8
    i32 4, label %9
  ]

8:                                                ; preds = %3
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9, %8, %3
  %11 = phi ptr [ @.str.24, %9 ], [ @.str.23, %8 ], [ @.str.22, %3 ]
  %12 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %11) #9
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @level_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shared_cpu_map_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 8
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %7, ptr noundef %6) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shared_cpu_list_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 8
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %7, ptr noundef %6) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coherency_line_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ways_of_associativity_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @number_of_sets_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 10
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef %8) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_policy_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = and i32 %7, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ @.str.37, %3 ], [ @.str.38, %10 ]
  %15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull %14) #9
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %10 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @allocation_policy_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = and i32 %7, 4
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i32 %8, 12
  %14 = select i1 %13, ptr @.str.40, ptr @.str.41
  %15 = select i1 %12, ptr @.str.42, ptr %14
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %15) #9
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi i32 [ %16, %10 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @physical_line_partition_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cacheinfo, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
