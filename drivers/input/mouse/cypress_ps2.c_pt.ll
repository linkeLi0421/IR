; ModuleID = '/llk/IR/drivers/input/mouse/cypress_ps2.c_pt.bc'
source_filename = "../drivers/input/mouse/cypress_ps2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cytp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.cytp_report_data = type { i32, [2 x %struct.cytp_contact], i8 }
%struct.cytp_contact = type { i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@.str = private unnamed_addr constant [8 x i8] c"Cypress\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Trackpad\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cypress_ps2: Unable to query Trackpad hardware.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"cypress_ps2: init: Unable to initialize Cypress absolute mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cypress_ps2: init: Unable to set input params.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"cypress_ps2: Reconnect: unable to detect trackpad.\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"cypress_ps2: Reconnect: Unable to initialize Cypress absolute mode.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cypress_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %4 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load i8, ptr %3, align 1
  %8 = icmp ne i8 %7, 51
  %9 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp ne i8 %10, -52
  %12 = select i1 %8, i1 true, i1 %11
  %13 = xor i1 %1, true
  %14 = or i1 %12, %13
  %15 = select i1 %12, i32 -19, i32 0
  br i1 %14, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str, ptr %17, align 4
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.1, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %6, %2
  %20 = phi i32 [ -19, %2 ], [ %15, %6 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #8
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = and i8 %1, 3
  %6 = lshr i8 %1, 2
  %7 = and i8 %6, 3
  %8 = lshr i8 %1, 4
  %9 = and i8 %8, 3
  %10 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 18
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %13 = icmp eq i8 %1, 1
  %14 = select i1 %13, i32 8, i32 3
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, i32 2
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %17 = icmp ult i8 %1, 2
  %18 = getelementptr i8, ptr %2, i32 1
  %19 = getelementptr i8, ptr %2, i32 2
  br label %20

20:                                               ; preds = %69, %3
  %21 = phi i32 [ 3, %3 ], [ %70, %69 ]
  call fastcc void @cypress_ps2_ext_cmd(ptr noundef %0, i8 noundef zeroext %5)
  call fastcc void @cypress_ps2_ext_cmd(ptr noundef %0, i8 noundef zeroext %7)
  call fastcc void @cypress_ps2_ext_cmd(ptr noundef %0, i8 noundef zeroext %9)
  call fastcc void @cypress_ps2_ext_cmd(ptr noundef %0, i8 noundef zeroext 0)
  call void @ps2_begin_command(ptr noundef %10) #8
  %22 = load i32, ptr %11, align 4
  store i32 3, ptr %11, align 4
  store i8 0, ptr %12, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %2, i8 0, i32 %14, i1 false) #8
  %23 = call i32 @ps2_sendbyte(ptr noundef %10, i8 noundef zeroext -23, i32 noundef 200) #8
  %24 = icmp slt i32 %23, 0
  %25 = load i8, ptr %12, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ugt i32 %14, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #8, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #8
  %29 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 2) #8
  %30 = load i8, ptr %12, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ugt i32 %14, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %33, %28
  %34 = phi i32 [ %43, %33 ], [ 20, %28 ]
  %35 = call i32 @schedule_timeout(i32 noundef %34) #8
  %36 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 2) #8
  %37 = load i8, ptr %12, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ule i32 %14, %38
  %40 = xor i1 %39, true
  %41 = icmp ne i32 %35, 0
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, i32 %35, i32 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %39, i1 true, i1 %44
  br i1 %45, label %46, label %33

46:                                               ; preds = %33, %28
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %47

47:                                               ; preds = %46, %20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %2, ptr noundef align 4 dereferenceable(3) %16, i32 %14, i1 false) #8
  store i32 %22, ptr %11, align 4
  store i8 0, ptr %12, align 1
  call void @ps2_end_command(ptr noundef %10) #8
  br i1 %24, label %69, label %48

48:                                               ; preds = %47
  br i1 %17, label %72, label %49

49:                                               ; preds = %48
  %50 = load i8, ptr %2, align 1
  %51 = and i8 %50, -56
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i8, ptr %18, align 1
  %55 = load i8, ptr %19, align 1
  %56 = icmp eq i8 %55, 10
  %57 = icmp eq i8 %55, 20
  %58 = or i1 %57, %56
  %59 = icmp eq i8 %55, 40
  %60 = or i1 %59, %58
  %61 = icmp eq i8 %55, 60
  %62 = icmp eq i8 %55, 100
  %63 = or i1 %62, %61
  %64 = icmp eq i8 %55, -56
  %65 = or i1 %64, %63
  %66 = select i1 %65, i1 true, i1 %60
  %67 = icmp ult i8 %54, 4
  %68 = select i1 %67, i1 %66, i1 false
  br i1 %68, label %72, label %69

69:                                               ; preds = %53, %49, %47
  %70 = add nsw i32 %21, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %20

72:                                               ; preds = %69, %53, %48
  %73 = phi i32 [ -5, %69 ], [ 0, %48 ], [ 0, %53 ]
  ret i32 %73
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cypress_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [8 x i8], align 8
  %4 = alloca [3 x i8], align 1
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 48) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %191, label %8

8:                                                ; preds = %1
  store ptr %6, ptr %0, align 4
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 2
  store i32 0, ptr %10, align 8
  %11 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  %12 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false) #8, !annotation !8
  %13 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %4) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load i8, ptr %4, align 1
  %17 = icmp ne i8 %16, 51
  %18 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp ne i8 %19, -52
  %21 = select i1 %17, i1 true, i1 %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #8
  br label %183

23:                                               ; preds = %15
  %24 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 127
  %27 = zext i8 %26 to i32
  store i32 %27, ptr %12, align 4
  %28 = lshr i8 %25, 7
  %29 = getelementptr inbounds %struct.cytp_data, ptr %12, i32 0, i32 11
  %30 = icmp ugt i8 %26, 10
  %31 = select i1 %30, i8 0, i8 %28
  %32 = zext i8 %31 to i32
  store i32 %32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #8
  %33 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %34 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 5
  store i32 97, ptr %34, align 4
  %35 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 6
  store i32 59, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 7
  store i32 1600, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 8
  store i32 900, ptr %37, align 4
  %38 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 3
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 4
  store i32 255, ptr %39, align 4
  %40 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 9
  store i32 16, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 10
  store i32 15, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %98, label %45

45:                                               ; preds = %23
  store i64 0, ptr %3, align 8
  %46 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %3) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = load i8, ptr %3, align 8
  %54 = zext i8 %53 to i32
  %55 = or i32 %52, %54
  store i32 %55, ptr %36, align 4
  %56 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  store i32 %63, ptr %37, align 4
  %64 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  store i32 %66, ptr %38, align 4
  %67 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, ptr %39, align 4
  br label %72

70:                                               ; preds = %45
  %71 = load i32, ptr %39, align 4
  br label %72

72:                                               ; preds = %70, %48
  %73 = phi i32 [ %71, %70 ], [ %69, %48 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %38, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %97, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %34, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %35, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %36, align 4
  %86 = icmp eq i32 %85, 0
  %87 = icmp slt i32 %85, %79
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %37, align 4
  %91 = icmp eq i32 %90, 0
  %92 = icmp slt i32 %90, %82
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = sdiv i32 %85, %79
  store i32 %95, ptr %40, align 4
  %96 = sdiv i32 %90, %82
  store i32 %96, ptr %41, align 4
  br label %98

97:                                               ; preds = %89, %84, %81, %78, %75, %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %183

98:                                               ; preds = %94, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %99 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false) #8, !annotation !8
  %100 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 17, ptr noundef nonnull %2) #8
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #8
  br label %183

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.cytp_data, ptr %99, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -16
  %107 = or i32 %106, 8
  store i32 %107, ptr %104, align 4
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.cytp_data, ptr %108, i32 0, i32 1
  store i32 5, ptr %109, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #8
  %110 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 9
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %183, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 10
  %117 = load i32, ptr %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %183, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, 8
  store i32 %122, ptr %120, align 4
  %123 = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 7
  %124 = load i32, ptr %123, align 4
  tail call void @input_set_abs_params(ptr noundef %111, i32 noundef 0, i32 noundef 0, i32 noundef %124, i32 noundef 0, i32 noundef 0) #8
  %125 = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 8
  %126 = load i32, ptr %125, align 8
  tail call void @input_set_abs_params(ptr noundef %111, i32 noundef 1, i32 noundef 0, i32 noundef %126, i32 noundef 0, i32 noundef 0) #8
  %127 = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 4
  %130 = load i32, ptr %129, align 8
  tail call void @input_set_abs_params(ptr noundef %111, i32 noundef 24, i32 noundef %128, i32 noundef %130, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %111, i32 noundef 28, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %131 = load i32, ptr %123, align 4
  tail call void @input_set_abs_params(ptr noundef %111, i32 noundef 53, i32 noundef 0, i32 noundef %131, i32 noundef 0, i32 noundef 0) #8
  %132 = load i32, ptr %125, align 8
  tail call void @input_set_abs_params(ptr noundef %111, i32 noundef 54, i32 noundef 0, i32 noundef %132, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %111, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %133 = tail call i32 @input_mt_init_slots(ptr noundef %111, i32 noundef 2, i32 noundef 12) #8
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %183, label %135

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %137, 8
  store i32 %138, ptr %136, align 4
  %139 = load i32, ptr %112, align 4
  tail call void @input_alloc_absinfo(ptr noundef %111) #8
  %140 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 26
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = getelementptr %struct.input_absinfo, ptr %141, i32 0, i32 5
  store i32 %139, ptr %144, align 4
  br label %145

145:                                              ; preds = %143, %135
  %146 = load i32, ptr %116, align 8
  tail call void @input_alloc_absinfo(ptr noundef %111) #8
  %147 = load ptr, ptr %140, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = getelementptr %struct.input_absinfo, ptr %147, i32 1, i32 5
  store i32 %146, ptr %150, align 4
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, ptr %112, align 4
  tail call void @input_alloc_absinfo(ptr noundef %111) #8
  %153 = load ptr, ptr %140, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.input_absinfo, ptr %153, i32 53, i32 5
  store i32 %152, ptr %156, align 4
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32, ptr %116, align 8
  tail call void @input_alloc_absinfo(ptr noundef %111) #8
  %159 = load ptr, ptr %140, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = getelementptr %struct.input_absinfo, ptr %159, i32 54, i32 5
  store i32 %158, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %157
  %164 = getelementptr %struct.input_dev, ptr %111, i32 0, i32 6, i32 10
  %165 = load i32, ptr %164, align 4
  %166 = or i32 %165, 58656
  store i32 %166, ptr %164, align 4
  %167 = load i32, ptr %120, align 4
  %168 = and i32 %167, -7
  %169 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 7
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, -4
  store i32 %171, ptr %169, align 4
  %172 = or i32 %168, 2
  store i32 %172, ptr %120, align 4
  %173 = getelementptr %struct.input_dev, ptr %111, i32 0, i32 6, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = or i32 %174, 458752
  store i32 %175, ptr %173, align 4
  %176 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 14
  store i32 1, ptr %176, align 4
  %177 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @cypress_protocol_handler, ptr %177, align 4
  %178 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @cypress_set_rate, ptr %178, align 4
  %179 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @cypress_disconnect, ptr %179, align 4
  %180 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @cypress_reconnect, ptr %180, align 4
  %181 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 33
  store ptr @cypress_reset, ptr %181, align 4
  %182 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  store i32 0, ptr %182, align 4
  br label %191

183:                                              ; preds = %119, %115, %103, %102, %97, %22
  %184 = phi ptr [ @.str.3, %102 ], [ @.str.2, %97 ], [ @.str.2, %22 ], [ @.str.4, %115 ], [ @.str.4, %103 ], [ @.str.4, %119 ]
  %185 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.serio, ptr %186, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull %184) #10
  %188 = load ptr, ptr %0, align 4
  %189 = getelementptr inbounds %struct.cytp_data, ptr %188, i32 0, i32 2
  store i32 0, ptr %189, align 4
  %190 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  store ptr null, ptr %0, align 4
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %191

191:                                              ; preds = %183, %163, %1
  %192 = phi i32 [ -1, %183 ], [ 0, %163 ], [ -12, %1 ]
  ret i32 %192
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cypress_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.cytp_data, ptr %2, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %4 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cypress_protocol_handler(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.cytp_data, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %5
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @cypress_process_packet(ptr noundef %0)
  br label %51

10:                                               ; preds = %1
  %11 = add nsw i32 %5, -1
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %13 = icmp eq i8 %4, 0
  %14 = icmp sgt i32 %11, %7
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %51, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %16
  %19 = load i8, ptr %12, align 1
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call fastcc void @cypress_process_packet(ptr noundef %0) #8
  br label %51

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cytp_data, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  %28 = and i8 %19, 8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = lshr i8 %19, 6
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32
  %35 = and i8 %19, 32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = icmp eq i8 %31, 2
  %39 = select i1 %38, i32 5, i32 0
  %40 = icmp ult i8 %19, 64
  %41 = select i1 %40, i32 4, i32 %39
  br label %42

42:                                               ; preds = %37, %33, %30
  %43 = phi i32 [ 1, %30 ], [ %41, %37 ], [ %34, %33 ]
  %44 = and i32 %24, 4
  %45 = icmp eq i32 %44, 0
  %46 = icmp eq i32 %43, 2
  br i1 %45, label %49, label %47

47:                                               ; preds = %42
  %48 = select i1 %46, i32 7, i32 4
  store i32 %48, ptr %6, align 4
  br label %51

49:                                               ; preds = %42
  %50 = select i1 %46, i32 8, i32 5
  store i32 %50, ptr %6, align 4
  br label %51

51:                                               ; preds = %49, %47, %27, %22, %21, %16, %10, %9
  %52 = phi i32 [ 2, %9 ], [ 2, %21 ], [ 0, %10 ], [ 1, %16 ], [ 1, %22 ], [ 0, %27 ], [ 1, %49 ], [ 1, %47 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cypress_set_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp ugt i32 %1, 79
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  br i1 %4, label %6, label %10

6:                                                ; preds = %2
  store i32 80, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 16
  store i32 %9, ptr %7, align 4
  br label %14

10:                                               ; preds = %2
  store i32 40, ptr %5, align 4
  %11 = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -17
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  %17 = tail call i32 @ps2_command(ptr noundef %15, ptr noundef %16, i32 noundef 4339) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cypress_disconnect(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.cytp_data, ptr %2, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %4 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  %5 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %5) #8
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cypress_reconnect(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #8, !annotation !8
  %8 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i8, ptr %3, align 1
  %12 = icmp eq i8 %11, 51
  %13 = load i8, ptr %4, align 1
  %14 = icmp eq i8 %13, -52
  %15 = select i1 %12, i1 %14, i1 false
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ false, %1 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #8
  br i1 %17, label %46, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.cytp_data, ptr %19, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %21 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #8, !annotation !8
  %22 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8, ptr %3, align 1
  %26 = icmp eq i8 %25, 51
  %27 = load i8, ptr %4, align 1
  %28 = icmp eq i8 %27, -52
  %29 = select i1 %26, i1 %28, i1 false
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #8
  br i1 %31, label %46, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = tail call i32 @psmouse_reset(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #8, !annotation !8
  %36 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i8, ptr %3, align 1
  %40 = icmp eq i8 %39, 51
  %41 = load i8, ptr %4, align 1
  %42 = icmp eq i8 %41, -52
  %43 = select i1 %40, i1 %42, i1 false
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ false, %32 ], [ %43, %38 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #8
  br label %46

46:                                               ; preds = %44, %30, %16
  %47 = phi i1 [ %17, %16 ], [ %31, %30 ], [ %45, %44 ]
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.serio, ptr %50, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.5) #10
  br label %67

52:                                               ; preds = %46
  %53 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false) #8, !annotation !8
  %54 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 17, ptr noundef nonnull %2) #8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.cytp_data, ptr %53, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, -16
  %60 = or i32 %59, 8
  store i32 %60, ptr %57, align 4
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr inbounds %struct.cytp_data, ptr %61, i32 0, i32 1
  store i32 5, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #8
  br label %67

63:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #8
  %64 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.serio, ptr %65, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.6) #10
  br label %67

67:                                               ; preds = %63, %56, %48
  %68 = phi i32 [ -1, %48 ], [ -1, %63 ], [ 0, %56 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cypress_ps2_ext_cmd(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  tail call void @ps2_begin_command(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, i32 6
  br label %5

5:                                                ; preds = %46, %2
  %6 = phi i32 [ 3, %2 ], [ %47, %46 ]
  %7 = tail call i32 @ps2_sendbyte(ptr noundef %3, i8 noundef zeroext -24, i32 noundef 200) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i8, ptr %4, align 1
  %11 = icmp eq i8 %10, -2
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = tail call i32 @ps2_sendbyte(ptr noundef %3, i8 noundef zeroext 0, i32 noundef 200) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i8, ptr %4, align 1
  %17 = icmp eq i8 %16, -2
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = tail call i32 @ps2_sendbyte(ptr noundef %3, i8 noundef zeroext 10, i32 noundef 200) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8, ptr %4, align 1
  %23 = icmp eq i8 %22, -2
  br i1 %23, label %24, label %43

24:                                               ; preds = %21, %18, %12, %5
  %25 = tail call i32 @ps2_sendbyte(ptr noundef %3, i8 noundef zeroext %1, i32 noundef 200) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i8, ptr %4, align 1
  %29 = icmp eq i8 %28, -2
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = tail call i32 @ps2_sendbyte(ptr noundef %3, i8 noundef zeroext %1, i32 noundef 200) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i8, ptr %4, align 1
  %35 = icmp eq i8 %34, -2
  %36 = select i1 %35, i32 254, i32 252
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %36, %33 ], [ 252, %27 ]
  %39 = icmp eq i32 %38, 252
  %40 = add nsw i32 %6, -1
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %46, label %48

43:                                               ; preds = %21, %15, %9
  %44 = add i32 %6, -1
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %44, %43 ], [ %40, %37 ]
  br label %5

48:                                               ; preds = %43, %37, %30, %24
  tail call void @ps2_end_command(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_begin_command(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_end_command(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sendbyte(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cypress_process_packet(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.cytp_report_data, align 4
  %3 = alloca [2 x %struct.input_mt_pos], align 8
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %9 = load i8, ptr %8, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #8
  %10 = lshr i8 %9, 6
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  store i32 1, ptr %2, align 4
  %13 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 2
  %14 = shl i8 %9, 1
  %15 = and i8 %14, 8
  store i8 %15, ptr %13, align 4
  br label %34

16:                                               ; preds = %1
  %17 = zext i8 %10 to i32
  %18 = and i8 %9, 32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = icmp eq i8 %10, 2
  %22 = select i1 %21, i32 5, i32 0
  %23 = icmp ult i8 %9, 64
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  store i32 4, ptr %2, align 4
  %25 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 2
  %26 = shl nuw nsw i8 %9, 1
  %27 = and i8 %26, 8
  store i8 %27, ptr %25, align 4
  br label %64

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %17, %16 ], [ %22, %20 ]
  store i32 %29, ptr %2, align 4
  %30 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 2
  %31 = shl i8 %9, 1
  %32 = and i8 %31, 8
  store i8 %32, ptr %30, align 4
  %33 = trunc i32 %29 to i8
  switch i8 %33, label %64 [
    i8 1, label %34
    i8 0, label %119
  ]

34:                                               ; preds = %28, %12
  %35 = phi i8 [ %15, %12 ], [ %32, %28 ]
  %36 = phi ptr [ %13, %12 ], [ %30, %28 ]
  %37 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 112
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 4
  %42 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = and i8 %38, 7
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.cytp_data, ptr %7, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %119, label %59

59:                                               ; preds = %34
  %60 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  br label %119

64:                                               ; preds = %28, %24
  %65 = phi i8 [ %27, %24 ], [ %32, %28 ]
  %66 = phi ptr [ %25, %24 ], [ %30, %28 ]
  %67 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 112
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 4
  %72 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %71, %74
  %76 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  %77 = and i8 %68, 7
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.cytp_data, ptr %7, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %64
  %90 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %89, %64
  %95 = phi i32 [ %92, %89 ], [ 0, %64 ]
  %96 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, -16
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 4
  %101 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 6
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %100, %103
  %105 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1
  store i32 %104, ptr %105, align 4
  %106 = and i8 %97, 15
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 8
  %109 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 7
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %108, %111
  %113 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1, i32 1
  store i32 %112, ptr %113, align 4
  %114 = load i32, ptr %85, align 4
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %94
  %118 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1, i32 2
  store i32 %95, ptr %118, align 4
  br label %119

119:                                              ; preds = %117, %94, %59, %34, %28
  %120 = phi i8 [ %32, %28 ], [ %65, %117 ], [ %65, %94 ], [ %35, %34 ], [ %35, %59 ]
  %121 = phi ptr [ %30, %28 ], [ %66, %117 ], [ %66, %94 ], [ %36, %34 ], [ %36, %59 ]
  %122 = and i8 %9, 1
  %123 = icmp eq i8 %120, 0
  %124 = select i1 %123, i8 %122, i8 0
  %125 = and i8 %9, 2
  %126 = or i8 %120, %125
  %127 = or i8 %126, %124
  store i8 %127, ptr %121, align 4
  %128 = load i32, ptr %2, align 4
  %129 = tail call i32 @llvm.smin.i32(i32 %128, i32 2)
  %130 = icmp sgt i32 %128, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %119
  %132 = call i32 @input_mt_assign_slots(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %129, i32 noundef 0) #8
  br label %174

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0
  %135 = load i32, ptr %134, align 4
  %136 = trunc i32 %135 to i16
  store i16 %136, ptr %3, align 8
  %137 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = trunc i32 %138 to i16
  %140 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %3, i32 0, i32 0, i32 1
  store i16 %139, ptr %140, align 2
  %141 = icmp slt i32 %128, 2
  br i1 %141, label %152, label %142

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = trunc i32 %144 to i16
  %146 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %3, i32 0, i32 1
  store i16 %145, ptr %146, align 4
  %147 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = trunc i32 %148 to i16
  %150 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %3, i32 0, i32 1, i32 1
  store i16 %149, ptr %150, align 2
  %151 = call i32 @input_mt_assign_slots(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %129, i32 noundef 0) #8
  br label %154

152:                                              ; preds = %133
  %153 = call i32 @input_mt_assign_slots(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %129, i32 noundef 0) #8
  br label %154

154:                                              ; preds = %152, %142
  %155 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0
  %156 = load i32, ptr %4, align 8
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 47, i32 noundef %156) #8
  %157 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %6, i32 noundef 0, i1 noundef zeroext true) #8
  %158 = load i32, ptr %155, align 4
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 53, i32 noundef %158) #8
  %159 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 54, i32 noundef %160) #8
  %161 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 58, i32 noundef %162) #8
  %163 = icmp slt i32 %128, 2
  br i1 %163, label %174, label %164

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1
  %166 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 47, i32 noundef %167) #8
  %168 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %6, i32 noundef 0, i1 noundef zeroext true) #8
  %169 = load i32, ptr %165, align 4
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 53, i32 noundef %169) #8
  %170 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1, i32 1
  %171 = load i32, ptr %170, align 4
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 54, i32 noundef %171) #8
  %172 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 1, i32 1, i32 2
  %173 = load i32, ptr %172, align 4
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 58, i32 noundef %173) #8
  br label %174

174:                                              ; preds = %164, %154, %131
  call void @input_mt_sync_frame(ptr noundef %6) #8
  %175 = load i32, ptr %2, align 4
  call void @input_mt_report_finger_count(ptr noundef %6, i32 noundef %175) #8
  %176 = getelementptr inbounds %struct.cytp_report_data, ptr %2, i32 0, i32 2
  %177 = load i8, ptr %176, align 4
  %178 = and i8 %177, 1
  %179 = zext i8 %178 to i32
  call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef 272, i32 noundef %179) #8
  %180 = load i8, ptr %176, align 4
  %181 = lshr i8 %180, 1
  %182 = and i8 %181, 1
  %183 = zext i8 %182 to i32
  call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef 273, i32 noundef %183) #8
  %184 = load i8, ptr %176, align 4
  %185 = lshr i8 %184, 2
  %186 = and i8 %185, 1
  %187 = zext i8 %186 to i32
  call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef 274, i32 noundef %187) #8
  call void @input_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
