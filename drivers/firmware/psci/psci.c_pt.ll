; ModuleID = '/llk/IR/drivers/firmware/psci/psci.c_pt.bc'
source_filename = "../drivers/firmware/psci/psci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.psci_0_1_function_ids = type { i32, i32, i32, i32 }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@resident_cpu = internal unnamed_addr global i32 -1, align 4
@psci_0_1_function_ids = internal unnamed_addr global %struct.psci_0_1_function_ids zeroinitializer, align 4
@psci_cpu_suspend_feature = internal unnamed_addr global i32 0, align 4
@invoke_psci_fn = internal unnamed_addr global ptr null, align 4
@psci_ops = dso_local local_unnamed_addr global %struct.psci_operations zeroinitializer, align 4
@psci_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @psci_0_1_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci-0.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @psci_0_2_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @psci_1_0_init }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [46 x i8] c"\016psci: Using PSCI v0.1 Function IDs from DT\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cpu_suspend\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cpu_off\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cpu_on\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"migrate\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\016psci: probing for conduit method from DT.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\014psci: missing \22method\22 property\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"hvc\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\014psci: invalid \22method\22 property: %s\0A\00", align 1
@psci_conduit = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"\016psci: PSCIv%d.%d detected in firmware.\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"\013psci: Conflicting PSCI version detected.\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\016psci: Using standard PSCI v0.2 function IDs\0A\00", align 1
@psci_sys_reset_nb = internal global %struct.notifier_block { ptr @psci_sys_reset, ptr null, i32 129 }, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@psci_system_reset2_supported = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"\016psci: Trusted OS migration not required\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\016psci: MIGRATE_INFO_TYPE not supported.\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"\013psci: MIGRATE_INFO_TYPE returned unknown type (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"\014psci: MIGRATE_INFO_UP_CPU reported invalid physical ID (0x%lx)\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"\016psci: Trusted OS resident on physical CPU 0x%lx\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.21 = private unnamed_addr constant [39 x i8] c"\016psci: SMC Calling Convention v%d.%d\0A\00", align 1
@psci_suspend_ops = internal constant %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr null, ptr null, ptr @psci_system_suspend_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c"\016psci: OSI mode supported.\0A\00", align 1
@switch.table.psci_0_2_migrate = private unnamed_addr constant [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @psci_tos_resident_on(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @resident_cpu, align 4
  %3 = icmp eq i32 %2, %0
  ret i1 %3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @get_psci_0_1_function_ids(ptr noalias nocapture writeonly sret(%struct.psci_0_1_function_ids) align 4 %0) local_unnamed_addr #1 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) @psci_0_1_function_ids, i32 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @psci_has_osi_support() local_unnamed_addr #0 {
  %1 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %2 = and i32 %1, 1
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @psci_power_state_is_valid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 -50462720, i32 -1342177280
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, 0
  ret i1 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psci_set_osi_mode(i1 noundef zeroext %0) local_unnamed_addr #4 {
  %2 = zext i1 %0 to i32
  %3 = load ptr, ptr @invoke_psci_fn, align 4
  %4 = tail call i32 %3(i32 noundef -2080374769, i32 noundef %2, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %5 = add i32 %4, 9
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psci_cpu_suspend_enter(i32 noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 65536, i32 1073741824
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %10 = tail call i32 %9(i32 noundef %0, i32 noundef 0) #12
  br label %13

11:                                               ; preds = %1
  %12 = tail call i32 @cpu_suspend(i32 noundef %0, ptr noundef nonnull @psci_suspend_finisher) #12
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ %10, %8 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_suspend_finisher(i32 noundef %0) #4 {
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_resume to i32), i32 -2130706432, i32 8454144) #13, !srcloc !9
  %3 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %4 = tail call i32 %3(i32 noundef %0, i32 noundef %2) #12
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @psci_dt_init() local_unnamed_addr #6 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  store ptr null, ptr %1, align 4, !annotation !10
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @psci_of_match, ptr noundef nonnull %1) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %2) #12
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef nonnull %2) #12
  call void @of_node_put(ptr noundef nonnull %2) #12
  br label %11

11:                                               ; preds = %6, %4, %0
  %12 = phi i32 [ %10, %6 ], [ -19, %4 ], [ -19, %0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @psci_0_1_init(ptr noundef %0) #6 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = tail call fastcc i32 @get_set_conduit_method(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  store ptr @psci_0_1_get_version, ptr @psci_ops, align 4
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, ptr %2, align 4
  store i32 %10, ptr @psci_0_1_function_ids, align 4
  store ptr @psci_0_1_cpu_suspend, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4
  store i32 %15, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 2), align 4
  store ptr @psci_0_1_cpu_off, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 2), align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, ptr %2, align 4
  store i32 %20, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 1), align 4
  store ptr @psci_0_1_cpu_on, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, ptr %2, align 4
  store i32 %25, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 3), align 4
  store ptr @psci_0_1_migrate, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 4), align 4
  br label %26

26:                                               ; preds = %24, %21, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @psci_0_2_init(ptr noundef %0) #6 section ".init.text" {
  %2 = tail call fastcc i32 @get_set_conduit_method(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @psci_probe() #15
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @psci_1_0_init(ptr noundef %0) #6 section ".init.text" {
  %2 = tail call fastcc i32 @get_set_conduit_method(ptr noundef %0) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @psci_probe() #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  %13 = tail call i32 @psci_set_osi_mode(i1 noundef zeroext false)
  br label %14

14:                                               ; preds = %11, %7, %4, %1
  %15 = phi i32 [ %5, %4 ], [ 0, %11 ], [ 0, %7 ], [ %2, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_set_conduit_method(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4, !annotation !10
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  %4 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %19

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.8, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store ptr @__invoke_psci_fn_hvc, ptr @invoke_psci_fn, align 4
  store i32 2, ptr @psci_conduit, align 4
  br label %19

13:                                               ; preds = %8
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.9, ptr noundef %9)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store ptr @__invoke_psci_fn_smc, ptr @invoke_psci_fn, align 4
  store i32 1, ptr @psci_conduit, align 4
  br label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %9) #14
  br label %19

19:                                               ; preds = %17, %16, %12, %6
  %20 = phi i32 [ -6, %6 ], [ -22, %17 ], [ 0, %16 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @psci_0_1_get_version() #8 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_1_cpu_suspend(i32 noundef %0, i32 noundef %1) #4 {
  %3 = load i32, ptr @psci_0_1_function_ids, align 4
  %4 = load ptr, ptr @invoke_psci_fn, align 4
  %5 = tail call i32 %4(i32 noundef %3, i32 noundef %0, i32 noundef %1, i32 noundef 0) #12, !callees !8
  %6 = add i32 %5, 9
  %7 = icmp ult i32 %6, 10
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_1_cpu_off(i32 noundef %0) #4 {
  %2 = load i32, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 2), align 4
  %3 = load ptr, ptr @invoke_psci_fn, align 4
  %4 = tail call i32 %3(i32 noundef %2, i32 noundef %0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %5 = add i32 %4, 9
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_1_cpu_on(i32 noundef %0, i32 noundef %1) #4 {
  %3 = load i32, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 1), align 4
  %4 = load ptr, ptr @invoke_psci_fn, align 4
  %5 = tail call i32 %4(i32 noundef %3, i32 noundef %0, i32 noundef %1, i32 noundef 0) #12, !callees !8
  %6 = add i32 %5, 9
  %7 = icmp ult i32 %6, 10
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_1_migrate(i32 noundef %0) #4 {
  %2 = load i32, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 3), align 4
  %3 = load ptr, ptr @invoke_psci_fn, align 4
  %4 = tail call i32 %3(i32 noundef %2, i32 noundef %0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %5 = add i32 %4, 9
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__invoke_psci_fn_hvc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  call void @__arm_smccc_hvc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #12
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__invoke_psci_fn_smc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  call void @__arm_smccc_smc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #12
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_hvc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @psci_probe() unnamed_addr #6 section ".init.text" {
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %2 = tail call i32 %1(i32 noundef -2080374784, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %3 = lshr i32 %2, 16
  %4 = and i32 %2, 65535
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %4) #14
  %6 = icmp ult i32 %2, 65536
  %7 = icmp ult i32 %4, 2
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %23

11:                                               ; preds = %0
  tail call fastcc void @psci_0_2_set_functions() #15
  tail call fastcc void @psci_init_migrate() #15
  br i1 %6, label %23, label %12

12:                                               ; preds = %11
  tail call fastcc void @psci_init_smccc() #15
  %13 = load ptr, ptr @invoke_psci_fn, align 4
  %14 = tail call i32 %13(i32 noundef -2080374774, i32 noundef -2080374783, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 %14, ptr @psci_cpu_suspend_feature, align 4
  br label %17

17:                                               ; preds = %16, %12
  tail call fastcc void @psci_init_system_suspend() #15
  %18 = load ptr, ptr @invoke_psci_fn, align 4
  %19 = tail call i32 %18(i32 noundef -2080374774, i32 noundef -2080374766, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i1 true, ptr @psci_system_reset2_supported, align 1
  br label %22

22:                                               ; preds = %21, %17
  tail call void @kvm_init_hyp_services() #12
  br label %23

23:                                               ; preds = %22, %11, %9
  %24 = phi i32 [ -22, %9 ], [ 0, %22 ], [ 0, %11 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_2_get_version() #4 {
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %2 = tail call i32 %1(i32 noundef -2080374784, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @psci_0_2_set_functions() unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  store ptr @psci_0_2_get_version, ptr @psci_ops, align 4
  store ptr @psci_0_2_cpu_suspend, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  store ptr @psci_0_2_cpu_off, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 2), align 4
  store ptr @psci_0_2_cpu_on, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  store ptr @psci_0_2_migrate, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 4), align 4
  store ptr @psci_affinity_info, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  store ptr @psci_migrate_info_type, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 6), align 4
  %2 = tail call i32 @register_restart_handler(ptr noundef nonnull @psci_sys_reset_nb) #12
  store ptr @psci_sys_poweroff, ptr @pm_power_off, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @psci_init_migrate() unnamed_addr #6 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 6), align 4
  %2 = tail call i32 %1() #12
  switch i32 %2, label %7 [
    i32 2, label %3
    i32 -1, label %5
  ]

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %32

5:                                                ; preds = %0
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %32

7:                                                ; preds = %0
  %8 = icmp ugt i32 %2, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %2) #14
  br label %32

11:                                               ; preds = %7
  %12 = load ptr, ptr @invoke_psci_fn, align 4
  %13 = tail call i32 %12(i32 noundef -2080374777, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %14 = icmp ult i32 %13, 16777216
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %13) #14
  br label %32

17:                                               ; preds = %11
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %25, %17
  %21 = phi i32 [ %26, %25 ], [ 0, %17 ]
  %22 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = add nuw i32 %21, 1
  %27 = icmp eq i32 %26, %18
  br i1 %27, label %28, label %20

28:                                               ; preds = %25, %20, %17
  %29 = phi i32 [ -22, %17 ], [ %21, %20 ], [ -22, %25 ]
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 -1)
  store i32 %30, ptr @resident_cpu, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %13) #14
  br label %32

32:                                               ; preds = %28, %15, %9, %5, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @psci_init_smccc() unnamed_addr #6 section ".init.text" {
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %2 = tail call i32 %1(i32 noundef -2080374774, i32 noundef -2147483648, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @invoke_psci_fn, align 4
  %6 = tail call i32 %5(i32 noundef -2147483648, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %7 = icmp ugt i32 %6, 65536
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, ptr @psci_conduit, align 4
  tail call void @arm_smccc_version_init(i32 noundef %6, i32 noundef %9) #14
  br label %10

10:                                               ; preds = %8, %4, %0
  %11 = phi i32 [ 65536, %0 ], [ %6, %8 ], [ 65536, %4 ]
  %12 = lshr i32 %11, 16
  %13 = and i32 %11, 65535
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %13) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @psci_init_system_suspend() unnamed_addr #6 section ".init.text" {
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %2 = tail call i32 %1(i32 noundef -2080374774, i32 noundef -2080374770, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @suspend_set_ops(ptr noundef nonnull @psci_suspend_ops) #12
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvm_init_hyp_services() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_2_cpu_suspend(i32 noundef %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr @invoke_psci_fn, align 4
  %4 = tail call i32 %3(i32 noundef -2080374783, i32 noundef %0, i32 noundef %1, i32 noundef 0) #12, !callees !8
  %5 = add i32 %4, 9
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_2_cpu_off(i32 noundef %0) #4 {
  %2 = load ptr, ptr @invoke_psci_fn, align 4
  %3 = tail call i32 %2(i32 noundef -2080374782, i32 noundef %0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %4 = add i32 %3, 9
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_2_cpu_on(i32 noundef %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr @invoke_psci_fn, align 4
  %4 = tail call i32 %3(i32 noundef -2080374781, i32 noundef %0, i32 noundef %1, i32 noundef 0) #12, !callees !8
  %5 = add i32 %4, 9
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_0_2_migrate(i32 noundef %0) #4 {
  %2 = load ptr, ptr @invoke_psci_fn, align 4
  %3 = tail call i32 %2(i32 noundef -2080374779, i32 noundef %0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  %4 = add i32 %3, 9
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_affinity_info(i32 noundef %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr @invoke_psci_fn, align 4
  %4 = tail call i32 %3(i32 noundef -2080374780, i32 noundef %0, i32 noundef %1, i32 noundef 0) #12, !callees !8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_migrate_info_type() #4 {
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %2 = tail call i32 %1(i32 noundef -2080374778, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psci_sys_poweroff() #4 {
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %2 = tail call i32 %1(i32 noundef -2080374776, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12, !callees !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_sys_reset(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = load i32, ptr @reboot_mode, align 4
  %5 = and i32 %4, -3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load i1, ptr @psci_system_reset2_supported, align 1
  br i1 %8, label %10, label %9

9:                                                ; preds = %7, %3
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ -2080374775, %9 ], [ -2080374766, %7 ]
  %12 = load ptr, ptr @invoke_psci_fn, align 4
  %13 = tail call i32 %12(i32 noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @arm_smccc_version_init(i32 noundef, i32 noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_system_suspend_enter(i32 noundef %0) #4 {
  %2 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @psci_system_suspend) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_system_suspend(i32 noundef %0) #4 {
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_resume to i32), i32 -2130706432, i32 8454144) #13, !srcloc !9
  %3 = load ptr, ptr @invoke_psci_fn, align 4
  %4 = tail call i32 %3(i32 noundef -2080374770, i32 noundef %2, i32 noundef 0, i32 noundef 0) #12, !callees !8
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { cold }

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
!8 = !{ptr @__invoke_psci_fn_hvc, ptr @__invoke_psci_fn_smc}
!9 = !{i64 2148955317, i64 2148955340, i64 2148955372, i64 2148955404, i64 2148955442, i64 2148955472}
!10 = !{!"auto-init"}
