; ModuleID = '/llk/IR/drivers/iio/trigger/iio-trig-hrtimer.c_pt.bc'
source_filename = "../drivers/iio/trigger/iio-trig-hrtimer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_sw_trigger_type = type { ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.iio_sw_trigger_ops = type { ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.iio_hrtimer_info = type { %struct.iio_sw_trigger, %struct.hrtimer, [2 x i32], i64 }
%struct.iio_sw_trigger = type { ptr, ptr, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_iio_trig_hrtimer__166_195_iio_trig_hrtimer_init6 = internal global ptr @iio_trig_hrtimer_init, section ".initcall6.init", align 4
@iio_trig_hrtimer = internal global %struct.iio_sw_trigger_type { ptr @.str, ptr null, ptr @iio_trig_hrtimer_ops, %struct.list_head zeroinitializer, ptr null }, align 4
@__exitcall_iio_trig_hrtimer_exit = internal global ptr @iio_trig_hrtimer_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [70 x i8] c"iio_trig_hrtimer.author=Marten Svanfeldt <marten@intuitiveaerial.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [64 x i8] c"iio_trig_hrtimer.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [76 x i8] c"iio_trig_hrtimer.description=Periodic hrtimer trigger for the IIO subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [59 x i8] c"iio_trig_hrtimer.file=drivers/iio/trigger/iio-trig-hrtimer\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [32 x i8] c"iio_trig_hrtimer.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"hrtimer\00", align 1
@iio_trig_hrtimer_ops = internal constant %struct.iio_sw_trigger_ops { ptr @iio_trig_hrtimer_probe, ptr @iio_trig_hrtimer_remove }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iio_hrtimer_trigger_ops = internal constant %struct.iio_trigger_ops { ptr @iio_trig_hrtimer_set_state, ptr null, ptr null }, align 4
@iio_hrtimer_attr_groups = internal global [2 x ptr] [ptr @iio_hrtimer_attr_group, ptr null], align 4
@iio_hrtimer_type = internal constant %struct.config_item_type zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@iio_hrtimer_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @iio_hrtimer_attrs, ptr null }, align 4
@iio_hrtimer_attrs = internal global [2 x ptr] [ptr @dev_attr_sampling_frequency, ptr null], align 4
@dev_attr_sampling_frequency = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @iio_hrtimer_show_sampling_frequency, ptr @iio_hrtimer_store_sampling_frequency }, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"sampling_frequency\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_iio_trig_hrtimer_exit, ptr @__initcall__kmod_iio_trig_hrtimer__166_195_iio_trig_hrtimer_init6, ptr @iio_trig_hrtimer_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iio_trig_hrtimer_init() #0 section ".init.text" {
  %1 = tail call i32 @iio_register_sw_trigger_type(ptr noundef nonnull @iio_trig_hrtimer) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iio_trig_hrtimer_exit() #0 section ".exit.text" {
  tail call void @iio_unregister_sw_trigger_type(ptr noundef nonnull @iio_trig_hrtimer) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_unregister_sw_trigger_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_register_sw_trigger_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @iio_trig_hrtimer_probe(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 152) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = tail call ptr (ptr, ptr, ...) @iio_trigger_alloc(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef %0) #5
  store ptr %6, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iio_trigger, ptr %6, i32 0, i32 4, i32 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr @iio_hrtimer_trigger_ops, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.iio_trigger, ptr %11, i32 0, i32 4, i32 32
  store ptr @iio_hrtimer_attr_groups, ptr %12, align 8
  %13 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %3, i32 0, i32 1
  tail call void @hrtimer_init(ptr noundef %13, i32 noundef 1, i32 noundef 9) #5
  %14 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %3, i32 0, i32 1, i32 2
  store ptr @iio_hrtimer_trig_handler, ptr %14, align 8
  %15 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %3, i32 0, i32 2
  store i32 100, ptr %15, align 8
  %16 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %3, i32 0, i32 3
  store i64 10000000, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = tail call i32 @__iio_trigger_register(ptr noundef %17, ptr noundef null) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.iio_sw_trigger, ptr %3, i32 0, i32 2
  tail call void @config_group_init_type_name(ptr noundef %21, ptr noundef %0, ptr noundef nonnull @iio_hrtimer_type) #5
  br label %27

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8
  tail call void @iio_trigger_free(ptr noundef %23) #5
  %24 = inttoptr i32 %18 to ptr
  br label %25

25:                                               ; preds = %22, %5
  %26 = phi ptr [ %24, %22 ], [ inttoptr (i32 -12 to ptr), %5 ]
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %27

27:                                               ; preds = %25, %20, %1
  %28 = phi ptr [ %26, %25 ], [ %3, %20 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_trig_hrtimer_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.iio_trigger, ptr %2, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @iio_trigger_unregister(ptr noundef %2) #5
  %5 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %4, i32 0, i32 1
  %6 = tail call i32 @hrtimer_cancel(ptr noundef %5) #5
  %7 = load ptr, ptr %0, align 4
  tail call void @iio_trigger_free(ptr noundef %7) #5
  tail call void @kfree(ptr noundef %4) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_hrtimer_trig_handler(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = getelementptr i8, ptr %0, i32 56
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i64 %8() #5
  %10 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %9, i64 noundef %4) #5
  %11 = load ptr, ptr %2, align 8
  tail call void @iio_trigger_poll(ptr noundef %11) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_trig_hrtimer_set_state(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.iio_trigger, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %4, i32 0, i32 1
  br i1 %1, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %4, i32 0, i32 3
  %8 = load i64, ptr %7, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %5, i64 noundef %8, i64 noundef 0, i32 noundef 9) #5
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @hrtimer_cancel(ptr noundef %5) #5
  br label %11

11:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_hrtimer_show_sampling_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %5, i32 0, i32 2
  %7 = tail call i32 @iio_format_value(ptr noundef %2, i32 noundef 2, i32 noundef 2, ptr noundef %6) #5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_hrtimer_store_sampling_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = call i32 @iio_str_to_fixpoint(ptr noundef %2, i32 noundef 100, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 0
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %32, label %17

17:                                               ; preds = %11
  %18 = zext i32 %14 to i64
  %19 = zext i32 %12 to i64
  %20 = mul nuw nsw i64 %19, 1000
  %21 = add nuw nsw i64 %20, %18
  %22 = add nsw i64 %21, -4294967296
  %23 = icmp ult i64 %22, -4294967295
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %8, i32 0, i32 2
  store i32 %12, ptr %25, align 8
  %26 = mul i32 %14, 1000
  %27 = getelementptr %struct.iio_hrtimer_info, ptr %8, i32 0, i32 2, i32 1
  store i32 %26, ptr %27, align 4
  %28 = trunc i64 %21 to i32
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 1000000000000) #7, !srcloc !9
  %30 = extractvalue { i64, i64 } %29, 1
  %31 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %8, i32 0, i32 3
  store i64 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %24, %17, %11, %4
  %33 = phi i32 [ %3, %24 ], [ %9, %4 ], [ -34, %11 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_format_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_str_to_fixpoint(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind readnone }

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
!9 = !{i64 2148329007, i64 2148329287, i64 2148329621, i64 2148329955}
