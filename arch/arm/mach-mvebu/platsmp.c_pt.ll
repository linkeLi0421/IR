; ModuleID = '/llk/IR/arch/arm/mach-mvebu/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@armada_xp_smp_ops = dso_local constant %struct.smp_operations { ptr @armada_xp_smp_init_cpus, ptr @armada_xp_smp_prepare_cpus, ptr @armada_xp_secondary_init, ptr @armada_xp_boot_secondary, ptr @armada_xp_cpu_kill, ptr @armada_xp_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [22 x i8] c"marvell,armada-xp-smp\00", align 1
@__cpu_method_of_table_armada_xp_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @armada_xp_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"marvell,98dx3236-smp\00", align 1
@mv98dx3236_smp_ops = internal constant %struct.smp_operations { ptr @armada_xp_smp_init_cpus, ptr @armada_xp_smp_prepare_cpus, ptr @armada_xp_secondary_init, ptr @mv98dx3236_boot_secondary, ptr @armada_xp_cpu_kill, ptr @armada_xp_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mv98dx3236_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @mv98dx3236_smp_ops }, section "__cpu_method_of_table", align 4
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid number of CPUs in DT\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@boot_cpu_clk = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"arm/mvebu/sync_clocks:online\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"marvell,bootrom\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Cannot find 'marvell,bootrom' compatible node\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Cannot get 'bootrom' node address\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"The address for the BootROM is incorrect\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"arch/arm/mach-mvebu/platsmp.c\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"missing cpu node\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\016Booting CPU %d\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"\014unable to boot CPU: %d\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@of_mv98dx3236_resume_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,98dx3336-resume-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_armada_xp_smp, ptr @__cpu_method_of_table_mv98dx3236_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada_xp_smp_init_cpus() #0 section ".init.text" {
  %1 = load i32, ptr @__cpu_possible_mask, align 4
  %2 = and i32 %1, 65535
  %3 = tail call i32 @__sw_hweight32(i32 noundef %2) #9
  %4 = add i32 %3, -5
  %5 = icmp ult i32 %4, -4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #10
  unreachable

7:                                                ; preds = %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada_xp_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %3() #9
  %4 = tail call i32 @set_cpu_coherent() #9
  %5 = tail call ptr @llvm.thread.pointer() #9
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @of_get_cpu_node(i32 noundef %7, ptr noundef null) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.9) #9
  br label %15

11:                                               ; preds = %1
  %12 = tail call ptr @of_clk_get(ptr noundef nonnull %8, i32 noundef 0) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16, !prof !9

14:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 48, i32 noundef 9, ptr noundef null) #9
  br label %15

15:                                               ; preds = %14, %10
  store ptr null, ptr @boot_cpu_clk, align 4
  br label %27

16:                                               ; preds = %11
  store ptr %12, ptr @boot_cpu_clk, align 4
  %17 = icmp eq ptr %12, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @clk_prepare(ptr noundef nonnull %12) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = tail call i32 @clk_enable(ptr noundef nonnull %12) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef nonnull %12) #9
  br label %25

25:                                               ; preds = %24, %21, %18
  %26 = tail call i32 @__cpuhp_setup_state(i32 noundef 157, ptr noundef nonnull @.str.3, i1 noundef zeroext false, ptr noundef nonnull @armada_xp_sync_secondary_clk, ptr noundef null, i1 noundef zeroext false) #9
  br label %27

27:                                               ; preds = %25, %16, %15
  %28 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #10
  unreachable

31:                                               ; preds = %27
  %32 = call i32 @of_address_to_resource(ptr noundef nonnull %28, i32 noundef 0, ptr noundef nonnull %2) #9
  call void @of_node_put(ptr noundef nonnull %28) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #10
  unreachable

35:                                               ; preds = %31
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, -1048576
  %38 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, -1
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #10
  unreachable

43:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_xp_secondary_init(i32 noundef %0) #1 {
  tail call void @mvebu_v7_pmsu_idle_exit() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %0) #11
  %4 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  tail call void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef %5, ptr noundef nonnull @armada_xp_secondary_startup) #9
  %6 = and i32 %0, 31
  %7 = add nuw nsw i32 %6, 1
  %8 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %7
  %9 = lshr i32 %0, 5
  %10 = sub nsw i32 0, %9
  %11 = getelementptr i32, ptr %8, i32 %10
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %11) #9
  %12 = tail call i32 @mvebu_cpu_reset_deassert(i32 noundef %5) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %12) #11
  br label %16

16:                                               ; preds = %14, %2
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @armada_xp_cpu_kill(i32 noundef %0) #2 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_xp_cpu_die(i32 noundef %0) #1 {
  %2 = tail call i32 @armada_370_xp_pmsu_idle_enter(i32 noundef 1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpu_coherent() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_sync_secondary_clk(i32 noundef %0) #1 {
  %2 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.9) #9
  br label %25

5:                                                ; preds = %1
  %6 = tail call ptr @of_clk_get(ptr noundef nonnull %2, i32 noundef 0) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 48, i32 noundef 9, ptr noundef null) #9
  br label %25

9:                                                ; preds = %5
  %10 = icmp ne ptr %6, null
  %11 = load ptr, ptr @boot_cpu_clk, align 4
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = tail call i32 @clk_prepare(ptr noundef nonnull %6) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = tail call i32 @clk_enable(ptr noundef nonnull %6) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef nonnull %6) #9
  br label %21

21:                                               ; preds = %20, %17, %14
  %22 = load ptr, ptr @boot_cpu_clk, align 4
  %23 = tail call i32 @clk_get_rate(ptr noundef %22) #9
  %24 = tail call i32 @clk_set_rate(ptr noundef nonnull %6, i32 noundef %23) #9
  br label %25

25:                                               ; preds = %21, %9, %8, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_v7_pmsu_idle_exit() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @armada_xp_secondary_startup() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_cpu_reset_deassert(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_370_xp_pmsu_idle_enter(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv98dx3236_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 200, i32 noundef 9, ptr noundef null) #9
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_mv98dx3236_resume_table, ptr noundef null) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @of_io_request_and_map(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %12) #9
  tail call void @of_node_put(ptr noundef nonnull %8) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @armada_xp_secondary_startup to i32), i32 -2130706432, i32 8454144) #12, !srcloc !14
  %18 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #9, !srcloc !12
  tail call void @iounmap(ptr noundef %13) #9
  br label %19

19:                                               ; preds = %15, %10, %7
  %20 = and i32 %0, 31
  %21 = add nuw nsw i32 %20, 1
  %22 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %21
  %23 = lshr i32 %0, 5
  %24 = sub nsw i32 0, %23
  %25 = getelementptr i32, ptr %22, i32 %24
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %25) #9
  %26 = tail call i32 @mvebu_cpu_reset_deassert(i32 noundef %4) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %26) #11
  br label %30

30:                                               ; preds = %28, %19
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152722449}
!12 = !{i64 2841831}
!13 = !{i64 2152723549}
!14 = !{i64 2148744048, i64 2148744071, i64 2148744103, i64 2148744135, i64 2148744173, i64 2148744203}
