; ModuleID = '/llk/IR/drivers/pinctrl/pinmux.c_pt.bc'
source_filename = "../drivers/pinctrl/pinmux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function_count:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function_count\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function_name:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function_name\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function_groups\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_add_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_add_function\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_add_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_remove_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_remove_function\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_remove_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.pinctrl_setting = type { %struct.list_head, i32, ptr, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.pinctrl_setting_configs }
%struct.pinctrl_setting_configs = type { i32, ptr, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.52, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.53, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.54, ptr, %struct.address_space, %struct.list_head, %union.anon.57, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.52 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.54 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.57 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_setting_mux = type { i32, i32 }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"pinmux ops lacks necessary functions\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"pinmux ops has no name for function%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"\013pinmux core: failed to register map %s (%d): no function given\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"does not support mux function\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"invalid function %s in map table\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"can't query groups for function %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"function %s can't be selected on any group\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"invalid group \22%s\22 for function \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"invalid group %s in map table\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"could not get pins for group %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"non-existing\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"could not request pin %d (%s) from group %s  on device %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"could not get pin desc for pin %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [101 x i8] c"not freeing pin %d (%s) as part of deactivating group %s - it is already used for some other setting\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"group %s\0Afunction %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"(default)\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"group: %s (%u) function: %s (%u)\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"pinmux-functions\00", align 1
@pinmux_functions_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinmux_functions_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"pinmux-pins\00", align 1
@pinmux_pins_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinmux_pins_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"pinmux-select\00", align 1
@pinmux_select_ops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @pinmux_select, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinmux_select_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_pinmux_generic_get_function_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function_count = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function_count to i32), ptr @__kstrtab_pinmux_generic_get_function_count, ptr @__kstrtabns_pinmux_generic_get_function_count }, section "___ksymtab_gpl+pinmux_generic_get_function_count", align 4
@__kstrtab_pinmux_generic_get_function_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function_name = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function_name to i32), ptr @__kstrtab_pinmux_generic_get_function_name, ptr @__kstrtabns_pinmux_generic_get_function_name }, section "___ksymtab_gpl+pinmux_generic_get_function_name", align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"%s could not find function%i\0A\00", align 1
@__func__.pinmux_generic_get_function_groups = private unnamed_addr constant [35 x i8] c"pinmux_generic_get_function_groups\00", align 1
@__kstrtab_pinmux_generic_get_function_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function_groups to i32), ptr @__kstrtab_pinmux_generic_get_function_groups, ptr @__kstrtabns_pinmux_generic_get_function_groups }, section "___ksymtab_gpl+pinmux_generic_get_function_groups", align 4
@__kstrtab_pinmux_generic_get_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function to i32), ptr @__kstrtab_pinmux_generic_get_function, ptr @__kstrtabns_pinmux_generic_get_function }, section "___ksymtab_gpl+pinmux_generic_get_function", align 4
@__kstrtab_pinmux_generic_add_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_add_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_add_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_add_function to i32), ptr @__kstrtab_pinmux_generic_add_function, ptr @__kstrtabns_pinmux_generic_add_function }, section "___ksymtab_gpl+pinmux_generic_add_function", align 4
@__kstrtab_pinmux_generic_remove_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_remove_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_remove_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_remove_function to i32), ptr @__kstrtab_pinmux_generic_remove_function, ptr @__kstrtabns_pinmux_generic_remove_function }, section "___ksymtab_gpl+pinmux_generic_remove_function", align 4
@.str.22 = private unnamed_addr constant [52 x i8] c"pin %d is not registered so it cannot be requested\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"pin %s already requested by %s; cannot claim for %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"could not increase module refcount for pin %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"request() failed for pin %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"pin-%d (%s) status %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"pin is not registered so it cannot be freed\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"drivers/pinctrl/pinmux.c\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"function %s: COULD NOT GET GROUPS\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"function %d: %s, groups = [ \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Pinmux settings per pin\0A\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"Format: pin (name): mux_owner|gpio_owner (strict) hog?\0A\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"Format: pin (name): mux_owner gpio_owner hog?\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"pin %d (%s): device %s%s\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c" (HOG)\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"pin %d (%s): GPIO %s\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"pin %d (%s): UNCLAIMED\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"pin %d (%s): %s %s%s\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"(MUX UNCLAIMED)\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"(GPIO UNCLAIMED)\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c" function %s group %s\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"no groups for function %d (%s)\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"invalid group %s\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"failed to get group selector for %s\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"set_mux() failed: %d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_pinmux_generic_add_function, ptr @__ksymtab_pinmux_generic_get_function, ptr @__ksymtab_pinmux_generic_get_function_count, ptr @__ksymtab_pinmux_generic_get_function_groups, ptr @__ksymtab_pinmux_generic_get_function_name, ptr @__ksymtab_pinmux_generic_remove_function], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_check_ops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15, %11, %7, %1
  %24 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str) #9
  br label %40

26:                                               ; preds = %19
  %27 = tail call i32 %9(ptr noundef %0) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %37, %26
  %30 = phi i32 [ %38, %37 ], [ 0, %26 ]
  %31 = load ptr, ptr %12, align 4
  %32 = tail call ptr %31(ptr noundef %0, i32 noundef %30) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef %30) #9
  br label %40

37:                                               ; preds = %29
  %38 = add nuw i32 %30, 1
  %39 = icmp eq i32 %38, %27
  br i1 %39, label %40, label %29

40:                                               ; preds = %37, %34, %26, %23
  %41 = phi i32 [ -22, %23 ], [ -22, %34 ], [ 0, %26 ], [ 0, %37 ]
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_validate_map(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %8, i32 noundef %1) #9
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ -22, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pinmux_can_be_used_for_gpio(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %4 = tail call ptr @radix_tree_lookup(ptr noundef %3, i32 noundef %1) #10
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %4, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pinmux_ops, ptr %8, i32 0, i32 9
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pin_desc, ptr %4, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pin_desc, ptr %4, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %20, %16, %12, %2
  %25 = phi i1 [ true, %2 ], [ false, %16 ], [ %23, %20 ], [ true, %12 ]
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_request_gpio(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %6, i32 noundef %3) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @pin_request(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %1)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %13

13:                                               ; preds = %12, %9, %4
  %14 = phi i32 [ -12, %4 ], [ %10, %12 ], [ %10, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pin_request(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %10 = tail call ptr @radix_tree_lookup(ptr noundef %9, i32 noundef %1) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef %1) #9
  br label %100

15:                                               ; preds = %4
  %16 = icmp eq ptr %3, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.pinmux_ops, ptr %8, i32 0, i32 9
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @strcmp(ptr noundef %27, ptr noundef %2)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.23, ptr noundef %34, ptr noundef %27, ptr noundef %2) #9
  br label %100

35:                                               ; preds = %25, %21
  br i1 %16, label %36, label %40

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.pinmux_ops, ptr %8, i32 0, i32 9
  %38 = load i8, ptr %37, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %44

40:                                               ; preds = %35, %17
  %41 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44, %40
  %49 = phi ptr [ %46, %44 ], [ %42, %40 ]
  %50 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.23, ptr noundef %53, ptr noundef nonnull %49, ptr noundef %2) #9
  br label %100

54:                                               ; preds = %44, %36
  %55 = add i32 %23, 1
  store i32 %55, ptr %22, align 4
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %104, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 5
  store ptr %2, ptr %58, align 4
  %59 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = tail call zeroext i1 @try_module_get(ptr noundef %60) #10
  br i1 %61, label %75, label %66

62:                                               ; preds = %40
  store ptr %2, ptr %41, align 4
  %63 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = tail call zeroext i1 @try_module_get(ptr noundef %64) #10
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %57
  %67 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.24, i32 noundef %1) #9
  br label %89

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.pinmux_ops, ptr %8, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call i32 %71(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1) #10
  br label %81

75:                                               ; preds = %69, %57
  %76 = phi ptr [ %63, %69 ], [ %59, %57 ]
  %77 = load ptr, ptr %8, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %104, label %79

79:                                               ; preds = %75
  %80 = tail call i32 %77(ptr noundef %0, i32 noundef %1) #10
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi ptr [ %63, %73 ], [ %76, %79 ]
  %83 = phi i32 [ %74, %73 ], [ %80, %79 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %87 = load ptr, ptr %86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.25, i32 noundef %1) #9
  %88 = load ptr, ptr %82, align 4
  tail call void @module_put(ptr noundef %88) #10
  br label %89

89:                                               ; preds = %85, %66
  %90 = phi i32 [ %83, %85 ], [ -22, %66 ]
  br i1 %16, label %93, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 7
  store ptr null, ptr %92, align 4
  br label %100

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, -1
  store i32 %96, ptr %94, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 5
  store ptr null, ptr %99, align 4
  br label %100

100:                                              ; preds = %98, %93, %91, %48, %30, %12
  %101 = phi i32 [ %90, %98 ], [ %90, %93 ], [ %90, %91 ], [ -22, %48 ], [ -22, %30 ], [ -22, %12 ]
  %102 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %103 = load ptr, ptr %102, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.26, i32 noundef %1, ptr noundef %2, i32 noundef %101) #9
  br label %104

104:                                              ; preds = %100, %81, %75, %54
  %105 = phi i32 [ 0, %54 ], [ %101, %100 ], [ 0, %81 ], [ 0, %75 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinmux_free_gpio(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @pin_free(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  tail call void @kfree(ptr noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pin_free(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %9 = tail call ptr @radix_tree_lookup(ptr noundef %8, i32 noundef %1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27) #9
  br label %48

14:                                               ; preds = %3
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.pin_desc, ptr %9, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 225, i32 noundef 9, ptr noundef null) #10
  br label %48

21:                                               ; preds = %16
  %22 = add i32 %18, -1
  store i32 %22, ptr %17, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %48

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.pinmux_ops, ptr %7, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %1) #10
  br label %36

29:                                               ; preds = %24, %21
  %30 = getelementptr inbounds %struct.pinmux_ops, ptr %7, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef %1) #10
  br label %35

35:                                               ; preds = %33, %29
  br i1 %15, label %39, label %36

36:                                               ; preds = %35, %28
  %37 = getelementptr inbounds %struct.pin_desc, ptr %9, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  br label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pin_desc, ptr %9, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  store ptr null, ptr %40, align 4
  %42 = getelementptr inbounds %struct.pin_desc, ptr %9, i32 0, i32 6
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi ptr [ %42, %39 ], [ %37, %36 ]
  %45 = phi ptr [ %41, %39 ], [ %38, %36 ]
  store ptr null, ptr %44, align 4
  %46 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  tail call void @module_put(ptr noundef %47) #10
  br label %48

48:                                               ; preds = %43, %21, %20, %11
  %49 = phi ptr [ null, %11 ], [ %45, %43 ], [ null, %20 ], [ null, %21 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_gpio_direction(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinmux_ops, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #10
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_map_to_setting(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_desc, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.4) #9
  br label %79

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4
  %17 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %6) #10
  %22 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 3
  br label %23

23:                                               ; preds = %26, %15
  %24 = phi i32 [ 0, %15 ], [ %31, %26 ]
  %25 = icmp eq i32 %24, %21
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %22, align 4
  %28 = tail call ptr %27(ptr noundef %6, i32 noundef %24) #10
  %29 = tail call i32 @strcmp(ptr noundef %18, ptr noundef %28) #10
  %30 = icmp eq i32 %29, 0
  %31 = add i32 %24, 1
  br i1 %30, label %32, label %23

32:                                               ; preds = %26
  %33 = icmp slt i32 %24, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %32, %23
  %35 = phi i32 [ %24, %32 ], [ -22, %23 ]
  %36 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.5, ptr noundef %38) #9
  br label %79

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4
  %41 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i32 %24, ptr %41, align 4
  %42 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %6, i32 noundef %24, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.6, ptr noundef %49) #9
  br label %79

50:                                               ; preds = %39
  %51 = load i32, ptr %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.7, ptr noundef %56) #9
  br label %79

57:                                               ; preds = %50
  %58 = load ptr, ptr %16, align 4
  %59 = icmp eq ptr %58, null
  %60 = load ptr, ptr %3, align 4
  br i1 %59, label %68, label %61

61:                                               ; preds = %57
  %62 = call i32 @match_string(ptr noundef %60, i32 noundef %51, ptr noundef nonnull %58) #10
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.8, ptr noundef nonnull %58, ptr noundef %67) #9
  br label %79

68:                                               ; preds = %57
  %69 = load ptr, ptr %60, align 4
  br label %70

70:                                               ; preds = %68, %61
  %71 = phi ptr [ %58, %61 ], [ %69, %68 ]
  %72 = call i32 @pinctrl_get_group_selector(ptr noundef %6, ptr noundef %71) #10
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.9, ptr noundef %77) #9
  br label %79

78:                                               ; preds = %70
  store i32 %72, ptr %40, align 4
  br label %79

79:                                               ; preds = %78, %74, %64, %53, %46, %34, %12
  %80 = phi i32 [ %35, %34 ], [ %44, %46 ], [ %62, %64 ], [ %72, %74 ], [ 0, %78 ], [ -22, %53 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_get_group_selector(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @pinmux_free_setting(ptr nocapture noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_enable_setting(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %12 = getelementptr inbounds %struct.pinctrl_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %91, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = call i32 %13(ptr noundef %5, i32 noundef %17, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.pinctrl_ops, ptr %9, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %16, align 4
  %24 = call ptr %22(ptr noundef %5, i32 noundef %23) #10
  %25 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.10, ptr noundef %24) #9
  store i32 0, ptr %3, align 4
  br label %91

27:                                               ; preds = %15
  %28 = load i32, ptr %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %91, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 3
  br label %38

32:                                               ; preds = %69
  %33 = icmp eq i32 %71, 0
  br i1 %33, label %91, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 2
  %36 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %37 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 8
  br label %73

38:                                               ; preds = %69, %30
  %39 = phi i32 [ 0, %30 ], [ %70, %69 ]
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr i32, ptr %40, i32 %39
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %31, align 4
  %44 = call fastcc i32 @pin_request(ptr noundef %5, i32 noundef %42, ptr noundef %43, ptr noundef null)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr i32, ptr %47, i32 %39
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 2
  %51 = call ptr @radix_tree_lookup(ptr noundef %50, i32 noundef %49) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.pin_desc, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi ptr [ %55, %53 ], [ @.str.11, %46 ]
  %58 = getelementptr inbounds %struct.pinctrl_ops, ptr %9, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = call ptr %59(ptr noundef %5, i32 noundef %61) #10
  %63 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr i32, ptr %65, i32 %39
  %67 = load i32, ptr %66, align 4
  %68 = call ptr @pinctrl_dev_get_name(ptr noundef %5) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.12, i32 noundef %67, ptr noundef %57, ptr noundef %62, ptr noundef %68) #9
  br label %118

69:                                               ; preds = %38
  %70 = add nuw i32 %39, 1
  %71 = load i32, ptr %3, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %38, label %32

73:                                               ; preds = %87, %34
  %74 = phi i32 [ 0, %34 ], [ %88, %87 ]
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr i32, ptr %75, i32 %74
  %77 = load i32, ptr %76, align 4
  %78 = call ptr @radix_tree_lookup(ptr noundef %35, i32 noundef %77) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load ptr, ptr %37, align 4
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr i32, ptr %82, i32 %74
  %84 = load i32, ptr %83, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.13, i32 noundef %84) #9
  br label %87

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.pin_desc, ptr %78, i32 0, i32 6
  store ptr %36, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %80
  %88 = add nuw i32 %74, 1
  %89 = load i32, ptr %3, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %73, label %91

91:                                               ; preds = %87, %32, %27, %20, %1
  %92 = getelementptr inbounds %struct.pinmux_ops, ptr %11, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %95 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %94, align 4
  %98 = call i32 %93(ptr noundef %5, i32 noundef %96, i32 noundef %97) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %131, label %100

100:                                              ; preds = %91
  %101 = load i32, ptr %3, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %131, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 2
  br label %105

105:                                              ; preds = %114, %103
  %106 = phi i32 [ 0, %103 ], [ %115, %114 ]
  %107 = load ptr, ptr %2, align 4
  %108 = getelementptr i32, ptr %107, i32 %106
  %109 = load i32, ptr %108, align 4
  %110 = call ptr @radix_tree_lookup(ptr noundef %104, i32 noundef %109) #10
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.pin_desc, ptr %110, i32 0, i32 6
  store ptr null, ptr %113, align 4
  br label %114

114:                                              ; preds = %112, %105
  %115 = add nuw i32 %106, 1
  %116 = load i32, ptr %3, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %105, label %118

118:                                              ; preds = %114, %56
  %119 = phi i32 [ %44, %56 ], [ %98, %114 ]
  %120 = phi i32 [ %39, %56 ], [ %115, %114 ]
  %121 = add i32 %120, -1
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %131

123:                                              ; preds = %123, %118
  %124 = phi i32 [ %129, %123 ], [ %121, %118 ]
  %125 = load ptr, ptr %2, align 4
  %126 = getelementptr i32, ptr %125, i32 %124
  %127 = load i32, ptr %126, align 4
  %128 = call fastcc ptr @pin_free(ptr noundef %5, i32 noundef %127, ptr noundef null)
  %129 = add nsw i32 %124, -1
  %130 = icmp sgt i32 %124, 0
  br i1 %130, label %123, label %131

131:                                              ; preds = %123, %118, %100, %91
  %132 = phi i32 [ 0, %91 ], [ %119, %118 ], [ %98, %100 ], [ %119, %123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %132
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinmux_disable_setting(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %10 = getelementptr inbounds %struct.pinctrl_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = call i32 %11(ptr noundef %5, i32 noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.pinctrl_ops, ptr %9, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %14, align 4
  %22 = call ptr %20(ptr noundef %5, i32 noundef %21) #10
  %23 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.10, ptr noundef %22) #9
  br label %68

25:                                               ; preds = %13
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 2
  %30 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %31 = getelementptr inbounds %struct.pinctrl_ops, ptr %9, i32 0, i32 1
  %32 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 8
  br label %33

33:                                               ; preds = %64, %28
  %34 = phi i32 [ 0, %28 ], [ %65, %64 ]
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i32, ptr %35, i32 %34
  %37 = load i32, ptr %36, align 4
  %38 = call ptr @radix_tree_lookup(ptr noundef %29, i32 noundef %37) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load ptr, ptr %32, align 4
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i32, ptr %42, i32 %34
  %44 = load i32, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.13, i32 noundef %44) #9
  br label %64

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.pin_desc, ptr %38, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %30
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr i32, ptr %50, i32 %34
  %52 = load i32, ptr %51, align 4
  %53 = call fastcc ptr @pin_free(ptr noundef %5, i32 noundef %52, ptr noundef null)
  br label %64

54:                                               ; preds = %45
  %55 = load ptr, ptr %31, align 4
  %56 = load i32, ptr %30, align 4
  %57 = call ptr %55(ptr noundef %5, i32 noundef %56) #10
  %58 = load ptr, ptr %32, align 4
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr i32, ptr %59, i32 %34
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.pin_desc, ptr %38, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.14, i32 noundef %61, ptr noundef %63, ptr noundef %57) #9
  br label %64

64:                                               ; preds = %54, %49, %40
  %65 = add nuw i32 %34, 1
  %66 = load i32, ptr %3, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %33, label %68

68:                                               ; preds = %64, %25, %18, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinmux_show_map(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_map, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.16, ptr %4
  %7 = getelementptr inbounds %struct.pinctrl_map, ptr %1, i32 0, i32 4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %6, ptr noundef %8) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinmux_show_setting(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pinctrl_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr %12(ptr noundef %4, i32 noundef %14) #10
  %16 = load i32, ptr %13, align 4
  %17 = getelementptr inbounds %struct.pinmux_ops, ptr %8, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr %18(ptr noundef %4, i32 noundef %20) #10
  %22 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %15, i32 noundef %16, ptr noundef %21, i32 noundef %22) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinmux_init_device_debugfs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pinmux_functions_fops) #10
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pinmux_pins_fops) #10
  %5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 128, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pinmux_select_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pinmux_generic_get_function_count(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pinmux_generic_get_function_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 5
  %4 = tail call ptr @radix_tree_lookup(ptr noundef %3, i32 noundef %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_generic_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 5
  %6 = tail call ptr @radix_tree_lookup(ptr noundef %5, i32 noundef %1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.pinmux_generic_get_function_groups, i32 noundef %1) #9
  br label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.function_desc, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = getelementptr inbounds %struct.function_desc, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %3, align 4
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i32 [ 0, %11 ], [ -22, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pinmux_generic_get_function(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 5
  %4 = tail call ptr @radix_tree_lookup(ptr noundef %3, i32 noundef %1) #10
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_generic_add_function(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pinctrl_desc, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pinmux_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0) #10
  %15 = getelementptr inbounds %struct.pinmux_ops, ptr %11, i32 0, i32 3
  br label %16

16:                                               ; preds = %19, %7
  %17 = phi i32 [ 0, %7 ], [ %24, %19 ]
  %18 = icmp eq i32 %17, %14
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %15, align 4
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef %17) #10
  %22 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %21) #10
  %23 = icmp eq i32 %22, 0
  %24 = add i32 %17, 1
  br i1 %23, label %25, label %16

25:                                               ; preds = %19
  %26 = icmp sgt i32 %17, -1
  br i1 %26, label %42, label %27

27:                                               ; preds = %25, %16
  %28 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef 16, i32 noundef 3520) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  store ptr %1, ptr %32, align 4
  %35 = getelementptr inbounds %struct.function_desc, ptr %32, i32 0, i32 1
  store ptr %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.function_desc, ptr %32, i32 0, i32 2
  store i32 %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.function_desc, ptr %32, i32 0, i32 3
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 5
  %39 = tail call i32 @radix_tree_insert(ptr noundef %38, i32 noundef %29, ptr noundef nonnull %32) #10
  %40 = load i32, ptr %28, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %28, align 4
  br label %42

42:                                               ; preds = %34, %27, %25, %5
  %43 = phi i32 [ %29, %34 ], [ -22, %5 ], [ %17, %25 ], [ -12, %27 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinmux_generic_remove_function(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 5
  %4 = tail call ptr @radix_tree_lookup(ptr noundef %3, i32 noundef %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @radix_tree_delete(ptr noundef %3, i32 noundef %1) #10
  %8 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void @devm_kfree(ptr noundef %9, ptr noundef nonnull %4) #10
  %10 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %6 ], [ -2, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinmux_generic_free_functions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.radix_tree_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %8

5:                                                ; preds = %30, %24
  %6 = phi i32 [ %25, %24 ], [ %32, %30 ]
  %7 = phi ptr [ null, %24 ], [ %31, %30 ]
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ 0, %1 ], [ %6, %5 ]
  %10 = phi ptr [ null, %1 ], [ %7, %5 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = call ptr @radix_tree_next_chunk(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ %9, %8 ], [ %16, %15 ]
  %19 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %20 = call ptr @radix_tree_delete(ptr noundef %4, i32 noundef %18) #10
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %23 = sub i32 %21, %22
  br label %24

24:                                               ; preds = %30, %17
  %25 = phi i32 [ %22, %17 ], [ %32, %30 ]
  %26 = phi ptr [ %19, %17 ], [ %31, %30 ]
  %27 = phi i32 [ %23, %17 ], [ %28, %30 ]
  %28 = add i32 %27, -1
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %5

30:                                               ; preds = %24
  %31 = getelementptr ptr, ptr %26, i32 1
  %32 = add i32 %25, 1
  store i32 %32, ptr %2, align 4
  %33 = load ptr, ptr %31, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %24, label %5, !prof !9

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 6
  store i32 0, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinmux_functions_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @pinmux_functions_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinmux_functions_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_desc, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %6) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 3
  %20 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 4
  br label %21

21:                                               ; preds = %41, %18
  %22 = phi i32 [ 0, %18 ], [ %42, %41 ]
  %23 = load ptr, ptr %19, align 4
  %24 = call ptr %23(ptr noundef %6, i32 noundef %22) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !10
  %25 = load ptr, ptr %20, align 4
  %26 = call i32 %25(ptr noundef %6, i32 noundef %22, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %24) #10
  br label %41

29:                                               ; preds = %21
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %22, ptr noundef %24) #10
  %30 = load i32, ptr %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ %37, %32 ], [ 0, %29 ]
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr ptr, ptr %34, i32 %33
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %36) #10
  %37 = add nuw i32 %33, 1
  %38 = load i32, ptr %4, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %32, label %40

40:                                               ; preds = %32, %29
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  br label %41

41:                                               ; preds = %40, %28
  %42 = add nuw i32 %22, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %43 = icmp eq i32 %42, %16
  br i1 %43, label %44, label %21

44:                                               ; preds = %41, %12
  call void @mutex_unlock(ptr noundef %13) #10
  br label %45

45:                                               ; preds = %44, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinmux_pins_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @pinmux_pins_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinmux_pins_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %93, label %12

12:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  %13 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 9
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr @.str.35, ptr @.str.34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %16) #10
  %17 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %17) #10
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.pinctrl_desc, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %92, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 2
  %24 = getelementptr inbounds %struct.pinmux_ops, ptr %10, i32 0, i32 3
  %25 = getelementptr inbounds %struct.pinctrl_ops, ptr %8, i32 0, i32 1
  br label %26

26:                                               ; preds = %86, %22
  %27 = phi ptr [ %18, %22 ], [ %88, %86 ]
  %28 = phi i32 [ 0, %22 ], [ %87, %86 ]
  %29 = getelementptr inbounds %struct.pinctrl_desc, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.pinctrl_pin_desc, ptr %30, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @radix_tree_lookup(ptr noundef %23, i32 noundef %32) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.pin_desc, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @pinctrl_dev_get_name(ptr noundef %4) #10
  %41 = tail call i32 @strcmp(ptr noundef nonnull %37, ptr noundef %40)
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.37, ptr @.str.38
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi ptr [ @.str.38, %35 ], [ %43, %39 ]
  %46 = load i8, ptr %13, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %36, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.pin_desc, ptr %33, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %32, ptr noundef %53, ptr noundef nonnull %49, ptr noundef nonnull %45) #10
  br label %72

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.pin_desc, ptr %33, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.pin_desc, ptr %33, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  br i1 %57, label %61, label %60

60:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %32, ptr noundef %59, ptr noundef nonnull %56) #10
  br label %72

61:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %32, ptr noundef %59) #10
  br label %72

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.pin_desc, ptr %33, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %36, align 4
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr @.str.42, ptr %65
  %68 = getelementptr inbounds %struct.pin_desc, ptr %33, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, ptr @.str.43, ptr %69
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %32, ptr noundef %64, ptr noundef nonnull %67, ptr noundef nonnull %71, ptr noundef nonnull %45) #10
  br label %72

72:                                               ; preds = %62, %61, %60, %51
  %73 = getelementptr inbounds %struct.pin_desc, ptr %33, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %24, align 4
  %78 = getelementptr inbounds %struct.pinctrl_setting_mux, ptr %74, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = tail call ptr %77(ptr noundef %4, i32 noundef %79) #10
  %81 = load ptr, ptr %25, align 4
  %82 = load ptr, ptr %73, align 4
  %83 = load i32, ptr %82, align 4
  %84 = tail call ptr %81(ptr noundef %4, i32 noundef %83) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %80, ptr noundef %84) #10
  br label %86

85:                                               ; preds = %72
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  br label %86

86:                                               ; preds = %85, %76, %26
  %87 = add nuw i32 %28, 1
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr inbounds %struct.pinctrl_desc, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %26, label %92

92:                                               ; preds = %86, %12
  tail call void @mutex_unlock(ptr noundef %17) #10
  br label %93

93:                                               ; preds = %92, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinmux_select(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.seq_file, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pinctrl_dev, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pinctrl_desc, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !10
  %15 = icmp ugt i32 %2, 128
  br i1 %15, label %108, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 128) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %108, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @strncpy_from_user(ptr noundef nonnull %18, ptr noundef %1, i32 noundef 128) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %106, label %23

23:                                               ; preds = %20
  %24 = add nsw i32 %2, -1
  %25 = getelementptr i8, ptr %18, i32 %24
  store i8 0, ptr %25, align 1
  %26 = tail call ptr @strim(ptr noundef nonnull %18) #10
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %106, label %29

29:                                               ; preds = %23
  %30 = zext i8 %27 to i32
  %31 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 32
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %39, %29
  %36 = phi ptr [ %40, %39 ], [ %26, %29 ]
  %37 = phi i8 [ %41, %39 ], [ 1, %29 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %106, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %36, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 32
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %35, label %47

47:                                               ; preds = %39, %29
  %48 = phi ptr [ %26, %29 ], [ %40, %39 ]
  store i8 0, ptr %48, align 1
  %49 = getelementptr i8, ptr %48, i32 1
  %50 = tail call ptr @skip_spaces(ptr noundef %49) #10
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %106, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.pinmux_ops, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef %10) #10
  %60 = getelementptr inbounds %struct.pinmux_ops, ptr %56, i32 0, i32 3
  br label %61

61:                                               ; preds = %64, %53
  %62 = phi i32 [ 0, %53 ], [ %69, %64 ]
  %63 = icmp eq i32 %62, %59
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %60, align 4
  %66 = tail call ptr %65(ptr noundef %10, i32 noundef %62) #10
  %67 = tail call i32 @strcmp(ptr noundef %50, ptr noundef %66) #10
  %68 = icmp eq i32 %67, 0
  %69 = add i32 %62, 1
  br i1 %68, label %70, label %61

70:                                               ; preds = %64
  %71 = icmp slt i32 %62, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %70, %61
  %73 = phi i32 [ %62, %70 ], [ -22, %61 ]
  %74 = getelementptr inbounds %struct.pinctrl_dev, ptr %10, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.5, ptr noundef %50) #9
  br label %106

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.pinmux_ops, ptr %14, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %10, i32 noundef %62, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.pinctrl_dev, ptr %10, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.45, i32 noundef %62, ptr noundef %50) #9
  br label %106

84:                                               ; preds = %76
  %85 = load ptr, ptr %5, align 4
  %86 = load i32, ptr %6, align 4
  %87 = call i32 @match_string(ptr noundef %85, i32 noundef %86, ptr noundef %26) #10
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.pinctrl_dev, ptr %10, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.46, ptr noundef %26) #9
  br label %106

92:                                               ; preds = %84
  %93 = call i32 @pinctrl_get_group_selector(ptr noundef %10, ptr noundef %26) #10
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.pinctrl_dev, ptr %10, i32 0, i32 8
  %97 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.47, ptr noundef %26) #9
  br label %106

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.pinmux_ops, ptr %14, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 %100(ptr noundef %10, i32 noundef %62, i32 noundef %93) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.pinctrl_dev, ptr %10, i32 0, i32 8
  %105 = load ptr, ptr %104, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.48, i32 noundef %101) #9
  br label %106

106:                                              ; preds = %103, %98, %95, %89, %81, %72, %47, %35, %23, %20
  %107 = phi i32 [ %21, %20 ], [ %73, %72 ], [ %79, %81 ], [ %87, %89 ], [ %93, %95 ], [ %101, %103 ], [ -22, %23 ], [ -22, %47 ], [ %2, %98 ], [ -22, %35 ]
  call void @kfree(ptr noundef nonnull %18) #10
  br label %108

108:                                              ; preds = %106, %16, %4
  %109 = phi i32 [ %107, %106 ], [ -12, %4 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinmux_select_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef null, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
