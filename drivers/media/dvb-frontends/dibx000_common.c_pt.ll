; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dibx000_common.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dibx000_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_i2c_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_i2c_set_speed\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_i2c_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_get_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_reset_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_reset_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_reset_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_init_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_init_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_init_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_exit_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_exit_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_exit_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dibx000_i2c_master = type { i16, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, ptr, i8, i16, [34 x %struct.i2c_msg], [8 x i8], [2 x i8], %struct.mutex }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype247 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug248 = internal constant [42 x i8] c"parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dibx000_i2c_set_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_i2c_set_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_i2c_set_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_i2c_set_speed to i32), ptr @__kstrtab_dibx000_i2c_set_speed, ptr @__kstrtabns_dibx000_i2c_set_speed }, section "___ksymtab+dibx000_i2c_set_speed", align 4
@.str = private unnamed_addr constant [52 x i8] c"\013dibx000_common: incorrect I2C interface selected\0A\00", align 1
@__kstrtab_dibx000_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_get_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_get_i2c_adapter to i32), ptr @__kstrtab_dibx000_get_i2c_adapter, ptr @__kstrtabns_dibx000_get_i2c_adapter }, section "___ksymtab+dibx000_get_i2c_adapter", align 4
@__kstrtab_dibx000_reset_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_reset_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_reset_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_reset_i2c_master to i32), ptr @__kstrtab_dibx000_reset_i2c_master, ptr @__kstrtabns_dibx000_reset_i2c_master }, section "___ksymtab+dibx000_reset_i2c_master", align 4
@dibx000_init_i2c_master.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"&mst->i2c_buffer_lock\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\017dibx000_common: %s: could not acquire lock\0A\00", align 1
@__func__.dibx000_init_i2c_master = private unnamed_addr constant [24 x i8] c"dibx000_init_i2c_master\00", align 1
@dibx000_i2c_gated_tuner_algo = internal global %struct.i2c_algorithm { ptr @dibx000_i2c_gated_tuner_xfer, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"DiBX000 tuner I2C bus\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\013dibx000_common: could not initialize the tuner i2c_adapter\0A\00", align 1
@dibx000_i2c_master_gpio12_xfer_algo = internal global %struct.i2c_algorithm { ptr @dibx000_i2c_master_xfer_gpio12, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO12 I2C bus\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\013dibx000_common: could not initialize the master i2c_adapter\0A\00", align 1
@dibx000_i2c_master_gpio34_xfer_algo = internal global %struct.i2c_algorithm { ptr @dibx000_i2c_master_xfer_gpio34, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO34 I2C bus\00", align 1
@dibx000_i2c_gated_gpio67_algo = internal global %struct.i2c_algorithm { ptr @dibx000_i2c_gated_gpio67_xfer, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO67 I2C bus\00", align 1
@__kstrtab_dibx000_init_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_init_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_init_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_init_i2c_master to i32), ptr @__kstrtab_dibx000_init_i2c_master, ptr @__kstrtabns_dibx000_init_i2c_master }, section "___ksymtab+dibx000_init_i2c_master", align 4
@__kstrtab_dibx000_exit_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_exit_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_exit_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_exit_i2c_master to i32), ptr @__kstrtab_dibx000_exit_i2c_master, ptr @__kstrtabns_dibx000_exit_i2c_master }, section "___ksymtab+dibx000_exit_i2c_master", align 4
@__UNIQUE_ID_author249 = internal constant [55 x i8] c"author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [58 x i8] c"description=Common function the DiBcom demodulator family\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__func__.dibx000_write_word = private unnamed_addr constant [19 x i8] c"dibx000_write_word\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\017dibx000_common: %s: selecting interface: %d\0A\00", align 1
@__func__.dibx000_i2c_select_interface = private unnamed_addr constant [29 x i8] c"dibx000_i2c_select_interface\00", align 1
@.str.10 = private unnamed_addr constant [85 x i8] c"\017dibx000_common: %s: %s: too much I2C message to be transmitted (%i). Maximum is 32\00", align 1
@__func__.dibx000_i2c_gated_tuner_xfer = private unnamed_addr constant [29 x i8] c"dibx000_i2c_gated_tuner_xfer\00", align 1
@__func__.dibx000_read_word = private unnamed_addr constant [18 x i8] c"dibx000_read_word\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\017dibx000_common: %s: i2c read error on %d\0A\00", align 1
@__func__.dibx000_i2c_gated_gpio67_xfer = private unnamed_addr constant [30 x i8] c"dibx000_i2c_gated_gpio67_xfer\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_debug248, ptr @__UNIQUE_ID_debugtype247, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_dibx000_exit_i2c_master, ptr @__ksymtab_dibx000_get_i2c_adapter, ptr @__ksymtab_dibx000_i2c_set_speed, ptr @__ksymtab_dibx000_init_i2c_master, ptr @__ksymtab_dibx000_reset_i2c_master, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dibx000_i2c_set_speed(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i16, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %4, i32 0, i32 8
  %7 = load i16, ptr %6, align 2
  %8 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %4, i32 0, i32 12
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_write_word) #9
  br label %43

16:                                               ; preds = %2
  %17 = icmp ult i16 %5, 12
  %18 = icmp ult i16 %1, 235
  %19 = and i1 %18, %17
  %20 = select i1 %19, i16 235, i16 %1
  %21 = udiv i16 -5536, %20
  %22 = add i16 %7, 3
  %23 = lshr i16 %22, 8
  %24 = trunc i16 %23 to i8
  %25 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %4, i32 0, i32 10
  store i8 %24, ptr %25, align 8
  %26 = trunc i16 %22 to i8
  %27 = getelementptr %struct.dibx000_i2c_master, ptr %4, i32 0, i32 10, i32 1
  store i8 %26, ptr %27, align 1
  %28 = lshr i16 %21, 8
  %29 = trunc i16 %28 to i8
  %30 = getelementptr %struct.dibx000_i2c_master, ptr %4, i32 0, i32 10, i32 2
  store i8 %29, ptr %30, align 2
  %31 = trunc i16 %21 to i8
  %32 = getelementptr %struct.dibx000_i2c_master, ptr %4, i32 0, i32 10, i32 3
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %4, i32 0, i32 9
  store i64 17179869184, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %4, i32 0, i32 7
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %4, i32 0, i32 9, i32 0, i32 3
  store ptr %25, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %4, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @i2c_transfer(ptr noundef %39, ptr noundef %33, i32 noundef 1) #8
  %41 = icmp eq i32 %40, 1
  %42 = select i1 %41, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %8) #8
  br label %43

43:                                               ; preds = %16, %14, %11
  %44 = phi i32 [ %42, %16 ], [ -22, %14 ], [ -22, %11 ]
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dibx000_get_i2c_adapter(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %20 [
    i32 0, label %4
    i32 1, label %8
    i32 2, label %12
    i32 3, label %16
  ]

4:                                                ; preds = %3
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2
  %7 = select i1 %5, ptr null, ptr %6
  br label %22

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  %10 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3
  %11 = select i1 %9, ptr %10, ptr null
  br label %22

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  %14 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4
  %15 = select i1 %13, ptr %14, ptr null
  br label %22

16:                                               ; preds = %3
  %17 = icmp eq i32 %2, 0
  %18 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5
  %19 = select i1 %17, ptr null, ptr %18
  br label %22

20:                                               ; preds = %3
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %22

22:                                               ; preds = %20, %16, %12, %8, %4
  %23 = phi ptr [ null, %20 ], [ %7, %4 ], [ %11, %8 ], [ %15, %12 ], [ %19, %16 ]
  ret ptr %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dibx000_reset_i2c_master(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i16
  store i16 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %10, align 4
  %11 = load i16, ptr %0, align 8
  %12 = icmp ugt i16 %11, 2
  %13 = select i1 %12, i8 0, i8 -128
  %14 = zext i1 %12 to i8
  %15 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 8
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %17, 1
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr %2, align 4
  %21 = trunc i16 %16 to i8
  %22 = add i8 %21, 1
  %23 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %14, ptr %24, align 2
  %25 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 %13, ptr %25, align 1
  %26 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %3, i32 noundef 1) #8
  %29 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 1
  store i32 255, ptr %29, align 4
  call fastcc void @dibx000_i2c_select_interface(ptr noundef %0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dibx000_i2c_select_interface(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8
  %4 = icmp ugt i16 %3, 1
  br i1 %4, label %5, label %45

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %45, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dibx000_i2c_select_interface, i32 noundef %1) #9
  br label %14

14:                                               ; preds = %12, %9
  store i32 %1, ptr %6, align 4
  %15 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 8
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 12
  %18 = tail call i32 @mutex_lock_interruptible(ptr noundef %17) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_write_word) #9
  br label %45

25:                                               ; preds = %14
  %26 = add i16 %16, 4
  %27 = lshr i16 %26, 8
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10
  store i8 %28, ptr %29, align 8
  %30 = trunc i16 %26 to i8
  %31 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 1
  store i8 %30, ptr %31, align 1
  %32 = lshr i32 %1, 8
  %33 = trunc i32 %32 to i8
  %34 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 2
  store i8 %33, ptr %34, align 2
  %35 = trunc i32 %1 to i8
  %36 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 3
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9
  store i64 17179869184, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 7
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %37, align 8
  %41 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 0, i32 3
  store ptr %29, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i32 @i2c_transfer(ptr noundef %43, ptr noundef %37, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %17) #8
  br label %45

45:                                               ; preds = %25, %23, %20, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dibx000_init_i2c_master(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @dibx000_init_i2c_master.__key) #8
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %104, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_init_i2c_master) #9
  br label %104

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9
  store i64 0, ptr %14, align 8
  %15 = lshr i8 %3, 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10
  %18 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 0, i32 3
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 0, i32 2
  store i16 4, ptr %19, align 4
  store i16 %1, ptr %0, align 8
  %20 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 6
  store ptr %2, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 7
  store i8 %15, ptr %21, align 4
  %22 = add i16 %1, -11
  %23 = and i16 %22, -3
  %24 = icmp eq i16 %23, 0
  %25 = select i1 %24, i16 1024, i16 768
  %26 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 8
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2
  %30 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2, i32 9, i32 1
  store ptr %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2, i32 12
  %32 = tail call i32 @strscpy(ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef 48) #8
  %33 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2, i32 2
  store ptr @dibx000_i2c_gated_tuner_algo, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2, i32 3
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2, i32 9, i32 8
  store ptr %0, ptr %35, align 8
  %36 = tail call i32 @i2c_add_adapter(ptr noundef %29) #8
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38

38:                                               ; preds = %13
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %40

40:                                               ; preds = %38, %13
  %41 = load ptr, ptr %20, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 9, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3
  %45 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3, i32 9, i32 1
  store ptr %43, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3, i32 12
  %47 = tail call i32 @strscpy(ptr noundef %46, ptr noundef nonnull @.str.5, i32 noundef 48) #8
  %48 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3, i32 2
  store ptr @dibx000_i2c_master_gpio12_xfer_algo, ptr %48, align 8
  %49 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3, i32 3
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3, i32 9, i32 8
  store ptr %0, ptr %50, align 8
  %51 = tail call i32 @i2c_add_adapter(ptr noundef %44) #8
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %55

55:                                               ; preds = %53, %40
  %56 = load ptr, ptr %20, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, ptr %56, i32 0, i32 9, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4
  %60 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4, i32 9, i32 1
  store ptr %58, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4, i32 12
  %62 = tail call i32 @strscpy(ptr noundef %61, ptr noundef nonnull @.str.7, i32 noundef 48) #8
  %63 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4, i32 2
  store ptr @dibx000_i2c_master_gpio34_xfer_algo, ptr %63, align 8
  %64 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4, i32 3
  store ptr null, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4, i32 9, i32 8
  store ptr %0, ptr %65, align 8
  %66 = tail call i32 @i2c_add_adapter(ptr noundef %59) #8
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %70

70:                                               ; preds = %68, %55
  %71 = load ptr, ptr %20, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 9, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5
  %75 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5, i32 9, i32 1
  store ptr %73, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5, i32 12
  %77 = tail call i32 @strscpy(ptr noundef %76, ptr noundef nonnull @.str.8, i32 noundef 48) #8
  %78 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5, i32 2
  store ptr @dibx000_i2c_gated_gpio67_algo, ptr %78, align 8
  %79 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5, i32 3
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5, i32 9, i32 8
  store ptr %0, ptr %80, align 8
  %81 = tail call i32 @i2c_add_adapter(ptr noundef %74) #8
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %85, label %83

83:                                               ; preds = %70
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %85

85:                                               ; preds = %83, %70
  %86 = load i16, ptr %0, align 8
  %87 = icmp ugt i16 %86, 2
  %88 = select i1 %87, i8 0, i8 -128
  %89 = zext i1 %87 to i8
  %90 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 8
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = add nuw nsw i32 %92, 1
  %94 = lshr i32 %93, 8
  %95 = trunc i32 %94 to i8
  store i8 %95, ptr %17, align 1
  %96 = trunc i16 %91 to i8
  %97 = add i8 %96, 1
  %98 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 1
  store i8 %97, ptr %98, align 1
  %99 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 2
  store i8 %89, ptr %99, align 1
  %100 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 3
  store i8 %88, ptr %100, align 1
  %101 = tail call i32 @i2c_transfer(ptr noundef %2, ptr noundef %14, i32 noundef 1) #8
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %104

104:                                              ; preds = %85, %11, %8
  %105 = phi i32 [ %103, %85 ], [ -22, %11 ], [ -22, %8 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dibx000_exit_i2c_master(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_gated_tuner_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp sgt i32 %2, 32
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dibx000_i2c_gated_tuner_xfer, ptr noundef nonnull @__func__.dibx000_i2c_gated_tuner_xfer, i32 noundef %2) #9
  br label %64

12:                                               ; preds = %3
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %5, i32 noundef 0)
  %13 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 12
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_i2c_gated_tuner_xfer) #9
  br label %64

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9
  %23 = add nsw i32 %2, 2
  %24 = mul i32 %23, 12
  tail call void @llvm.memset.p0.i32(ptr align 8 %22, i8 0, i32 %24, i1 false)
  %25 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10
  %26 = load i16, ptr %1, align 4
  %27 = trunc i16 %26 to i8
  %28 = load i16, ptr %5, align 8
  %29 = icmp ugt i16 %28, 2
  %30 = zext i1 %29 to i8
  %31 = shl i8 %27, %30
  %32 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 8
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 1
  %36 = lshr i32 %35, 8
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %25, align 1
  %38 = trunc i16 %33 to i8
  %39 = add i8 %38, 1
  %40 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 1
  store i8 %39, ptr %40, align 1
  %41 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 2
  store i8 %31, ptr %41, align 1
  %42 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 3
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 7
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %22, align 8
  %46 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 0, i32 3
  store ptr %25, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 0, i32 2
  store i16 4, ptr %47, align 4
  %48 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 1
  %49 = mul i32 %2, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %48, ptr align 4 %1, i32 %49, i1 false)
  %50 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 4
  %51 = select i1 %29, i8 0, i8 -128
  store i8 %37, ptr %50, align 1
  %52 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 5
  store i8 %39, ptr %52, align 1
  %53 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 6
  store i8 %30, ptr %53, align 1
  %54 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 7
  store i8 %51, ptr %54, align 1
  %55 = add nsw i32 %2, 1
  %56 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 %55
  store i16 %45, ptr %56, align 4
  %57 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 %55, i32 3
  store ptr %50, ptr %57, align 4
  %58 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 %55, i32 2
  store i16 4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 6
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @i2c_transfer(ptr noundef %60, ptr noundef %22, i32 noundef %23) #8
  %62 = icmp eq i32 %61, %23
  %63 = select i1 %62, i32 %2, i32 -5
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %64

64:                                               ; preds = %21, %19, %16, %10, %7
  %65 = phi i32 [ %63, %21 ], [ -12, %10 ], [ -12, %7 ], [ -22, %19 ], [ -22, %16 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dibx000_i2c_func(ptr nocapture noundef readnone %0) #5 {
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_master_xfer_gpio12(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %5, i32 noundef 1)
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %20, %3
  %8 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %9 = getelementptr %struct.i2c_msg, ptr %1, i32 %8
  %10 = getelementptr %struct.i2c_msg, ptr %1, i32 %8, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @dibx000_master_i2c_read(ptr noundef %5, ptr noundef %9)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %23

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @dibx000_master_i2c_write(ptr noundef %5, ptr noundef %9)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %14
  %21 = add nuw nsw i32 %8, 1
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %7

23:                                               ; preds = %20, %17, %14, %3
  %24 = phi i32 [ %2, %3 ], [ %2, %20 ], [ 0, %17 ], [ 0, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dibx000_master_i2c_read(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %94, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 12
  %11 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10
  %12 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 1
  %13 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 2
  %14 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 3
  %15 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 0, i32 3
  %18 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 6
  br label %24

19:                                               ; preds = %89, %80, %77
  %20 = phi ptr [ %27, %77 ], [ %87, %80 ], [ %91, %89 ]
  %21 = icmp eq i16 %78, 0
  br i1 %21, label %94, label %22

22:                                               ; preds = %19
  %23 = load i16, ptr %3, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i16 [ %4, %6 ], [ %23, %22 ]
  %26 = phi i16 [ %4, %6 ], [ %78, %22 ]
  %27 = phi ptr [ %8, %6 ], [ %20, %22 ]
  %28 = tail call i16 @llvm.umin.i16(i16 %26, i16 8)
  %29 = load i16, ptr %1, align 4
  %30 = load i16, ptr %9, align 2
  %31 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, ptr @debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_write_word) #9
  br label %60

38:                                               ; preds = %24
  %39 = add i16 %30, 1
  %40 = icmp ult i16 %26, 9
  %41 = shl i16 %29, 9
  %42 = shl nuw nsw i16 %28, 2
  %43 = and i16 %42, 28
  %44 = or i16 %41, %43
  %45 = icmp eq i16 %26, %25
  %46 = select i1 %45, i16 418, i16 386
  %47 = or i16 %46, %44
  %48 = or i16 %47, 64
  %49 = select i1 %40, i16 %48, i16 %47
  %50 = lshr i16 %39, 8
  %51 = trunc i16 %50 to i8
  store i8 %51, ptr %11, align 8
  %52 = trunc i16 %39 to i8
  store i8 %52, ptr %12, align 1
  %53 = lshr i16 %49, 8
  %54 = trunc i16 %53 to i8
  store i8 %54, ptr %13, align 2
  %55 = trunc i16 %49 to i8
  store i8 %55, ptr %14, align 1
  store i64 17179869184, ptr %15, align 8
  %56 = load i8, ptr %16, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %15, align 8
  store ptr %11, ptr %17, align 8
  %58 = load ptr, ptr %18, align 8
  %59 = tail call i32 @i2c_transfer(ptr noundef %58, ptr noundef %15, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %60

60:                                               ; preds = %38, %36, %33
  br label %61

61:                                               ; preds = %69, %60
  %62 = phi i32 [ %70, %69 ], [ 100, %60 ]
  %63 = load i16, ptr %9, align 2
  %64 = add i16 %63, 2
  %65 = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %0, i16 noundef zeroext %64) #8
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = add nsw i32 %62, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %94, label %61

72:                                               ; preds = %61
  %73 = icmp ne i32 %62, 0
  %74 = and i32 %66, 128
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = sub i16 %26, %28
  %79 = icmp eq i16 %28, 0
  br i1 %79, label %19, label %80

80:                                               ; preds = %89, %77
  %81 = phi i16 [ %92, %89 ], [ %28, %77 ]
  %82 = phi ptr [ %91, %89 ], [ %27, %77 ]
  %83 = load i16, ptr %9, align 2
  %84 = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %0, i16 noundef zeroext %83)
  %85 = lshr i16 %84, 8
  %86 = trunc i16 %85 to i8
  %87 = getelementptr i8, ptr %82, i32 1
  store i8 %86, ptr %82, align 1
  %88 = icmp eq i16 %81, 1
  br i1 %88, label %19, label %89

89:                                               ; preds = %80
  %90 = trunc i16 %84 to i8
  %91 = getelementptr i8, ptr %82, i32 2
  store i8 %90, ptr %87, align 1
  %92 = add i16 %81, -2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %19, label %80

94:                                               ; preds = %72, %69, %19, %2
  %95 = phi i32 [ 0, %2 ], [ -121, %69 ], [ -121, %72 ], [ 0, %19 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dibx000_master_i2c_write(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %113, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 12
  %11 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10
  %12 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 1
  %13 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 2
  %14 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 3
  %15 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 0, i32 3
  %18 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 6
  br label %22

19:                                               ; preds = %108
  %20 = sub i16 %24, %28
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %113, label %22

22:                                               ; preds = %19, %6
  %23 = phi ptr [ %8, %6 ], [ %42, %19 ]
  %24 = phi i16 [ %4, %6 ], [ %20, %19 ]
  %25 = load i16, ptr %9, align 2
  %26 = add i16 %25, 2
  %27 = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %0, i16 noundef zeroext %26)
  %28 = tail call i16 @llvm.umin.i16(i16 %24, i16 8)
  %29 = zext i16 %28 to i32
  br label %30

30:                                               ; preds = %59, %22
  %31 = phi i32 [ %61, %59 ], [ 0, %22 ]
  %32 = phi ptr [ %42, %59 ], [ %23, %22 ]
  %33 = getelementptr i8, ptr %32, i32 1
  %34 = load i8, ptr %32, align 1
  %35 = add nuw nsw i32 %31, 1
  %36 = icmp ult i32 %35, %29
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = getelementptr i8, ptr %32, i32 2
  %39 = load i8, ptr %33, align 1
  br label %40

40:                                               ; preds = %37, %30
  %41 = phi i8 [ %39, %37 ], [ 0, %30 ]
  %42 = phi ptr [ %38, %37 ], [ %33, %30 ]
  %43 = load i16, ptr %9, align 2
  %44 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, ptr @debug, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_write_word) #9
  br label %59

51:                                               ; preds = %40
  %52 = lshr i16 %43, 8
  %53 = trunc i16 %52 to i8
  store i8 %53, ptr %11, align 8
  %54 = trunc i16 %43 to i8
  store i8 %54, ptr %12, align 1
  store i8 %34, ptr %13, align 2
  store i8 %41, ptr %14, align 1
  store i64 17179869184, ptr %15, align 8
  %55 = load i8, ptr %16, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %15, align 8
  store ptr %11, ptr %17, align 8
  %57 = load ptr, ptr %18, align 8
  %58 = tail call i32 @i2c_transfer(ptr noundef %57, ptr noundef %15, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %59

59:                                               ; preds = %51, %49, %46
  %60 = add nuw nsw i32 %31, 2
  %61 = and i32 %60, 65535
  %62 = icmp ult i32 %61, %29
  br i1 %62, label %30, label %63

63:                                               ; preds = %59
  %64 = load i16, ptr %1, align 4
  %65 = load i16, ptr %3, align 4
  %66 = load i16, ptr %9, align 2
  %67 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, ptr @debug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %69
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_write_word) #9
  br label %96

74:                                               ; preds = %63
  %75 = add i16 %66, 1
  %76 = icmp ult i16 %24, 9
  %77 = shl i16 %64, 9
  %78 = shl nuw nsw i16 %28, 2
  %79 = and i16 %78, 28
  %80 = or i16 %77, %79
  %81 = icmp eq i16 %24, %65
  %82 = select i1 %81, i16 416, i16 384
  %83 = or i16 %82, %80
  %84 = or i16 %83, 64
  %85 = select i1 %76, i16 %84, i16 %83
  %86 = lshr i16 %75, 8
  %87 = trunc i16 %86 to i8
  store i8 %87, ptr %11, align 8
  %88 = trunc i16 %75 to i8
  store i8 %88, ptr %12, align 1
  %89 = lshr i16 %85, 8
  %90 = trunc i16 %89 to i8
  store i8 %90, ptr %13, align 2
  %91 = trunc i16 %85 to i8
  store i8 %91, ptr %14, align 1
  store i64 17179869184, ptr %15, align 8
  %92 = load i8, ptr %16, align 4
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %15, align 8
  store ptr %11, ptr %17, align 8
  %94 = load ptr, ptr %18, align 8
  %95 = tail call i32 @i2c_transfer(ptr noundef %94, ptr noundef %15, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %96

96:                                               ; preds = %74, %72, %69
  br label %97

97:                                               ; preds = %105, %96
  %98 = phi i32 [ %106, %105 ], [ 100, %96 ]
  %99 = load i16, ptr %9, align 2
  %100 = add i16 %99, 2
  %101 = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %0, i16 noundef zeroext %100) #8
  %102 = zext i16 %101 to i32
  %103 = and i32 %102, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = add nsw i32 %98, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %97

108:                                              ; preds = %97
  %109 = icmp ne i32 %98, 0
  %110 = and i32 %102, 128
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %19, label %113

113:                                              ; preds = %108, %105, %19, %2
  %114 = phi i32 [ 0, %2 ], [ -121, %105 ], [ -121, %108 ], [ 0, %19 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dibx000_read_word(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 12
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #8
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_read_word) #9
  br label %46

11:                                               ; preds = %2
  %12 = lshr i16 %1, 8
  %13 = trunc i16 %12 to i8
  %14 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10
  store i8 %13, ptr %14, align 8
  %15 = trunc i16 %1 to i8
  %16 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 10, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %17, i8 0, i32 24, i1 false)
  %18 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 7
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %17, align 8
  %21 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 0, i32 3
  store ptr %14, ptr %21, align 8
  %22 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 0, i32 2
  store i16 2, ptr %22, align 4
  %23 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 11
  %26 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 1, i32 3
  store ptr %25, ptr %26, align 4
  %27 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 9, i32 1, i32 2
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @i2c_transfer(ptr noundef %29, ptr noundef %17, i32 noundef 2) #8
  %31 = icmp ne i32 %30, 2
  %32 = load i32, ptr @debug, align 4
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %11
  %36 = zext i16 %1 to i32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dibx000_read_word, i32 noundef %36) #9
  br label %38

38:                                               ; preds = %35, %11
  %39 = load i8, ptr %25, align 8
  %40 = zext i8 %39 to i16
  %41 = shl nuw i16 %40, 8
  %42 = getelementptr %struct.dibx000_i2c_master, ptr %0, i32 0, i32 11, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  %45 = or i16 %41, %44
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %46

46:                                               ; preds = %38, %9, %6
  %47 = phi i16 [ %45, %38 ], [ 0, %9 ], [ 0, %6 ]
  ret i16 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_master_xfer_gpio34(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %5, i32 noundef 2)
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %20, %3
  %8 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %9 = getelementptr %struct.i2c_msg, ptr %1, i32 %8
  %10 = getelementptr %struct.i2c_msg, ptr %1, i32 %8, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @dibx000_master_i2c_read(ptr noundef %5, ptr noundef %9)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %23

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @dibx000_master_i2c_write(ptr noundef %5, ptr noundef %9)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %14
  %21 = add nuw nsw i32 %8, 1
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %7

23:                                               ; preds = %20, %17, %14, %3
  %24 = phi i32 [ %2, %3 ], [ %2, %20 ], [ 0, %17 ], [ 0, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_gated_gpio67_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp sgt i32 %2, 32
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dibx000_i2c_gated_gpio67_xfer, ptr noundef nonnull @__func__.dibx000_i2c_gated_gpio67_xfer, i32 noundef %2) #9
  br label %64

12:                                               ; preds = %3
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %5, i32 noundef 3)
  %13 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 12
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dibx000_i2c_gated_gpio67_xfer) #9
  br label %64

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9
  %23 = add nsw i32 %2, 2
  %24 = mul i32 %23, 12
  tail call void @llvm.memset.p0.i32(ptr align 8 %22, i8 0, i32 %24, i1 false)
  %25 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10
  %26 = load i16, ptr %1, align 4
  %27 = trunc i16 %26 to i8
  %28 = load i16, ptr %5, align 8
  %29 = icmp ugt i16 %28, 2
  %30 = zext i1 %29 to i8
  %31 = shl i8 %27, %30
  %32 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 8
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 1
  %36 = lshr i32 %35, 8
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %25, align 1
  %38 = trunc i16 %33 to i8
  %39 = add i8 %38, 1
  %40 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 1
  store i8 %39, ptr %40, align 1
  %41 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 2
  store i8 %31, ptr %41, align 1
  %42 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 3
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 7
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %22, align 8
  %46 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 0, i32 3
  store ptr %25, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 0, i32 2
  store i16 4, ptr %47, align 4
  %48 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 1
  %49 = mul i32 %2, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %48, ptr align 4 %1, i32 %49, i1 false)
  %50 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 4
  %51 = select i1 %29, i8 0, i8 -128
  store i8 %37, ptr %50, align 1
  %52 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 5
  store i8 %39, ptr %52, align 1
  %53 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 6
  store i8 %30, ptr %53, align 1
  %54 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 10, i32 7
  store i8 %51, ptr %54, align 1
  %55 = add nsw i32 %2, 1
  %56 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 %55
  store i16 %45, ptr %56, align 4
  %57 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 %55, i32 3
  store ptr %50, ptr %57, align 4
  %58 = getelementptr %struct.dibx000_i2c_master, ptr %5, i32 0, i32 9, i32 %55, i32 2
  store i16 4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %5, i32 0, i32 6
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @i2c_transfer(ptr noundef %60, ptr noundef %22, i32 noundef %23) #8
  %62 = icmp eq i32 %61, %23
  %63 = select i1 %62, i32 %2, i32 -5
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %64

64:                                               ; preds = %21, %19, %16, %10, %7
  %65 = phi i32 [ %63, %21 ], [ -12, %10 ], [ -12, %7 ], [ -22, %19 ], [ -22, %16 ]
  ret i32 %65
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
