; ModuleID = '/llk/IR/drivers/tty/serdev/serdev-ttyport.c_pt.bc'
source_filename = "../drivers/tty/serdev/serdev-ttyport.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_port_client_operations = type { ptr, ptr }
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
%struct.serport = type { ptr, ptr, ptr, i32, i32 }
%struct.serdev_controller = type { %struct.device, i32, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.32, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.32 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.33, %struct.anon.34, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.33 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.34 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.serdev_device_ops = type { ptr, ptr }

@ctrl_ops = internal constant %struct.serdev_controller_ops { ptr @ttyport_write_buf, ptr @ttyport_write_flush, ptr @ttyport_write_room, ptr @ttyport_open, ptr @ttyport_close, ptr @ttyport_set_flow_control, ptr @ttyport_set_parity, ptr @ttyport_set_baudrate, ptr @ttyport_wait_until_sent, ptr @ttyport_get_tiocm, ptr @ttyport_set_tiocm }, align 4
@client_ops = internal constant %struct.tty_port_client_operations { ptr @ttyport_receive_buf, ptr @ttyport_write_wakeup }, align 4
@.str = private unnamed_addr constant [26 x i8] c"tty port %s%d registered\0A\00", align 1
@tty_port_default_client_ops = external dso_local constant %struct.tty_port_client_operations, align 4
@ttyport_receive_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/tty/serdev/serdev-ttyport.c\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s %s: receive_buf returns %d (count = %zu)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @serdev_tty_port_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = tail call ptr @serdev_controller_alloc(ptr noundef nonnull %1, i32 noundef 20) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.serport, ptr %15, i32 0, i32 3
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.serport, ptr %15, i32 0, i32 2
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.serdev_controller, ptr %11, i32 0, i32 3
  store ptr @ctrl_ops, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 4
  store ptr @client_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 20
  store ptr %11, ptr %20, align 4
  %21 = tail call i32 @serdev_controller_add(ptr noundef nonnull %11) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.tty_driver, ptr %2, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %3) #7
  br label %28

26:                                               ; preds = %13
  store ptr null, ptr %20, align 4
  store ptr @tty_port_default_client_ops, ptr %19, align 4
  tail call void @put_device(ptr noundef nonnull %11) #6
  %27 = inttoptr i32 %21 to ptr
  br label %28

28:                                               ; preds = %26, %23, %10, %4
  %29 = phi ptr [ %27, %26 ], [ %11, %23 ], [ inttoptr (i32 -19 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serdev_controller_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_controller_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_tty_port_unregister(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @serdev_controller_remove(ptr noundef nonnull %3) #6
  store ptr null, ptr %2, align 4
  %10 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 4
  store ptr @tty_port_default_client_ops, ptr %10, align 4
  tail call void @put_device(ptr noundef nonnull %3) #6
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ 0, %9 ], [ -19, %5 ], [ -19, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_controller_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_write_buf(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 4
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %10, align 4
  %23 = tail call i32 %21(ptr noundef %22, ptr noundef %1, i32 noundef %2) #6
  br label %24

24:                                               ; preds = %16, %8
  %25 = phi i32 [ %23, %16 ], [ 0, %8 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttyport_write_flush(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @tty_driver_flush_buffer(ptr noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_write_room(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @tty_write_room(ptr noundef %9) #6
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_open(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.ktermios, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #6
  %9 = getelementptr inbounds %struct.serport, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.serport, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @tty_init_dev(ptr noundef %10, i32 noundef %12) #6
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = ptrtoint ptr %13 to i32
  br label %55

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.serport, ptr %8, i32 0, i32 1
  store ptr %13, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tty_operations, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.tty_operations, ptr %20, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %22(ptr noundef %13, ptr noundef null) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load ptr, ptr %18, align 4
  tail call void @tty_unlock(ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, ptr noundef align 4 dereferenceable(44) %33, i32 44, i1 false)
  %34 = load i32, ptr %2, align 4
  %35 = and i32 %34, -1516
  store i32 %35, ptr %2, align 4
  %36 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -2
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -32844
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2147481295
  %45 = or i32 %44, -2147481552
  store i32 %45, ptr %42, align 4
  %46 = call i32 @tty_set_termios(ptr noundef %13, ptr noundef nonnull %2) #6
  %47 = getelementptr inbounds %struct.serport, ptr %8, i32 0, i32 4
  call void @_set_bit(i32 noundef 1, ptr noundef %47) #6
  br label %55

48:                                               ; preds = %28
  %49 = load ptr, ptr %19, align 4
  %50 = getelementptr inbounds %struct.tty_operations, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %13, ptr noundef null) #6
  br label %52

52:                                               ; preds = %48, %24, %17
  %53 = phi i32 [ %29, %48 ], [ -19, %24 ], [ -19, %17 ]
  tail call void @tty_unlock(ptr noundef %13) #6
  %54 = load i32, ptr %11, align 4
  tail call void @tty_release_struct(ptr noundef %13, i32 noundef %54) #6
  br label %55

55:                                               ; preds = %52, %31, %15
  %56 = phi i32 [ %16, %15 ], [ %53, %52 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #6
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttyport_close(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %10) #6
  tail call void @tty_lock(ptr noundef %9) #6
  %11 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_operations, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  tail call void %14(ptr noundef %9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %6
  tail call void @tty_unlock(ptr noundef %9) #6
  %18 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void @tty_release_struct(ptr noundef %9, i32 noundef %19) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttyport_set_flow_control(ptr noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.ktermios, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #6
  %12 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %12, i32 44, i1 false)
  %13 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2147483647
  %16 = select i1 %1, i32 -2147483648, i32 0
  %17 = or i32 %15, %16
  store i32 %17, ptr %13, align 4
  %18 = call i32 @tty_set_termios(ptr noundef %11, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_set_parity(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ktermios, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #6
  %12 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %12, i32 44, i1 false)
  %13 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -1073742593
  store i32 %15, ptr %13, align 4
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = or i32 %15, 256
  store i32 %18, ptr %13, align 4
  %19 = icmp eq i32 %1, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = or i32 %15, 768
  store i32 %21, ptr %13, align 4
  br label %22

22:                                               ; preds = %20, %17, %8
  %23 = call i32 @tty_set_termios(ptr noundef %11, ptr noundef nonnull %3) #6
  %24 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 13, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %13, align 4
  %27 = xor i32 %26, %25
  %28 = and i32 %27, 1073742592
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #6
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_set_baudrate(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ktermios, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #6
  %12 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %12, i32 44, i1 false)
  %13 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -4112
  store i32 %15, ptr %13, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %3, i32 noundef %1, i32 noundef %1) #6
  %16 = call i32 @tty_set_termios(ptr noundef %11, ptr noundef nonnull %3) #6
  %17 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #6
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttyport_wait_until_sent(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.serport, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @tty_wait_until_sent(ptr noundef %10, i32 noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_get_tiocm(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tty_operations, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 %13(ptr noundef %9) #6
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %16, %15 ], [ -524, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_set_tiocm(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = tail call i32 %15(ptr noundef %11, i32 noundef %1, i32 noundef %2) #6
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i32 [ %18, %17 ], [ -524, %8 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_init_dev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_termios(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_release_struct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttyport_receive_buf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = getelementptr inbounds %struct.serport, ptr %12, i32 0, i32 4
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.serdev_controller, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.serdev_device, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef nonnull %19, ptr noundef %1, i32 noundef %3) #6
  br label %28

28:                                               ; preds = %26, %21, %17
  %29 = phi i32 [ %27, %26 ], [ 0, %21 ], [ 0, %17 ]
  %30 = icmp slt i32 %29, 0
  %31 = icmp ugt i32 %29, %3
  %32 = or i1 %30, %31
  %33 = load i1, ptr @ttyport_receive_buf.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %45, !prof !8

36:                                               ; preds = %28
  store i1 true, ptr @ttyport_receive_buf.__already_done, align 1
  %37 = tail call ptr @dev_driver_string(ptr noundef %6) #6
  %38 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %39, %36 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %37, ptr noundef %44, i32 noundef %29, i32 noundef %3) #6
  br label %45

45:                                               ; preds = %43, %28
  %46 = tail call i32 @llvm.umin.i32(i32 %29, i32 %3)
  %47 = select i1 %30, i32 0, i32 %46
  br label %48

48:                                               ; preds = %45, %11
  %49 = phi i32 [ 0, %11 ], [ %47, %45 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttyport_write_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = tail call ptr @tty_port_tty_get(ptr noundef %0) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 16
  %14 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.serdev_device, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.serdev_device_ops, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void %29(ptr noundef nonnull %23) #6
  br label %32

32:                                               ; preds = %31, %25, %21, %16, %12
  %33 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %33, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  tail call void @tty_kref_put(ptr noundef nonnull %10) #6
  br label %34

34:                                               ; preds = %32, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
