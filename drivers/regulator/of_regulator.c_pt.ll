; ModuleID = '/llk/IR/drivers/regulator/of_regulator.c_pt.bc'
source_filename = "../drivers/regulator/of_regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_regulator_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_regulator_init_data\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_regulator_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_regulator_match:\09\09\09\09\09"
module asm "\09.asciz \09\22of_regulator_match\22\09\09\09\09\09"
module asm "__kstrtabns_of_regulator_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.devm_of_regulator_matches = type { ptr, i32 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_of_get_regulator_init_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_regulator_init_data = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_regulator_init_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_regulator_init_data to i32), ptr @__kstrtab_of_get_regulator_init_data, ptr @__kstrtabns_of_get_regulator_init_data }, section "___ksymtab_gpl+of_get_regulator_init_data", align 4
@.str = private unnamed_addr constant [30 x i8] c"devm_of_regulator_put_matches\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"regulator-compatible\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to parse DT for regulator %pOFn\0A\00", align 1
@__kstrtab_of_regulator_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_regulator_match = external dso_local constant [0 x i8], align 1
@__ksymtab_of_regulator_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_regulator_match to i32), ptr @__kstrtab_of_regulator_match, ptr @__kstrtabns_of_regulator_match }, section "___ksymtab_gpl+of_regulator_match", align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"driver callback failed to parse DT for regulator %pOFn\0A\00", align 1
@regulator_class = external dso_local global %struct.class, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"regulator-coupled-with\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"max_spread value invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"number of coupled reg phandles mismatch\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"missing 2-way linking for coupled regulators\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"regulator-coupled-max-spread\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"coupled regulators max_spread mismatch\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"regulator-name\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"regulator-min-microvolt\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"regulator-max-microvolt\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"regulator-microvolt-offset\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"regulator-min-microamp\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"regulator-max-microamp\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"regulator-input-current-limit-microamp\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"regulator-boot-on\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"regulator-always-on\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"regulator-pull-down\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"regulator-allow-bypass\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"regulator-allow-set-load\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"regulator-ramp-delay\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"regulator-settling-time-us\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"regulator-settling-time-up-us\00", align 1
@.str.25 = private unnamed_addr constant [94 x i8] c"\014%pOFn: ambiguous configuration for settling time, ignoring 'regulator-settling-time-up-us'\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"regulator-settling-time-down-us\00", align 1
@.str.27 = private unnamed_addr constant [96 x i8] c"\014%pOFn: ambiguous configuration for settling time, ignoring 'regulator-settling-time-down-us'\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"regulator-enable-ramp-delay\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"regulator-soft-start\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"regulator-active-discharge\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"regulator-initial-mode\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"\013%pOFn: invalid mode %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"\014%pOFn: mapping for mode %d not defined\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"regulator-allowed-modes\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"\013%pOFn: couldn't read allowed modes index %d, ret=%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"\013%pOFn: invalid regulator-allowed-modes element %u\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"\014%pOFn: mode mapping not defined\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"regulator-system-load\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"regulator-max-step-microvolt\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"regulator-over-current-protection\00", align 1
@regulator_states = internal unnamed_addr constant [5 x ptr] [ptr null, ptr null, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 4
@.str.41 = private unnamed_addr constant [15 x i8] c"regulator-mode\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"regulator-on-in-suspend\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"regulator-off-in-suspend\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"regulator-suspend-min-microvolt\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"regulator-suspend-max-microvolt\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"regulator-suspend-microvolt\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"regulator-changeable-in-suspend\00", align 1
@of_get_regulator_prot_limits.props = internal unnamed_addr constant [4 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], align 4
@.str.48 = private unnamed_addr constant [25 x i8] c"regulator-oc-%s-microamp\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"regulator-ov-%s-microvolt\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"regulator-temp-%s-kelvin\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"regulator-uv-%s-microvolt\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"protection\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"regulator-state-standby\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"regulator-state-mem\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"regulator-state-disk\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_of_get_regulator_init_data, ptr @__ksymtab_of_regulator_match], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_regulator_init_data(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [4 x ptr], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [255 x i8], align 1
  %8 = alloca i32, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %447, label %10

10:                                               ; preds = %3
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 228, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %447, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !8
  %15 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %16 = icmp sgt i32 %15, 0
  %17 = tail call i32 @llvm.smax.i32(i32 %15, i32 0) #8
  %18 = tail call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef null) #8
  store ptr %18, ptr %14, align 4
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, ptr %8, align 4
  %23 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 1
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 2
  %29 = load i32, ptr %28, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32, ptr %8, align 4
  %32 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 2
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = icmp eq i32 %36, 0
  %44 = icmp eq i32 %34, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 28
  %48 = load i16, ptr %47, align 4
  %49 = or i16 %48, 4
  store i16 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, ptr %8, align 4
  %55 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 3
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, ptr %8, align 4
  %61 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 4
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, ptr %8, align 4
  %67 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 5
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, ptr %8, align 4
  %73 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 6
  store i32 %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 11
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 2
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef null) #8
  %86 = icmp eq ptr %85, null
  %87 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 28
  %88 = load i16, ptr %87, align 4
  %89 = select i1 %86, i16 0, i16 2
  %90 = and i16 %88, -3
  %91 = or i16 %90, %89
  store i16 %91, ptr %87, align 4
  %92 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %93 = icmp ne ptr %92, null
  %94 = zext i1 %93 to i16
  %95 = load i16, ptr %87, align 4
  %96 = and i16 %95, -2
  %97 = or i16 %96, %94
  store i16 %97, ptr %87, align 4
  br i1 %93, label %102, label %98

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 11
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 8
  store i32 %101, ptr %99, align 4
  br label %102

102:                                              ; preds = %98, %84
  %103 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %104 = icmp eq ptr %103, null
  %105 = load i16, ptr %87, align 4
  %106 = select i1 %104, i16 0, i16 32
  %107 = and i16 %105, -33
  %108 = or i16 %107, %106
  store i16 %108, ptr %87, align 4
  %109 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef null) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 11
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %113, 32
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %111, %102
  %116 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null) #8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 11
  %120 = load i32, ptr %119, align 4
  %121 = or i32 %120, 16
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %118, %115
  %123 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32, ptr %8, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 22
  store i32 %126, ptr %129, align 4
  br label %133

130:                                              ; preds = %125
  %131 = load i16, ptr %87, align 4
  %132 = or i16 %131, 8
  store i16 %132, ptr %87, align 4
  br label %133

133:                                              ; preds = %130, %128, %122
  %134 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, ptr %8, align 4
  %138 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 23
  store i32 %137, ptr %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  %140 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 24
  %144 = load i32, ptr %143, align 4
  br label %148

145:                                              ; preds = %139
  %146 = load i32, ptr %8, align 4
  %147 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 24
  store i32 %146, ptr %147, align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = phi i32 [ %144, %142 ], [ %146, %145 ]
  %150 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 24
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 23
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %1) #9
  store i32 0, ptr %150, align 4
  br label %158

158:                                              ; preds = %156, %152, %148
  %159 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 25
  %163 = load i32, ptr %162, align 4
  br label %167

164:                                              ; preds = %158
  %165 = load i32, ptr %8, align 4
  %166 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 25
  store i32 %165, ptr %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = phi i32 [ %163, %161 ], [ %165, %164 ]
  %169 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 25
  %170 = icmp eq i32 %168, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 23
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %1) #9
  store i32 0, ptr %169, align 4
  br label %177

177:                                              ; preds = %175, %171, %167
  %178 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %179 = icmp sgt i32 %178, -1
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, ptr %8, align 4
  %182 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 26
  store i32 %181, ptr %182, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef null) #8
  %185 = icmp eq ptr %184, null
  %186 = load i16, ptr %87, align 4
  %187 = select i1 %185, i16 0, i16 16
  %188 = and i16 %186, -17
  %189 = or i16 %188, %187
  store i16 %189, ptr %87, align 4
  %190 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %191 = icmp sgt i32 %190, -1
  br i1 %191, label %192, label %197

192:                                              ; preds = %183
  %193 = load i32, ptr %8, align 4
  %194 = icmp eq i32 %193, 0
  %195 = select i1 %194, i32 1, i32 2
  %196 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 27
  store i32 %195, ptr %196, align 4
  br label %197

197:                                              ; preds = %192, %183
  %198 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %199 = icmp sgt i32 %198, -1
  br i1 %199, label %200, label %218

200:                                              ; preds = %197
  %201 = icmp eq ptr %2, null
  br i1 %201, label %215, label %202

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 60
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %215, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %8, align 4
  %208 = call i32 %204(i32 noundef %207) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i32, ptr %8, align 4
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %1, i32 noundef %211) #9
  br label %218

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 21
  store i32 %208, ptr %214, align 4
  br label %218

215:                                              ; preds = %202, %200
  %216 = load i32, ptr %8, align 4
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %1, i32 noundef %216) #9
  br label %218

218:                                              ; preds = %215, %213, %210, %197
  %219 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, i32 noundef 4) #8
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %258

221:                                              ; preds = %218
  %222 = icmp eq ptr %2, null
  br i1 %222, label %256, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 60
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %256, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 10
  br label %229

229:                                              ; preds = %246, %227
  %230 = phi i32 [ 0, %227 ], [ %247, %246 ]
  %231 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %230, ptr noundef nonnull %8) #8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %1, i32 noundef %230, i32 noundef %231) #9
  br label %249

235:                                              ; preds = %229
  %236 = load ptr, ptr %224, align 4
  %237 = load i32, ptr %8, align 4
  %238 = call i32 %236(i32 noundef %237) #8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load i32, ptr %8, align 4
  %242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %1, i32 noundef %241) #9
  br label %246

243:                                              ; preds = %235
  %244 = load i32, ptr %228, align 4
  %245 = or i32 %244, %238
  store i32 %245, ptr %228, align 4
  br label %246

246:                                              ; preds = %243, %240
  %247 = add nuw nsw i32 %230, 1
  %248 = icmp eq i32 %247, %219
  br i1 %248, label %249, label %229

249:                                              ; preds = %246, %233
  %250 = load i32, ptr %228, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 11
  %254 = load i32, ptr %253, align 4
  %255 = or i32 %254, 4
  store i32 %255, ptr %253, align 4
  br label %258

256:                                              ; preds = %223, %221
  %257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %1) #9
  br label %258

258:                                              ; preds = %256, %252, %249, %218
  %259 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %260 = icmp sgt i32 %259, -1
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32, ptr %8, align 4
  %263 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 7
  store i32 %262, ptr %263, align 4
  br label %264

264:                                              ; preds = %261, %258
  br i1 %16, label %265, label %272

265:                                              ; preds = %264
  %266 = shl i32 %17, 2
  %267 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %266, i32 noundef 3520) #8
  %268 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 8
  store ptr %267, ptr %268, align 4
  %269 = icmp eq ptr %267, null
  br i1 %269, label %445, label %270

270:                                              ; preds = %265
  %271 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %267, i32 noundef %17, i32 noundef 0) #8
  br label %272

272:                                              ; preds = %270, %264
  %273 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %274 = icmp sgt i32 %273, -1
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, ptr %8, align 4
  %277 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 9
  store i32 %276, ptr %277, align 4
  br label %278

278:                                              ; preds = %275, %272
  %279 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef null) #8
  %280 = icmp eq ptr %279, null
  %281 = load i16, ptr %87, align 4
  %282 = select i1 %280, i16 0, i16 64
  %283 = and i16 %281, -65
  %284 = or i16 %283, %282
  store i16 %284, ptr %87, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %285 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 16
  store ptr %285, ptr %5, align 4
  %286 = getelementptr inbounds ptr, ptr %5, i32 1
  %287 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 17
  store ptr %287, ptr %286, align 4
  %288 = getelementptr inbounds ptr, ptr %5, i32 2
  %289 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 19
  store ptr %289, ptr %288, align 4
  %290 = getelementptr inbounds ptr, ptr %5, i32 3
  %291 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 18
  store ptr %291, ptr %290, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  br label %292

292:                                              ; preds = %345, %278
  %293 = phi ptr [ %285, %278 ], [ %347, %345 ]
  %294 = phi i32 [ 0, %278 ], [ %343, %345 ]
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(255) %7, i8 0, i32 255, i1 false) #8, !annotation !8
  %295 = getelementptr inbounds %struct.notification_limit, ptr %293, i32 0, i32 1
  %296 = getelementptr inbounds %struct.notification_limit, ptr %293, i32 0, i32 2
  %297 = getelementptr [4 x ptr], ptr @of_get_regulator_prot_limits.props, i32 0, i32 %294
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr [4 x i8], ptr %6, i32 0, i32 %294
  %300 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 255, ptr noundef %298, ptr noundef nonnull @.str.52) #8
  %301 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %302 = icmp sgt i32 %301, -1
  br i1 %302, label %303, label %309

303:                                              ; preds = %292
  %304 = load i32, ptr %4, align 4
  switch i32 %304, label %305 [
    i32 0, label %306
    i32 1, label %307
  ]

305:                                              ; preds = %303
  br label %307

306:                                              ; preds = %303
  br label %307

307:                                              ; preds = %306, %305, %303
  %308 = phi i32 [ %304, %305 ], [ -1, %306 ], [ -2, %303 ]
  store i32 %308, ptr %293, align 4
  br label %309

309:                                              ; preds = %307, %292
  %310 = lshr i32 %301, 31
  %311 = trunc i32 %310 to i8
  %312 = xor i8 %311, 1
  %313 = load i8, ptr %299, align 1, !range !9
  %314 = or i8 %313, %312
  %315 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 255, ptr noundef %298, ptr noundef nonnull @.str.53) #8
  %316 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %317 = icmp sgt i32 %316, -1
  br i1 %317, label %318, label %324

318:                                              ; preds = %309
  %319 = load i32, ptr %4, align 4
  switch i32 %319, label %321 [
    i32 0, label %320
    i32 1, label %322
  ]

320:                                              ; preds = %318
  br label %322

321:                                              ; preds = %318
  br label %322

322:                                              ; preds = %321, %320, %318
  %323 = phi i32 [ %319, %321 ], [ -1, %320 ], [ -2, %318 ]
  store i32 %323, ptr %295, align 4
  br label %324

324:                                              ; preds = %322, %309
  %325 = lshr i32 %316, 31
  %326 = trunc i32 %325 to i8
  %327 = xor i8 %326, 1
  %328 = or i8 %314, %327
  %329 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 255, ptr noundef %298, ptr noundef nonnull @.str.54) #8
  %330 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %331 = icmp sgt i32 %330, -1
  br i1 %331, label %332, label %338

332:                                              ; preds = %324
  %333 = load i32, ptr %4, align 4
  switch i32 %333, label %335 [
    i32 0, label %334
    i32 1, label %336
  ]

334:                                              ; preds = %332
  br label %336

335:                                              ; preds = %332
  br label %336

336:                                              ; preds = %335, %334, %332
  %337 = phi i32 [ %333, %335 ], [ -1, %334 ], [ -2, %332 ]
  store i32 %337, ptr %296, align 4
  br label %338

338:                                              ; preds = %336, %324
  %339 = lshr i32 %330, 31
  %340 = trunc i32 %339 to i8
  %341 = xor i8 %340, 1
  %342 = or i8 %328, %341
  store i8 %342, ptr %299, align 1
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %7) #8
  %343 = add nuw nsw i32 %294, 1
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %348, label %345

345:                                              ; preds = %338
  %346 = getelementptr [4 x ptr], ptr %5, i32 0, i32 %343
  %347 = load ptr, ptr %346, align 4
  br label %292

348:                                              ; preds = %338
  %349 = load i8, ptr %6, align 4, !range !9
  %350 = load i16, ptr %87, align 4
  %351 = shl nuw i8 %349, 7
  %352 = zext i8 %351 to i16
  %353 = and i16 %350, -1921
  %354 = or i16 %353, %352
  %355 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  %356 = load i8, ptr %355, align 1, !range !9
  %357 = zext i8 %356 to i16
  %358 = shl nuw nsw i16 %357, 8
  %359 = or i16 %358, %354
  %360 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  %361 = load i8, ptr %360, align 2, !range !9
  %362 = zext i8 %361 to i16
  %363 = shl nuw nsw i16 %362, 10
  %364 = or i16 %359, %363
  %365 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  %366 = load i8, ptr %365, align 1, !range !9
  %367 = zext i8 %366 to i16
  %368 = shl nuw nsw i16 %367, 9
  %369 = or i16 %364, %368
  store i16 %369, ptr %87, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %370 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 15
  %371 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 13
  %372 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 14
  %373 = icmp eq ptr %2, null
  %374 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 60
  %375 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 1, i32 20
  br label %376

376:                                              ; preds = %442, %348
  %377 = phi i32 [ 0, %348 ], [ %443, %442 ]
  switch i32 %377, label %442 [
    i32 3, label %380
    i32 4, label %378
    i32 2, label %379
  ]

378:                                              ; preds = %376
  br label %380

379:                                              ; preds = %376
  br label %380

380:                                              ; preds = %379, %378, %376
  %381 = phi ptr [ %370, %379 ], [ %371, %378 ], [ %372, %376 ]
  %382 = getelementptr [5 x ptr], ptr @regulator_states, i32 0, i32 %377
  %383 = load ptr, ptr %382, align 4
  %384 = call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef %383) #8
  %385 = icmp ne ptr %384, null
  %386 = icmp ne ptr %381, null
  %387 = select i1 %385, i1 %386, i1 false
  br i1 %387, label %388, label %442

388:                                              ; preds = %380
  %389 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %384, ptr noundef nonnull @.str.41, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %390 = icmp sgt i32 %389, -1
  br i1 %390, label %391, label %407

391:                                              ; preds = %388
  br i1 %373, label %404, label %392

392:                                              ; preds = %391
  %393 = load ptr, ptr %374, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %404, label %395

395:                                              ; preds = %392
  %396 = load i32, ptr %8, align 4
  %397 = call i32 %393(i32 noundef %396) #8
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %395
  %400 = load i32, ptr %8, align 4
  %401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %1, i32 noundef %400) #9
  br label %407

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.regulator_state, ptr %381, i32 0, i32 3
  store i32 %397, ptr %403, align 4
  br label %407

404:                                              ; preds = %392, %391
  %405 = load i32, ptr %8, align 4
  %406 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %1, i32 noundef %405) #9
  br label %407

407:                                              ; preds = %404, %402, %399, %388
  %408 = call ptr @of_find_property(ptr noundef nonnull %384, ptr noundef nonnull @.str.42, ptr noundef null) #8
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %413

410:                                              ; preds = %407
  %411 = call ptr @of_find_property(ptr noundef nonnull %384, ptr noundef nonnull @.str.43, ptr noundef null) #8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %416, label %413

413:                                              ; preds = %410, %407
  %414 = phi i32 [ 2, %407 ], [ 1, %410 ]
  %415 = getelementptr inbounds %struct.regulator_state, ptr %381, i32 0, i32 4
  store i32 %414, ptr %415, align 4
  br label %416

416:                                              ; preds = %413, %410
  %417 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %384, ptr noundef nonnull @.str.44, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %418 = icmp sgt i32 %417, -1
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i32, ptr %8, align 4
  %421 = getelementptr inbounds %struct.regulator_state, ptr %381, i32 0, i32 1
  store i32 %420, ptr %421, align 4
  br label %422

422:                                              ; preds = %419, %416
  %423 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %384, ptr noundef nonnull @.str.45, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %424 = icmp sgt i32 %423, -1
  br i1 %424, label %425, label %428

425:                                              ; preds = %422
  %426 = load i32, ptr %8, align 4
  %427 = getelementptr inbounds %struct.regulator_state, ptr %381, i32 0, i32 2
  store i32 %426, ptr %427, align 4
  br label %428

428:                                              ; preds = %425, %422
  %429 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %384, ptr noundef nonnull @.str.46, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %430 = getelementptr inbounds %struct.regulator_state, ptr %381, i32 0, i32 1
  %431 = icmp slt i32 %429, 0
  %432 = select i1 %431, ptr %430, ptr %8
  %433 = load i32, ptr %432, align 4
  store i32 %433, ptr %381, align 4
  %434 = call ptr @of_find_property(ptr noundef nonnull %384, ptr noundef nonnull @.str.47, ptr noundef null) #8
  %435 = icmp eq ptr %434, null
  br i1 %435, label %438, label %436

436:                                              ; preds = %428
  %437 = getelementptr inbounds %struct.regulator_state, ptr %381, i32 0, i32 5
  store i8 1, ptr %437, align 4
  br label %438

438:                                              ; preds = %436, %428
  %439 = icmp eq i32 %377, 3
  br i1 %439, label %440, label %441

440:                                              ; preds = %438
  store i32 3, ptr %375, align 4
  br label %441

441:                                              ; preds = %440, %438
  call void @of_node_put(ptr noundef nonnull %384) #8
  br label %442

442:                                              ; preds = %441, %380, %376
  %443 = add nuw nsw i32 %377, 1
  %444 = icmp eq i32 %443, 5
  br i1 %444, label %446, label %376

445:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %447

446:                                              ; preds = %442
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %447

447:                                              ; preds = %446, %445, %10, %3
  %448 = phi ptr [ null, %3 ], [ null, %10 ], [ %11, %446 ], [ null, %445 ]
  ret ptr %448
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_regulator_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %59

8:                                                ; preds = %4
  %9 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_of_regulator_put_matches, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %8
  store ptr %2, ptr %9, align 4
  %12 = getelementptr inbounds %struct.devm_of_regulator_matches, ptr %9, i32 0, i32 1
  store i32 %3, ptr %12, align 4
  tail call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %9) #8
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ %18, %14 ], [ 0, %11 ]
  %16 = getelementptr %struct.of_regulator_match, ptr %2, i32 %15, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr %struct.of_regulator_match, ptr %2, i32 %15, i32 3
  store ptr null, ptr %17, align 4
  %18 = add nuw i32 %15, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %11
  %21 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %55, %20
  %24 = phi ptr [ %57, %55 ], [ %21, %20 ]
  %25 = phi i32 [ %56, %55 ], [ 0, %20 ]
  %26 = tail call ptr @of_get_property(ptr noundef nonnull %24, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi ptr [ %26, %23 ], [ %29, %28 ]
  br i1 %13, label %55, label %32

32:                                               ; preds = %52, %30
  %33 = phi i32 [ %53, %52 ], [ 0, %30 ]
  %34 = getelementptr %struct.of_regulator_match, ptr %2, i32 %33, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = getelementptr %struct.of_regulator_match, ptr %2, i32 %33
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strcmp(ptr noundef %39, ptr noundef %31)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = getelementptr %struct.of_regulator_match, ptr %2, i32 %33, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr @of_get_regulator_init_data(ptr noundef nonnull %0, ptr noundef nonnull %24, ptr noundef %44)
  %46 = getelementptr %struct.of_regulator_match, ptr %2, i32 %33, i32 2
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #9
  tail call void @of_node_put(ptr noundef nonnull %24) #8
  br label %59

49:                                               ; preds = %42
  %50 = tail call ptr @of_node_get(ptr noundef nonnull %24) #8
  store ptr %50, ptr %34, align 4
  %51 = add i32 %25, 1
  br label %55

52:                                               ; preds = %37, %32
  %53 = add nuw i32 %33, 1
  %54 = icmp eq i32 %53, %3
  br i1 %54, label %55, label %32

55:                                               ; preds = %52, %49, %30
  %56 = phi i32 [ %51, %49 ], [ %25, %30 ], [ %25, %52 ]
  %57 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %24) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %23

59:                                               ; preds = %55, %48, %20, %8, %4
  %60 = phi i32 [ -22, %4 ], [ -12, %8 ], [ -22, %48 ], [ 0, %20 ], [ %56, %55 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_of_regulator_put_matches(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.devm_of_regulator_matches, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %11, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr %struct.of_regulator_match, ptr %8, i32 %7, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @of_node_put(ptr noundef %10) #8
  %11 = add nuw i32 %7, 1
  %12 = load i32, ptr %3, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %6, label %14

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @regulator_of_get_init_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %68, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %6, ptr noundef nonnull %14) #8
  br label %24

18:                                               ; preds = %12
  %19 = tail call ptr @of_node_get(ptr noundef nonnull %6) #8
  %20 = load ptr, ptr %9, align 4
  %21 = load ptr, ptr %19, align 4
  %22 = tail call i32 @strcmp(ptr noundef %20, ptr noundef %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %18, %16
  %25 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %25, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 3
  br label %32

32:                                               ; preds = %47, %30
  %33 = phi ptr [ %28, %30 ], [ %48, %47 ]
  %34 = tail call ptr @of_get_property(ptr noundef nonnull %33, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i8, ptr %31, align 4, !range !9
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 2
  %40 = select i1 %38, ptr %33, ptr %39
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi ptr [ %34, %32 ], [ %41, %36 ]
  %44 = load ptr, ptr %9, align 4
  %45 = tail call i32 @strcmp(ptr noundef %44, ptr noundef %43) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %25, ptr noundef nonnull %33) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %32

50:                                               ; preds = %47, %42, %27
  %51 = phi ptr [ null, %27 ], [ null, %47 ], [ %33, %42 ]
  tail call void @of_node_put(ptr noundef nonnull %25) #8
  br label %52

52:                                               ; preds = %50, %18
  %53 = phi ptr [ %19, %18 ], [ %51, %50 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = tail call ptr @of_get_regulator_init_data(ptr noundef %0, ptr noundef nonnull %53, ptr noundef %1)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = tail call i32 %60(ptr noundef nonnull %53, ptr noundef %1, ptr noundef %2) #8
  switch i32 %63, label %66 [
    i32 0, label %65
    i32 -517, label %64
  ]

64:                                               ; preds = %62
  tail call void @of_node_put(ptr noundef nonnull %53) #8
  br label %68

65:                                               ; preds = %62, %58
  store ptr %53, ptr %3, align 4
  br label %68

66:                                               ; preds = %62, %55
  %67 = phi ptr [ @.str.2, %55 ], [ @.str.3, %62 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %67, ptr noundef nonnull %53) #9
  tail call void @of_node_put(ptr noundef nonnull %53) #8
  br label %68

68:                                               ; preds = %66, %65, %64, %52, %24, %8, %4
  %69 = phi ptr [ null, %66 ], [ %56, %65 ], [ null, %52 ], [ inttoptr (i32 -517 to ptr), %64 ], [ null, %8 ], [ null, %4 ], [ null, %24 ]
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_regulator_by_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @class_find_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_of_node) #8
  %3 = icmp eq ptr %2, null
  %4 = getelementptr i8, ptr %2, i32 -120
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_n_coupled(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @of_count_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_check_coupling_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_count_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0) #8
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  br label %13

13:                                               ; preds = %57, %11
  %14 = phi i1 [ true, %11 ], [ %59, %57 ]
  %15 = phi i32 [ 0, %11 ], [ %58, %57 ]
  %16 = load ptr, ptr %12, align 8
  %17 = getelementptr inbounds %struct.regulation_constraints, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i32, ptr %18, i32 %15
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %61

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %24 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %15, ptr noundef nonnull %3) #8
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %3, align 4
  %27 = select i1 %25, ptr %26, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %28 = icmp eq ptr %27, null
  %29 = call i32 @of_count_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %30 = icmp eq i32 %29, %9
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = call i32 @of_count_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %43, %31
  %35 = phi i32 [ %44, %43 ], [ 0, %31 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %36 = call i32 @__of_parse_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %35, ptr noundef nonnull %2) #8
  %37 = icmp ne i32 %36, 0
  %38 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %39 = icmp eq ptr %38, null
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %34
  %42 = icmp eq ptr %38, %7
  call void @of_node_put(ptr noundef nonnull %38) #8
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = add nuw nsw i32 %35, 1
  %45 = icmp eq i32 %44, %32
  br i1 %45, label %52, label %34

46:                                               ; preds = %41
  %47 = call i32 @of_property_read_u32_index(ptr noundef %27, ptr noundef nonnull @.str.8, i32 noundef %35, ptr noundef nonnull %4) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %4, align 4
  %51 = icmp eq i32 %50, %20
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %43, %34, %31, %23
  %53 = phi ptr [ @.str.7, %34 ], [ @.str.7, %43 ], [ @.str.6, %23 ], [ @.str.7, %31 ], [ @.str.9, %49 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %53) #9
  br label %54

54:                                               ; preds = %52, %46
  call void @of_node_put(ptr noundef %27) #8
  br label %56

55:                                               ; preds = %49
  call void @of_node_put(ptr noundef %27) #8
  br i1 %28, label %56, label %57

56:                                               ; preds = %55, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %61

57:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %58 = add nuw nsw i32 %15, 1
  %59 = icmp ult i32 %58, %9
  %60 = icmp eq i32 %58, %9
  br i1 %60, label %61, label %13

61:                                               ; preds = %57, %56, %22, %1
  %62 = phi i1 [ %14, %56 ], [ %14, %22 ], [ false, %1 ], [ %59, %57 ]
  %63 = xor i1 %62, true
  ret i1 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_parse_coupled_regulator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %3) #8
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = call ptr @class_find_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull @device_match_of_node) #8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -120
  %15 = select i1 %13, ptr null, ptr %14
  call void @of_node_put(ptr noundef nonnull %8) #8
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi ptr [ %15, %11 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
