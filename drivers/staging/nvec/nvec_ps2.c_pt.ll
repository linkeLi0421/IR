; ModuleID = '/llk/IR/drivers/staging/nvec/nvec_ps2.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec_ps2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvec_ps2 = type { ptr, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }

@__initcall__kmod_nvec_ps2__170_176_nvec_mouse_driver_init6 = internal global ptr @nvec_mouse_driver_init, section ".initcall6.init", align 4
@nvec_mouse_driver = internal global %struct.platform_driver { ptr @nvec_mouse_probe, ptr @nvec_mouse_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvec_mouse_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_nvec_mouse_driver_exit = internal global ptr @nvec_mouse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [39 x i8] c"nvec_ps2.description=NVEC mouse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [48 x i8] c"nvec_ps2.author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [35 x i8] c"nvec_ps2.alias=platform:nvec-mouse\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [44 x i8] c"nvec_ps2.file=drivers/staging/nvec/nvec_ps2\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [21 x i8] c"nvec_ps2.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"nvec-mouse\00", align 1
@nvec_mouse_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @nvec_mouse_suspend, ptr @nvec_mouse_resume, ptr @nvec_mouse_suspend, ptr @nvec_mouse_resume, ptr @nvec_mouse_suspend, ptr @nvec_mouse_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"nvec mouse\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"nvec\00", align 1
@ps2_dev = internal global %struct.nvec_ps2 zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.ps2_startstreaming.buf = private unnamed_addr constant [3 x i8] c"\06\03\06", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_nvec_mouse_driver_exit, ptr @__initcall__kmod_nvec_ps2__170_176_nvec_mouse_driver_init6, ptr @nvec_mouse_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nvec_mouse_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_mouse_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nvec_mouse_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_mouse_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_mouse_probe(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 768) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 5
  store i8 1, ptr %10, align 1
  %11 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 7
  store ptr @ps2_sendcommand, ptr %11, align 8
  %12 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 10
  store ptr @ps2_startstreaming, ptr %12, align 4
  %13 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 11
  store ptr @ps2_stopstreaming, ptr %13, align 8
  %14 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 1
  %15 = tail call i32 @strscpy(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 32) #6
  %16 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 2
  %17 = tail call i32 @strscpy(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef 32) #6
  store ptr %7, ptr @ps2_dev, align 4
  store ptr @nvec_ps2_notifier, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %18 = tail call i32 @nvec_register_notifier(ptr noundef %5, ptr noundef getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 1), i32 noundef 0) #6
  tail call void @__serio_register_port(ptr noundef nonnull %7, ptr noundef null) #6
  br label %19

19:                                               ; preds = %9, %1
  %20 = phi i32 [ 0, %9 ], [ -12, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_mouse_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 32833798, ptr %3, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %9 = call i32 @nvec_write_async(ptr noundef %8, ptr noundef nonnull %3, i16 noundef signext 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 1030, ptr %2, align 2
  %10 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %11 = call i32 @nvec_write_async(ptr noundef %10, ptr noundef nonnull %2, i16 noundef signext 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %12 = call i32 @nvec_unregister_notifier(ptr noundef %7, ptr noundef getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 1)) #6
  %13 = load ptr, ptr @ps2_dev, align 4
  call void @serio_unregister_port(ptr noundef %13) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps2_sendcommand(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 32768262, ptr %3, align 4
  %4 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %1, ptr %4, align 2
  %5 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %6 = call i32 @nvec_write_async(ptr noundef %5, ptr noundef nonnull %3, i16 noundef signext 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps2_startstreaming(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @__const.ps2_startstreaming.buf, i32 3, i1 false)
  %3 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %4 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %2, i16 noundef signext 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ps2_stopstreaming(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 1030, ptr %2, align 2
  %3 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %4 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %2, i16 noundef signext 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_ps2_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  switch i32 %1, label %39 [
    i32 129, label %4
    i32 6, label %19
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %2, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ %15, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr @ps2_dev, align 4
  %11 = add nuw nsw i32 %9, 2
  %12 = getelementptr i8, ptr %2, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = tail call i32 @serio_interrupt(ptr noundef %10, i8 noundef zeroext %13, i32 noundef 0) #6
  %15 = add nuw nsw i32 %9, 1
  %16 = load i8, ptr %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %8, label %39

19:                                               ; preds = %3
  %20 = getelementptr i8, ptr %2, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %2, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp ugt i8 %25, 2
  br i1 %26, label %27, label %39

27:                                               ; preds = %27, %23
  %28 = phi i32 [ %34, %27 ], [ 0, %23 ]
  %29 = load ptr, ptr @ps2_dev, align 4
  %30 = add nuw nsw i32 %28, 4
  %31 = getelementptr i8, ptr %2, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = tail call i32 @serio_interrupt(ptr noundef %29, i8 noundef zeroext %32, i32 noundef 0) #6
  %34 = add nuw nsw i32 %28, 1
  %35 = load i8, ptr %24, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %36, -2
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %27, label %39

39:                                               ; preds = %27, %23, %19, %8, %4, %3
  %40 = phi i32 [ 32769, %19 ], [ 0, %3 ], [ 32769, %4 ], [ 32769, %23 ], [ 32769, %8 ], [ 32769, %27 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_write_async(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_mouse_suspend(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 32833798, ptr %3, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %5 = call i32 @nvec_write_async(ptr noundef %4, ptr noundef nonnull %3, i16 noundef signext 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 1030, ptr %2, align 2
  %6 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %7 = call i32 @nvec_write_async(ptr noundef %6, ptr noundef nonnull %2, i16 noundef signext 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_mouse_resume(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @__const.ps2_startstreaming.buf, i32 3, i1 false) #6
  %4 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %5 = call i32 @nvec_write_async(ptr noundef %4, ptr noundef nonnull %3, i16 noundef signext 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 32768262, ptr %2, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %7 = call i32 @nvec_write_async(ptr noundef %6, ptr noundef nonnull %2, i16 noundef signext 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
