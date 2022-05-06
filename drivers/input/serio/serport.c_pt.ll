; ModuleID = '/llk/IR/drivers/input/serio/serport.c_pt.bc'
source_filename = "../drivers/input/serio/serport.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.serport = type { ptr, %struct.wait_queue_head, ptr, %struct.serio_device_id, %struct.spinlock, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.62, %struct.anon.63, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.62 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.63 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author212 = internal constant [47 x i8] c"serport.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [53 x i8] c"serport.description=Input device TTY line discipline\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [41 x i8] c"serport.file=drivers/input/serio/serport\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [20 x i8] c"serport.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias216 = internal constant [26 x i8] c"serport.alias=tty-ldisc-2\00", section ".modinfo", align 1
@serport_ldisc = internal global %struct.tty_ldisc_ops { ptr @.str, i32 2, ptr @serport_ldisc_open, ptr @serport_ldisc_close, ptr null, ptr @serport_ldisc_read, ptr null, ptr @serport_ldisc_ioctl, ptr null, ptr null, ptr null, ptr @serport_ldisc_hangup, ptr @serport_ldisc_receive, ptr @serport_ldisc_write_wakeup, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_serport__217_308_serport_init6 = internal global ptr @serport_init, section ".initcall6.init", align 4
@__exitcall_serport_exit = internal global ptr @serport_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@serport_ldisc_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&serport->wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Serial port\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s/serio0\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\016serio: Serial port %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\013serport.c: Error registering line discipline.\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias216, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_serport_exit, ptr @__initcall__kmod_serport__217_308_serport_init6, ptr @serport_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @serport_exit() #0 section ".exit.text" {
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @serport_ldisc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @serport_init() #0 section ".init.text" {
  %1 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @serport_ldisc) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serport_ldisc_open(ptr noundef %0) #2 {
  %2 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.serport, ptr %5, i32 0, i32 4
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.serport, ptr %5, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @serport_ldisc_open.__key) #10
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 22
  store i32 256, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %12) #10
  br label %13

13:                                               ; preds = %7, %3, %1
  %14 = phi i32 [ 0, %7 ], [ -1, %1 ], [ -12, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serport_ldisc_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serport_ldisc_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5) #2 {
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 5
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 768) #12
  %16 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 1
  %20 = tail call i32 @strlcpy(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef 32) #10
  %21 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 2
  %22 = tail call ptr @tty_name(ptr noundef %0) #10
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %22)
  %24 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 5
  %25 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %24, align 1
  store i8 2, ptr %24, align 1
  %27 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 7
  store ptr @serport_serio_write, ptr %27, align 8
  %28 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 8
  store ptr @serport_serio_open, ptr %28, align 4
  %29 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 9
  store ptr @serport_serio_close, ptr %29, align 8
  store ptr %9, ptr %15, align 8
  %30 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18, i32 1
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %16, align 4
  tail call void @__serio_register_port(ptr noundef %33, ptr noundef null) #10
  %34 = tail call ptr @tty_name(ptr noundef %0) #10
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %34) #11
  %36 = load volatile i32, ptr %10, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #10
  %40 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 1
  %41 = call i32 @prepare_to_wait_event(ptr noundef %40, ptr noundef nonnull %7, i32 noundef 1) #10
  %42 = load volatile i32, ptr %10, align 4
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %48, %39
  %46 = phi i32 [ %49, %48 ], [ %41, %39 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  call void @schedule() #10
  %49 = call i32 @prepare_to_wait_event(ptr noundef %40, ptr noundef nonnull %7, i32 noundef 1) #10
  %50 = load volatile i32, ptr %10, align 4
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %45, label %53

53:                                               ; preds = %48, %39
  call void @finish_wait(ptr noundef %40, ptr noundef nonnull %7) #10
  br label %54

54:                                               ; preds = %53, %45
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #10
  br label %55

55:                                               ; preds = %54, %18
  %56 = load ptr, ptr %16, align 4
  call void @serio_unregister_port(ptr noundef %56) #10
  store ptr null, ptr %16, align 4
  call void @_clear_bit(i32 noundef 3, ptr noundef %10) #10
  call void @_clear_bit(i32 noundef 1, ptr noundef %10) #10
  br label %57

57:                                               ; preds = %55, %13, %6
  %58 = phi i32 [ 0, %55 ], [ -16, %6 ], [ -12, %13 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serport_ldisc_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 1074032897
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = inttoptr i32 %2 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #13, !srcloc !9
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #10, !srcloc !12
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %18 = load ptr, ptr %17, align 4
  %19 = trunc i32 %16 to i8
  %20 = getelementptr inbounds %struct.serport, ptr %18, i32 0, i32 3, i32 3
  store i8 %19, ptr %20, align 1
  %21 = lshr i32 %16, 8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.serport, ptr %18, i32 0, i32 3, i32 2
  store i8 %22, ptr %23, align 2
  %24 = lshr i32 %16, 16
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.serport, ptr %18, i32 0, i32 3, i32 1
  store i8 %25, ptr %26, align 1
  br label %27

27:                                               ; preds = %15, %5, %3
  %28 = phi i32 [ 0, %15 ], [ -14, %5 ], [ -22, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serport_ldisc_hangup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %6) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  %7 = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serport_ldisc_receive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.serport, ptr %6, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.serport, ptr %6, i32 0, i32 5
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp sgt i32 %3, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = icmp eq ptr %2, null
  %17 = getelementptr inbounds %struct.serport, ptr %6, i32 0, i32 2
  br label %18

18:                                               ; preds = %28, %15
  %19 = phi i32 [ 0, %15 ], [ %34, %28 ]
  %20 = phi i32 [ 0, %15 ], [ %29, %28 ]
  br i1 %16, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %2, i32 %19
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 3
  %25 = select i1 %24, i32 2, i32 0
  %26 = icmp eq i8 %23, 2
  %27 = select i1 %26, i32 4, i32 %25
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i32 [ %20, %18 ], [ %27, %21 ]
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %1, i32 %19
  %32 = load i8, ptr %31, align 1
  %33 = tail call i32 @serio_interrupt(ptr noundef %30, i8 noundef zeroext %32, i32 noundef %29) #10
  %34 = add nuw nsw i32 %19, 1
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %36, label %18

36:                                               ; preds = %28, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serport_ldisc_write_wakeup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.serio_driver, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %12) #10
  br label %21

21:                                               ; preds = %20, %16, %10, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serport_serio_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_operations, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #10
  %11 = icmp ne i32 %10, 1
  %12 = sext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serport_serio_open(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.serport, ptr %2, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.serport, ptr %2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serport_serio_close(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.serport, ptr %2, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.serport, ptr %2, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %5) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readonly }

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
!9 = !{i64 2406401}
!10 = !{i64 2406598}
!11 = !{i64 2149891877}
!12 = !{i64 2152576991, i64 2152577271, i64 2152577605, i64 2152577939}
