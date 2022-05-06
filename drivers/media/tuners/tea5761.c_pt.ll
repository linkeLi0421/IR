; ModuleID = '/llk/IR/drivers/media/tuners/tea5761.c_pt.bc'
source_filename = "../drivers/media/tuners/tea5761.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5761_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5761_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tea5761_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5761_autodetection:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5761_autodetection\22\09\09\09\09\09"
module asm "__kstrtabns_tea5761_autodetection:\09\09\09\09\09"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
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
%struct.tea5761_priv = type { %struct.tuner_i2c_props, i32, i8 }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [43 x i8] c"\014it is not a TEA5761. Received %i chars.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"\014Manufacturer ID= 0x%02x, Chip ID = %02x%02x. It is not a TEA5761\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\014tea5761: TEA%02x%02x detected. Manufacturer ID= 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tea5761\00", align 1
@tea5761_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"tea5761\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @tea5761_release, ptr null, ptr @set_radio_sleep, ptr null, ptr null, ptr null, ptr @set_radio_freq, ptr null, ptr @tea5761_get_frequency, ptr null, ptr null, ptr @tea5761_get_status, ptr @tea5761_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Philips TEA5761HN FM Radio\00", align 1
@__kstrtab_tea5761_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5761_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5761_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5761_attach to i32), ptr @__kstrtab_tea5761_attach, ptr @__kstrtabns_tea5761_attach }, section "___ksymtab_gpl+tea5761_attach", align 4
@__kstrtab_tea5761_autodetection = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5761_autodetection = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5761_autodetection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5761_autodetection to i32), ptr @__kstrtab_tea5761_autodetection, ptr @__kstrtabns_tea5761_autodetection }, section "___ksymtab_gpl+tea5761_autodetection", align 4
@__UNIQUE_ID_description253 = internal constant [44 x i8] c"description=Philips TEA5761 FM tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [50 x i8] c"author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: radio freq counter %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\017%s %d-%04x: TEA5761 set to standby mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: TEA5761 set to mono\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: TEA5761 set to stereo\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 5)\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"\016tea5761: Frequency %d.%03d KHz (divider = 0x%04x)\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 16)\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: Signal strength: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: Radio ST GET = %02x\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_tea5761_attach, ptr @__ksymtab_tea5761_autodetection, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tea5761_autodetection(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 16, ptr %5, align 4, !annotation !8
  %6 = zext i8 %1 to i16
  store i16 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %7, align 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %8, align 4
  %9 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  switch i32 %9, label %10 [
    i32 16, label %12
    i32 1, label %12
  ]

10:                                               ; preds = %2
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9) #9
  br label %31

12:                                               ; preds = %2, %2
  %13 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 13
  %14 = load i8, ptr %13, align 1
  %15 = icmp ne i8 %14, 43
  %16 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 14
  %17 = load i8, ptr %16, align 1
  %18 = icmp ne i8 %17, 87
  %19 = select i1 %15, i1 true, i1 %18
  %20 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 15
  %21 = load i8, ptr %20, align 1
  %22 = icmp ne i8 %21, 97
  %23 = select i1 %19, i1 true, i1 %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = zext i8 %21 to i32
  %26 = zext i8 %17 to i32
  %27 = zext i8 %14 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %27, i32 noundef %26, i32 noundef %25) #9
  br label %31

29:                                               ; preds = %12
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 87, i32 noundef 97, i32 noundef 43) #9
  br label %31

31:                                               ; preds = %29, %24, %10
  %32 = phi i32 [ -22, %10 ], [ -22, %24 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tea5761_attach(ptr noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = tail call i32 @tea5761_autodetection(ptr noundef %1, i8 noundef zeroext %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 24) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %8, ptr %11, align 4
  store i8 %2, ptr %8, align 8
  %12 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 3
  store ptr @.str.3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %14, ptr noundef nonnull align 4 dereferenceable(220) @tea5761_tuner_ops, i32 220, i1 false)
  %15 = icmp eq ptr %1, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %18, %16 ], [ -1, %10 ]
  %21 = zext i8 %2 to i32
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %20, i32 noundef %21, ptr noundef nonnull @.str.5) #9
  br label %23

23:                                               ; preds = %19, %6, %3
  %24 = phi ptr [ %0, %19 ], [ null, %3 ], [ null, %6 ]
  ret ptr %24
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tea5761_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_radio_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tea5761_priv, ptr %3, i32 0, i32 2
  store i8 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tea5761_priv, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  tail call fastcc void @__set_radio_freq(ptr noundef %0, i32 noundef %6, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_radio_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tea5761_priv, ptr %4, i32 0, i32 2
  store i8 0, ptr %5, align 4
  %6 = load i32, ptr %1, align 8
  %7 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  tail call fastcc void @__set_radio_freq(ptr noundef %0, i32 noundef %6, i1 noundef zeroext %9)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tea5761_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tea5761_priv, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tea5761_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  store i32 0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 16, ptr %7, align 4, !annotation !8
  %8 = load i8, ptr %6, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  switch i32 %14, label %15 [
    i32 16, label %28
    i32 1, label %28
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %22, %20 ], [ -1, %15 ]
  %25 = load i8, ptr %6, align 4
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %17, i32 noundef %24, i32 noundef %26, i32 noundef %14) #9
  br label %80

28:                                               ; preds = %2, %2
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds i8, ptr %4, i32 9
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, -16
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 9
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.tuner_i2c_props, ptr %29, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tuner_i2c_props, ptr %29, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %45, %43 ], [ -1, %37 ]
  %48 = load i8, ptr %29, align 4
  %49 = zext i8 %48 to i32
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %39, i32 noundef %47, i32 noundef %49, i32 noundef %34) #9
  br label %51

51:                                               ; preds = %46, %28
  %52 = icmp eq i8 %32, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  store i32 1, ptr %1, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = load ptr, ptr %5, align 4
  %56 = load i8, ptr %30, align 1
  %57 = and i8 %56, 4
  %58 = zext i8 %57 to i32
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.tuner_i2c_props, ptr %55, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tuner_i2c_props, ptr %55, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.i2c_adapter, ptr %65, i32 0, i32 11
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i32 [ %69, %67 ], [ -1, %61 ]
  %72 = load i8, ptr %55, align 4
  %73 = zext i8 %72 to i32
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %63, i32 noundef %71, i32 noundef %73, i32 noundef %58) #9
  br label %75

75:                                               ; preds = %70, %54
  %76 = icmp eq i8 %57, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = load i32, ptr %1, align 4
  %79 = or i32 %78, 2
  store i32 %79, ptr %1, align 4
  br label %80

80:                                               ; preds = %77, %75, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tea5761_get_rf_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  store i16 0, ptr %1, align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 16, ptr %7, align 4, !annotation !8
  %8 = load i8, ptr %6, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  switch i32 %14, label %15 [
    i32 16, label %28
    i32 1, label %28
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %22, %20 ], [ -1, %15 ]
  %25 = load i8, ptr %6, align 4
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %17, i32 noundef %24, i32 noundef %26, i32 noundef %14) #9
  br label %53

28:                                               ; preds = %2, %2
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds i8, ptr %4, i32 9
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, -16
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 9
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.tuner_i2c_props, ptr %29, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tuner_i2c_props, ptr %29, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %45, %43 ], [ -1, %37 ]
  %48 = load i8, ptr %29, align 4
  %49 = zext i8 %48 to i32
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %39, i32 noundef %47, i32 noundef %49, i32 noundef %34) #9
  br label %51

51:                                               ; preds = %46, %28
  %52 = trunc i32 %34 to i16
  store i16 %52, ptr %1, align 2
  br label %53

53:                                               ; preds = %51, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__set_radio_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [7 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false)
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %18, %16 ], [ -1, %10 ]
  %21 = load i8, ptr %7, align 4
  %22 = zext i8 %21 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %12, i32 noundef %20, i32 noundef %22, i32 noundef %1) #9
  br label %24

24:                                               ; preds = %19, %3
  %25 = getelementptr inbounds %struct.tea5761_priv, ptr %7, i32 0, i32 2
  %26 = load i8, ptr %25, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi i32 [ %39, %37 ], [ -1, %31 ]
  %42 = load i8, ptr %7, align 4
  %43 = zext i8 %42 to i32
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %33, i32 noundef %41, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %40, %28, %24
  %46 = phi i32 [ 5, %40 ], [ 5, %28 ], [ 4, %24 ]
  %47 = phi i8 [ -128, %40 ], [ -128, %28 ], [ 64, %24 ]
  %48 = phi i8 [ -120, %40 ], [ -120, %28 ], [ 8, %24 ]
  %49 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 %46
  store i8 %47, ptr %49, align 1
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %2, label %52, label %69

52:                                               ; preds = %45
  br i1 %51, label %67, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 11
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i32 [ %61, %59 ], [ -1, %53 ]
  %64 = load i8, ptr %7, align 4
  %65 = zext i8 %64 to i32
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %55, i32 noundef %63, i32 noundef %65) #9
  br label %67

67:                                               ; preds = %62, %52
  %68 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 5
  store i8 %48, ptr %68, align 1
  br label %84

69:                                               ; preds = %45
  br i1 %51, label %84, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.i2c_adapter, ptr %74, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = phi i32 [ %78, %76 ], [ -1, %70 ]
  %81 = load i8, ptr %7, align 4
  %82 = zext i8 %81 to i32
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %72, i32 noundef %80, i32 noundef %82) #9
  br label %84

84:                                               ; preds = %79, %69, %67
  %85 = lshr i32 %1, 2
  %86 = and i32 %85, 268435455
  %87 = mul i32 %86, 1000
  %88 = add i32 %87, 925000
  %89 = lshr i32 %88, 15
  %90 = lshr i32 %88, 23
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 63
  %93 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 1
  store i8 %92, ptr %93, align 1
  %94 = trunc i32 %89 to i8
  %95 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 2
  store i8 %94, ptr %95, align 1
  %96 = load i32, ptr @debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %84
  %99 = shl nuw nsw i32 %89, 8
  %100 = and i32 %99, 16128
  %101 = shl nuw nsw i32 %100, 15
  %102 = urem i32 %101, 1000
  %103 = sub nsw i32 %101, %102
  %104 = add nsw i32 %103, 225000
  %105 = lshr i32 %104, 2
  %106 = udiv i32 %104, 4000
  %107 = urem i32 %105, 1000
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %106, i32 noundef %107, i32 noundef %100) #9
  br label %109

109:                                              ; preds = %98, %84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %110 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 7, ptr %110, align 4, !annotation !8
  %111 = load i8, ptr %7, align 4
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %4, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %114, align 4
  %115 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  switch i32 %117, label %118 [
    i32 7, label %131
    i32 1, label %131
  ]

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %115, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 11
  %125 = load i32, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i32 [ %125, %123 ], [ -1, %118 ]
  %128 = load i8, ptr %7, align 4
  %129 = zext i8 %128 to i32
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %120, i32 noundef %127, i32 noundef %129, i32 noundef %117) #9
  br label %131

131:                                              ; preds = %126, %109, %109
  %132 = mul i32 %1, 125
  %133 = lshr i32 %132, 1
  %134 = getelementptr inbounds %struct.tea5761_priv, ptr %7, i32 0, i32 1
  store i32 %133, ptr %134, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
