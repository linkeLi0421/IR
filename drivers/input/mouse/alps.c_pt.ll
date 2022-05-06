; ModuleID = '/llk/IR/drivers/input/mouse/alps.c_pt.bc'
source_filename = "../drivers/input/mouse/alps.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.alps_protocol_info = type { i16, i8, i8, i32 }
%struct.alps_model_info = type { [3 x i8], %struct.alps_protocol_info }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.alps_nibble_commands = type { i32, i8 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.alps_data = type { ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.delayed_work, ptr, i32, i16, i8, i8, [3 x i8], [3 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, [6 x i8], %struct.alps_fields, i8, %struct.timer_list }
%struct.alps_fields = type { i32, i32, i32, i32, %struct.input_mt_pos, [4 x %struct.input_mt_pos], i8 }
%struct.input_mt_pos = type { i16, i16 }
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
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.alps_bitmap_point = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"alps: failed to allocate trackstick device\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"AlpsPS/2 ALPS DualPoint Stick\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"alps: failed to register trackstick device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ALPS\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"DualPoint TouchPad\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"GlidePoint\00", align 1
@alps_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @alps_mutex, i64 12), ptr getelementptr (i8, ptr @alps_mutex, i64 12) } }, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"alps: failed to allocate secondary device\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"input2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"input1\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"PS/2 ALPS Mouse\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"alps: failed to register secondary device: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@alps_v4_protocol_data = internal constant %struct.alps_protocol_info { i16 1024, i8 -113, i8 -113, i32 0 }, align 4
@alps_v5_protocol_data = internal constant %struct.alps_protocol_info { i16 1280, i8 -56, i8 -40, i32 0 }, align 4
@alps_v7_protocol_data = internal constant %struct.alps_protocol_info { i16 1792, i8 72, i8 72, i32 1026 }, align 4
@alps_v3_rushmore_data = internal constant %struct.alps_protocol_info { i16 784, i8 -113, i8 -113, i32 1026 }, align 4
@alps_v3_protocol_data = internal constant %struct.alps_protocol_info { i16 768, i8 -113, i8 -113, i32 1026 }, align 4
@alps_v8_protocol_data = internal constant %struct.alps_protocol_info { i16 2048, i8 24, i8 24, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [54 x i8] c"alps: Unsupported ALPS V9 touchpad: E7=%3ph, EC=%3ph\0A\00", align 1
@alps_model_data = internal constant [22 x %struct.alps_model_info] [%struct.alps_model_info { [3 x i8] c" \02\0E", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"\22\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"\22\02\14", %struct.alps_protocol_info { i16 512, i8 -1, i8 -1, i32 6 } }, %struct.alps_model_info { [3 x i8] c"2\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"3\02\0A", %struct.alps_protocol_info { i16 256, i8 -120, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"R\01\14", %struct.alps_protocol_info { i16 512, i8 -1, i8 -1, i32 134 } }, %struct.alps_model_info { [3 x i8] c"S\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"S\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"`\03\C8", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"b\02\14", %struct.alps_protocol_info { i16 512, i8 -49, i8 -49, i32 134 } }, %struct.alps_model_info { [3 x i8] c"c\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"c\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"c\02(", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 32 } }, %struct.alps_model_info { [3 x i8] c"c\02<", %struct.alps_protocol_info { i16 512, i8 -113, i8 -113, i32 8 } }, %struct.alps_model_info { [3 x i8] c"c\02P", %struct.alps_protocol_info { i16 512, i8 -17, i8 -17, i32 16 } }, %struct.alps_model_info { [3 x i8] c"c\02d", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"c\03\C8", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"s\00\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 2 } }, %struct.alps_model_info { [3 x i8] c"s\00\14", %struct.alps_protocol_info { i16 1536, i8 -1, i8 -1, i32 2 } }, %struct.alps_model_info { [3 x i8] c"s\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"s\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 32 } }, %struct.alps_model_info { [3 x i8] c"s\02P", %struct.alps_protocol_info { i16 512, i8 -49, i8 -49, i32 64 } }], align 4
@alps_dmi_has_separate_stick_buttons = internal constant [1 x %struct.dmi_system_id] zeroinitializer, align 4
@alps_v3_nibble_commands = internal constant [16 x %struct.alps_nibble_commands] [%struct.alps_nibble_commands { i32 240, i8 0 }, %struct.alps_nibble_commands { i32 246, i8 0 }, %struct.alps_nibble_commands { i32 231, i8 0 }, %struct.alps_nibble_commands { i32 4339, i8 10 }, %struct.alps_nibble_commands { i32 4339, i8 20 }, %struct.alps_nibble_commands { i32 4339, i8 40 }, %struct.alps_nibble_commands { i32 4339, i8 60 }, %struct.alps_nibble_commands { i32 4339, i8 80 }, %struct.alps_nibble_commands { i32 4339, i8 100 }, %struct.alps_nibble_commands { i32 4339, i8 -56 }, %struct.alps_nibble_commands { i32 498, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 1 }, %struct.alps_nibble_commands { i32 4328, i8 2 }, %struct.alps_nibble_commands { i32 4328, i8 3 }, %struct.alps_nibble_commands { i32 230, i8 0 }], align 4
@alps_v4_nibble_commands = internal constant [16 x %struct.alps_nibble_commands] [%struct.alps_nibble_commands { i32 244, i8 0 }, %struct.alps_nibble_commands { i32 246, i8 0 }, %struct.alps_nibble_commands { i32 231, i8 0 }, %struct.alps_nibble_commands { i32 4339, i8 10 }, %struct.alps_nibble_commands { i32 4339, i8 20 }, %struct.alps_nibble_commands { i32 4339, i8 40 }, %struct.alps_nibble_commands { i32 4339, i8 60 }, %struct.alps_nibble_commands { i32 4339, i8 80 }, %struct.alps_nibble_commands { i32 4339, i8 100 }, %struct.alps_nibble_commands { i32 4339, i8 -56 }, %struct.alps_nibble_commands { i32 498, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 1 }, %struct.alps_nibble_commands { i32 4328, i8 2 }, %struct.alps_nibble_commands { i32 4328, i8 3 }, %struct.alps_nibble_commands { i32 230, i8 0 }], align 4
@alps_v6_nibble_commands = internal constant [16 x %struct.alps_nibble_commands] [%struct.alps_nibble_commands { i32 244, i8 0 }, %struct.alps_nibble_commands { i32 4339, i8 10 }, %struct.alps_nibble_commands { i32 4339, i8 20 }, %struct.alps_nibble_commands { i32 4339, i8 40 }, %struct.alps_nibble_commands { i32 4339, i8 60 }, %struct.alps_nibble_commands { i32 4339, i8 80 }, %struct.alps_nibble_commands { i32 4339, i8 100 }, %struct.alps_nibble_commands { i32 4339, i8 -56 }, %struct.alps_nibble_commands { i32 754, i8 0 }, %struct.alps_nibble_commands { i32 1001, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 1 }, %struct.alps_nibble_commands { i32 4328, i8 2 }, %struct.alps_nibble_commands { i32 4328, i8 3 }, %struct.alps_nibble_commands { i32 231, i8 0 }, %struct.alps_nibble_commands { i32 230, i8 0 }], align 4
@.str.14 = private unnamed_addr constant [41 x i8] c"alps: Failed to enable hardware tapping\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"alps: Failed to enable absolute mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"alps: Failed to enable stream mode\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"alps: Failed to enter absolute mode\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"alps: Failed to enable data reporting\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"alps: Failed to initialize trackstick (E7 report failed)\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"alps: Failed to enter into trackstick extended mode\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"alps: failed to enter command mode\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"alps: Rejected trackstick packet from non DualPoint device\00", align 1
@alps_process_packet_v4.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"drivers/input/mouse/alps.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alps_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %120

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -15
  %13 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 6
  %17 = getelementptr %struct.input_dev, ptr %4, i32 0, i32 6, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 1056
  store i32 %19, ptr %17, align 4
  %20 = getelementptr %struct.input_dev, ptr %4, i32 0, i32 6, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 196608
  store i32 %22, ptr %20, align 4
  %23 = or i32 %12, 10
  store i32 %23, ptr %10, align 8
  %24 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 23
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %2, ptr noundef %4) #16
  %26 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %9
  %31 = load i32, ptr %10, align 8
  %32 = or i32 %31, 4
  store i32 %32, ptr %10, align 8
  %33 = load i32, ptr %13, align 4
  %34 = or i32 %33, 256
  store i32 %34, ptr %13, align 4
  %35 = load i32, ptr %26, align 4
  br label %36

36:                                               ; preds = %30, %9
  %37 = phi i32 [ %35, %30 ], [ %27, %9 ]
  %38 = and i32 %37, 48
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %20, align 4
  %42 = or i32 %41, 6291456
  store i32 %42, ptr %20, align 4
  %43 = load i32, ptr %26, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %43, %40 ], [ %37, %36 ]
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %20, align 4
  %50 = or i32 %49, 15
  store i32 %50, ptr %20, align 4
  br label %59

51:                                               ; preds = %44
  %52 = and i32 %45, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %55) #16
  tail call void @_clear_bit(i32 noundef 273, ptr noundef %16) #16
  br label %59

56:                                               ; preds = %51
  %57 = load i32, ptr %20, align 4
  %58 = or i32 %57, 262144
  store i32 %58, ptr %20, align 4
  br label %59

59:                                               ; preds = %56, %54, %48
  %60 = load i32, ptr %26, align 4
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %101, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @input_allocate_device() #16
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.serio, ptr %68, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str) #17
  br label %120

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 3
  %72 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.serio, ptr %73, i32 0, i32 2
  %75 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %71, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %74)
  %76 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 1
  store ptr %71, ptr %76, align 4
  store ptr @.str.2, ptr %64, align 8
  %77 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 3
  store i16 17, ptr %77, align 4
  %78 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 3, i32 1
  store i16 2, ptr %78, align 2
  %79 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 3, i32 2
  store i16 8, ptr %79, align 4
  %80 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 8
  %81 = load i16, ptr %80, align 4
  %82 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 3, i32 3
  store i16 %81, ptr %82, align 2
  %83 = load ptr, ptr %72, align 4
  %84 = getelementptr inbounds %struct.serio, ptr %83, i32 0, i32 18
  %85 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 40, i32 1
  store ptr %84, ptr %85, align 4
  tail call void @input_set_capability(ptr noundef nonnull %64, i32 noundef 2, i32 noundef 0) #16
  tail call void @input_set_capability(ptr noundef nonnull %64, i32 noundef 2, i32 noundef 1) #16
  %86 = load i32, ptr %26, align 4
  %87 = and i32 %86, 1024
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %70
  tail call void @input_set_capability(ptr noundef nonnull %64, i32 noundef 3, i32 noundef 24) #16
  tail call void @input_set_abs_params(ptr noundef nonnull %64, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #16
  br label %90

90:                                               ; preds = %89, %70
  tail call void @input_set_capability(ptr noundef nonnull %64, i32 noundef 1, i32 noundef 272) #16
  tail call void @input_set_capability(ptr noundef nonnull %64, i32 noundef 1, i32 noundef 273) #16
  tail call void @input_set_capability(ptr noundef nonnull %64, i32 noundef 1, i32 noundef 274) #16
  %91 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 33
  store i32 %93, ptr %91, align 4
  %94 = tail call i32 @input_register_device(ptr noundef nonnull %64) #16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %72, align 4
  %98 = getelementptr inbounds %struct.serio, ptr %97, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.3, i32 noundef %94) #17
  tail call void @input_free_device(ptr noundef nonnull %64) #16
  br label %120

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 1
  store ptr %64, ptr %100, align 4
  br label %101

101:                                              ; preds = %99, %59
  store ptr %0, ptr %2, align 4
  %102 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 5
  store i32 -32, ptr %102, align 4
  %103 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %103, ptr %103, align 4
  %104 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 5, i32 0, i32 2
  store ptr @alps_register_bare_ps2_mouse, ptr %105, align 4
  %106 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %106, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %107 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @alps_process_byte, ptr %107, align 4
  %108 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  store ptr @alps_poll, ptr %108, align 4
  %109 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @alps_disconnect, ptr %109, align 4
  %110 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @alps_reconnect, ptr %110, align 4
  %111 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 8
  %112 = load i16, ptr %111, align 4
  %113 = icmp eq i16 %112, 1024
  %114 = select i1 %113, i8 8, i8 6
  %115 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 %114, ptr %115, align 2
  %116 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  store i32 0, ptr %116, align 4
  %117 = shl nuw nsw i8 %114, 1
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 23
  store i32 %118, ptr %119, align 4
  br label %124

120:                                              ; preds = %96, %66, %1
  %121 = phi i32 [ %7, %1 ], [ -12, %66 ], [ %94, %96 ]
  %122 = tail call i32 @psmouse_reset(ptr noundef %0) #16
  %123 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %123) #16
  store ptr null, ptr %0, align 4
  br label %124

124:                                              ; preds = %120, %101
  %125 = phi i32 [ %121, %120 ], [ 0, %101 ]
  ret i32 %125
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_register_bare_ps2_mouse(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -76
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @alps_mutex) #16
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = tail call ptr @input_allocate_device() #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #17
  br label %41

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 -32
  %16 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 2
  %19 = getelementptr i8, ptr %0, i32 -72
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.10, ptr @.str.9
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %18, ptr noundef nonnull %22)
  %24 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 1
  store ptr %15, ptr %24, align 4
  store ptr @.str.11, ptr %8, align 8
  %25 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3
  store i16 17, ptr %25, align 4
  %26 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3, i32 1
  store i16 2, ptr %26, align 2
  %27 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3, i32 2
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3, i32 3
  store i16 0, ptr %28, align 2
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 18
  %31 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 40, i32 1
  store ptr %30, ptr %31, align 4
  tail call void @input_set_capability(ptr noundef nonnull %8, i32 noundef 2, i32 noundef 0) #16
  tail call void @input_set_capability(ptr noundef nonnull %8, i32 noundef 2, i32 noundef 1) #16
  tail call void @input_set_capability(ptr noundef nonnull %8, i32 noundef 1, i32 noundef 272) #16
  tail call void @input_set_capability(ptr noundef nonnull %8, i32 noundef 1, i32 noundef 273) #16
  tail call void @input_set_capability(ptr noundef nonnull %8, i32 noundef 1, i32 noundef 274) #16
  %32 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = tail call i32 @input_register_device(ptr noundef nonnull %8) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %14
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.12, i32 noundef %35) #17
  tail call void @input_free_device(ptr noundef nonnull %8) #16
  %40 = inttoptr i32 %35 to ptr
  br label %41

41:                                               ; preds = %37, %14, %10
  %42 = phi ptr [ %8, %14 ], [ %40, %37 ], [ inttoptr (i32 -12 to ptr), %10 ]
  store ptr %42, ptr %4, align 4
  br label %43

43:                                               ; preds = %41, %1
  tail call void @mutex_unlock(ptr noundef nonnull @alps_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_process_byte(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 8
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 2048
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -56
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 3
  br i1 %18, label %19, label %197

19:                                               ; preds = %15
  %20 = icmp eq i16 %4, 512
  br i1 %20, label %21, label %31

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 1
  %28 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %27, align 4
  br label %40

31:                                               ; preds = %21, %19
  %32 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %40, !prof !8

37:                                               ; preds = %31
  br i1 %35, label %197, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 5
  tail call void @psmouse_queue_work(ptr noundef %0, ptr noundef %39, i32 noundef 0) #16
  br label %197

40:                                               ; preds = %31, %26
  %41 = phi ptr [ %30, %26 ], [ %33, %31 ]
  %42 = phi ptr [ %29, %26 ], [ null, %31 ]
  %43 = zext i8 %12 to i32
  %44 = and i32 %43, 1
  %45 = and i32 %43, 2
  %46 = and i32 %43, 4
  tail call fastcc void @alps_report_buttons(ptr noundef %41, ptr noundef %42, i32 noundef %44, i32 noundef %45, i32 noundef %46) #16
  tail call void @psmouse_report_standard_motion(ptr noundef %41, ptr noundef %11) #16
  tail call void @input_event(ptr noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %197

47:                                               ; preds = %10, %6, %1
  %48 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 13
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %125, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %54 = load i8, ptr %53, align 1
  %55 = icmp ugt i8 %54, 3
  br i1 %55, label %56, label %125

56:                                               ; preds = %52
  %57 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 15
  %60 = icmp eq i8 %59, 15
  br i1 %60, label %61, label %125

61:                                               ; preds = %56
  %62 = icmp ult i8 %54, 6
  br i1 %62, label %197, label %63

63:                                               ; preds = %61
  %64 = icmp eq i8 %54, 6
  %65 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 30
  br i1 %64, label %66, label %70

66:                                               ; preds = %63
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = add i32 %67, 2
  %69 = tail call i32 @mod_timer(ptr noundef %65, i32 noundef %68) #16
  br label %197

70:                                               ; preds = %63
  %71 = tail call i32 @del_timer(ptr noundef %65) #16
  %72 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %73 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 6
  %74 = load i8, ptr %73, align 2
  %75 = icmp sgt i8 %74, -1
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = load i8, ptr %57, align 1
  %78 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %79 = load i8, ptr %78, align 4
  %80 = or i8 %79, %77
  %81 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %82 = load i8, ptr %81, align 1
  %83 = or i8 %80, %82
  %84 = icmp sgt i8 %83, -1
  br i1 %84, label %85, label %197

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 10
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, %74
  %89 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 9
  %90 = load i8, ptr %89, align 2
  %91 = icmp eq i8 %88, %90
  br i1 %91, label %92, label %197

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 21
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %0) #16
  %95 = load i8, ptr %73, align 2
  store i8 %95, ptr %72, align 4
  br label %123

96:                                               ; preds = %70
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr inbounds %struct.alps_data, ptr %97, i32 0, i32 8
  %99 = load i16, ptr %98, align 4
  %100 = icmp eq i16 %99, 512
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.alps_data, ptr %97, i32 0, i32 13
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.alps_data, ptr %97, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  br label %118

109:                                              ; preds = %101, %96
  %110 = getelementptr inbounds %struct.alps_data, ptr %97, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  %113 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  %114 = or i1 %112, %113
  br i1 %114, label %115, label %118, !prof !8

115:                                              ; preds = %109
  br i1 %113, label %120, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.alps_data, ptr %97, i32 0, i32 5
  tail call void @psmouse_queue_work(ptr noundef %0, ptr noundef %117, i32 noundef 0) #16
  br label %120

118:                                              ; preds = %109, %106
  %119 = phi ptr [ %108, %106 ], [ %111, %109 ]
  tail call void @psmouse_report_standard_motion(ptr noundef %119, ptr noundef %57) #16
  tail call void @input_event(ptr noundef %119, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %120

120:                                              ; preds = %118, %116, %115
  %121 = load i8, ptr %73, align 2
  %122 = and i8 %121, -9
  store i8 %122, ptr %57, align 1
  br label %123

123:                                              ; preds = %120, %92
  %124 = phi i8 [ 4, %120 ], [ 1, %92 ]
  store i8 %124, ptr %53, align 1
  br label %197

125:                                              ; preds = %56, %52, %47
  %126 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %127 = load i8, ptr %126, align 4
  %128 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 10
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, %127
  %131 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 9
  %132 = load i8, ptr %131, align 2
  %133 = icmp eq i8 %130, %132
  br i1 %133, label %134, label %197

134:                                              ; preds = %125
  %135 = icmp ult i16 %4, 1280
  br i1 %135, label %136, label %155

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ugt i8 %138, 1
  br i1 %140, label %141, label %175

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %143 = load i8, ptr %142, align 2
  %144 = icmp ugt i8 %138, %143
  br i1 %144, label %175, label %145

145:                                              ; preds = %141
  %146 = add nsw i32 %139, -1
  %147 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 %146
  %148 = load i8, ptr %147, align 1
  %149 = icmp sgt i8 %148, -1
  br i1 %149, label %175, label %150

150:                                              ; preds = %145
  %151 = icmp eq i16 %4, 784
  %152 = icmp eq i8 %138, %143
  %153 = select i1 %151, i1 %152, i1 false
  %154 = select i1 %153, i32 2, i32 0
  br label %197

155:                                              ; preds = %134
  %156 = icmp eq i16 %4, 1792
  br i1 %156, label %157, label %175

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %159 = load i8, ptr %158, align 1
  switch i8 %159, label %175 [
    i8 3, label %170
    i8 4, label %160
    i8 6, label %165
  ]

160:                                              ; preds = %157
  %161 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %162 = load i8, ptr %161, align 1
  %163 = and i8 %162, 72
  %164 = icmp eq i8 %163, 72
  br i1 %164, label %175, label %197

165:                                              ; preds = %157
  %166 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %167 = load i8, ptr %166, align 1
  %168 = and i8 %167, 64
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %175, label %197

170:                                              ; preds = %157
  %171 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %172 = load i8, ptr %171, align 2
  %173 = and i8 %172, 64
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %197, label %175

175:                                              ; preds = %170, %165, %160, %157, %155, %145, %141, %136
  %176 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %177 = load i8, ptr %176, align 1
  br i1 %5, label %178, label %189

178:                                              ; preds = %175
  switch i8 %177, label %189 [
    i8 4, label %179
    i8 6, label %184
  ]

179:                                              ; preds = %178
  %180 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %181 = load i8, ptr %180, align 1
  %182 = and i8 %181, 8
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %197, label %189

184:                                              ; preds = %178
  %185 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %186 = load i8, ptr %185, align 1
  %187 = and i8 %186, 16
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184, %179, %178, %175
  %190 = phi i8 [ 6, %184 ], [ 4, %179 ], [ %177, %178 ], [ %177, %175 ]
  %191 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %192 = load i8, ptr %191, align 2
  %193 = icmp eq i8 %190, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 21
  %196 = load ptr, ptr %195, align 4
  tail call void %196(ptr noundef %0) #16
  br label %197

197:                                              ; preds = %194, %189, %184, %179, %170, %165, %160, %150, %125, %123, %85, %76, %66, %61, %40, %38, %37, %15
  %198 = phi i32 [ 2, %194 ], [ 1, %15 ], [ 0, %125 ], [ 0, %170 ], [ 1, %189 ], [ %154, %150 ], [ 2, %37 ], [ 2, %38 ], [ 2, %40 ], [ 1, %66 ], [ 1, %123 ], [ 1, %61 ], [ 0, %85 ], [ 0, %76 ], [ 0, %165 ], [ 0, %160 ], [ 0, %179 ], [ 0, %184 ]
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_poll(ptr noundef %0) #0 {
  %2 = alloca [8 x i8], align 8
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %0, i1 noundef zeroext true)
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %15, 235
  %17 = call i32 @ps2_command(ptr noundef %11, ptr noundef nonnull %2, i32 noundef %16) #16
  %18 = icmp slt i32 %17, 0
  %19 = load i32, ptr %4, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %10
  %23 = call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %0, i1 noundef zeroext false)
  br label %24

24:                                               ; preds = %22, %10
  br i1 %18, label %44, label %25

25:                                               ; preds = %24
  %26 = load i8, ptr %2, align 8
  %27 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 10
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, %26
  %30 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 9
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %29, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 8
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, -56
  %37 = icmp eq i8 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 @ps2_command(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 1003) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %43 = load i64, ptr %2, align 8
  store i64 %43, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %38, %25, %24
  %45 = phi i32 [ 0, %41 ], [ -1, %25 ], [ -1, %24 ], [ -1, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_disconnect(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 30
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @input_unregister_device(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @input_unregister_device(ptr noundef nonnull %12) #16
  br label %17

17:                                               ; preds = %16, %10
  tail call void @kfree(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_reconnect(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #16
  %4 = tail call fastcc i32 @alps_identify(ptr noundef %0, ptr noundef %2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #16
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ -1, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alps_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = tail call fastcc i32 @alps_identify(ptr noundef %0, ptr noundef null)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 0, ptr %3, align 2
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %8 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 737) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  br label %19

11:                                               ; preds = %6
  %12 = load i8, ptr %3, align 2
  %13 = icmp eq i8 %12, 2
  %14 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, -16
  %17 = icmp eq i8 %16, 32
  %18 = select i1 %13, i1 %17, i1 false
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  br i1 %18, label %42, label %19

19:                                               ; preds = %11, %10
  %20 = call i32 @psmouse_reset(ptr noundef %0) #16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 268) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = call fastcc i32 @alps_identify(ptr noundef %0, ptr noundef nonnull %22)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @kfree(ptr noundef nonnull %22) #16
  br label %42

28:                                               ; preds = %24
  br i1 %1, label %29, label %41

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str.4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.alps_data, ptr %22, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.6, ptr @.str.5
  %36 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.alps_data, ptr %22, i32 0, i32 8
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 14
  store i32 %39, ptr %40, align 4
  br label %42

41:                                               ; preds = %28
  call void @kfree(ptr noundef nonnull %22) #16
  store ptr null, ptr %0, align 4
  br label %42

42:                                               ; preds = %41, %29, %27, %19, %11, %2
  %43 = phi i32 [ %25, %27 ], [ %4, %2 ], [ -22, %11 ], [ -12, %19 ], [ 0, %41 ], [ 0, %29 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_identify(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call fastcc i32 @alps_rpt_cmd(ptr noundef %0, i32 noundef 4328, i32 noundef 230, ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %94

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 4
  %10 = icmp ugt i8 %9, 7
  %11 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %94, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  switch i8 %17, label %94 [
    i8 100, label %18
    i8 10, label %18
  ]

18:                                               ; preds = %15, %15
  %19 = call fastcc i32 @alps_rpt_cmd(ptr noundef %0, i32 noundef 4328, i32 noundef 231, ptr noundef nonnull %4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %18
  %22 = call fastcc i32 @alps_rpt_cmd(ptr noundef %0, i32 noundef 4328, i32 noundef 236, ptr noundef nonnull %5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %26 = call i32 @ps2_command(ptr noundef %25, ptr noundef null, i32 noundef 234) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %24
  %29 = call fastcc ptr @alps_match_table(ptr noundef nonnull %4)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %85

31:                                               ; preds = %28
  %32 = load i8, ptr %4, align 4
  %33 = icmp eq i8 %32, 115
  %34 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 2
  %37 = select i1 %33, i1 %36, i1 false
  %38 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 100
  %41 = select i1 %37, i1 %40, i1 false
  %42 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  %43 = load i8, ptr %42, align 2
  %44 = icmp eq i8 %43, -118
  %45 = select i1 %41, i1 %44, i1 false
  br i1 %45, label %85, label %46

46:                                               ; preds = %31
  %47 = icmp eq i8 %35, 3
  %48 = select i1 %33, i1 %47, i1 false
  %49 = icmp eq i8 %39, 80
  %50 = select i1 %48, i1 %49, i1 false
  %51 = load i8, ptr %5, align 4
  %52 = icmp eq i8 %51, 115
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = add i8 %56, -1
  %58 = icmp ult i8 %57, 2
  br i1 %58, label %85, label %59

59:                                               ; preds = %54
  %60 = xor i1 %53, true
  br label %71

61:                                               ; preds = %46
  %62 = icmp eq i8 %51, -120
  br i1 %62, label %63, label %80

63:                                               ; preds = %61
  %64 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, -16
  switch i8 %66, label %67 [
    i8 -80, label %85
    i8 -64, label %85
  ]

67:                                               ; preds = %63
  %68 = xor i1 %53, true
  %69 = icmp eq i8 %65, 8
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %85, label %71

71:                                               ; preds = %67, %59
  %72 = phi i1 [ %60, %59 ], [ %68, %67 ]
  %73 = phi i8 [ %56, %59 ], [ %65, %67 ]
  %74 = icmp eq i8 %73, 7
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp ugt i8 %43, -113
  %77 = select i1 %75, i1 %76, i1 false
  %78 = icmp ult i8 %43, -98
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %85, label %80

80:                                               ; preds = %71, %61
  br i1 %48, label %81, label %94

81:                                               ; preds = %80
  switch i8 %39, label %94 [
    i8 40, label %85
    i8 20, label %85
    i8 -56, label %82
  ]

82:                                               ; preds = %81
  %83 = load ptr, ptr %25, align 4
  %84 = getelementptr inbounds %struct.serio, ptr %83, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  br label %94

85:                                               ; preds = %81, %81, %71, %67, %63, %63, %54, %31, %28
  %86 = phi ptr [ %29, %28 ], [ @alps_v4_protocol_data, %31 ], [ @alps_v5_protocol_data, %54 ], [ @alps_v7_protocol_data, %63 ], [ @alps_v7_protocol_data, %63 ], [ @alps_v3_rushmore_data, %67 ], [ @alps_v3_protocol_data, %71 ], [ @alps_v8_protocol_data, %81 ], [ @alps_v8_protocol_data, %81 ]
  %87 = icmp eq ptr %1, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %89, ptr noundef nonnull align 4 dereferenceable(3) %4, i32 3, i1 false)
  %90 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %90, ptr noundef nonnull align 4 dereferenceable(3) %5, i32 3, i1 false)
  %91 = call fastcc i32 @alps_set_protocol(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %86)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %88, %82, %81, %80, %24, %21, %18, %15, %8, %2
  %95 = phi i32 [ 0, %93 ], [ -22, %82 ], [ -5, %2 ], [ -22, %15 ], [ -22, %8 ], [ -5, %24 ], [ -5, %21 ], [ -5, %18 ], [ %91, %88 ], [ -22, %80 ], [ -22, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_queue_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alps_report_buttons(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 27, i32 8
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne i32 %2, 0
  %13 = zext i1 %12 to i32
  br i1 %11, label %15, label %14

14:                                               ; preds = %7
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 272, i32 noundef %13) #16
  br label %16

15:                                               ; preds = %7
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 272, i32 noundef %13) #16
  br label %16

16:                                               ; preds = %15, %14
  %17 = load volatile i32, ptr %8, align 4
  %18 = and i32 %17, 131072
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %3, 0
  %21 = zext i1 %20 to i32
  br i1 %19, label %30, label %29

22:                                               ; preds = %5
  %23 = icmp ne i32 %2, 0
  %24 = zext i1 %23 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 272, i32 noundef %24) #16
  %25 = icmp ne i32 %3, 0
  %26 = zext i1 %25 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 273, i32 noundef %26) #16
  %27 = icmp ne i32 %4, 0
  %28 = zext i1 %27 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 274, i32 noundef %28) #16
  br label %40

29:                                               ; preds = %16
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 273, i32 noundef %21) #16
  br label %31

30:                                               ; preds = %16
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 273, i32 noundef %21) #16
  br label %31

31:                                               ; preds = %30, %29
  %32 = load volatile i32, ptr %8, align 4
  %33 = and i32 %32, 262144
  %34 = icmp eq i32 %33, 0
  %35 = icmp ne i32 %4, 0
  %36 = zext i1 %35 to i32
  br i1 %34, label %37, label %38

37:                                               ; preds = %31
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 274, i32 noundef %36) #16
  br label %39

38:                                               ; preds = %31
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 274, i32 noundef %36) #16
  br label %39

39:                                               ; preds = %38, %37
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %40

40:                                               ; preds = %39, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_motion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_passthrough_mode_v2(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = select i1 %1, i32 231, i32 230
  %5 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef %4) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef %4) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 245) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @ps2_drain(ptr noundef %3, i32 noundef 3, i32 noundef 100) #16
  br label %17

17:                                               ; preds = %16, %13, %10, %7, %2
  %18 = phi i32 [ 0, %16 ], [ -1, %13 ], [ -1, %10 ], [ -1, %7 ], [ -1, %2 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_drain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_rpt_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @ps2_command(ptr noundef %5, ptr noundef %3, i32 noundef %1) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7, %4
  %11 = tail call i32 @ps2_command(ptr noundef %5, ptr noundef null, i32 noundef %2) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = tail call i32 @ps2_command(ptr noundef %5, ptr noundef null, i32 noundef %2) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = tail call i32 @ps2_command(ptr noundef %5, ptr noundef null, i32 noundef %2) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %3, i32 2
  store i8 -1, ptr %20, align 1
  %21 = getelementptr i8, ptr %3, i32 1
  store i8 -1, ptr %21, align 1
  store i8 -1, ptr %3, align 1
  %22 = tail call i32 @ps2_command(ptr noundef %5, ptr noundef %3, i32 noundef 1001) #16
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 -5
  br label %25

25:                                               ; preds = %19, %16, %13, %10, %7
  %26 = phi i32 [ -5, %7 ], [ -5, %16 ], [ -5, %13 ], [ -5, %10 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @alps_match_table(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr [22 x %struct.alps_model_info], ptr @alps_model_data, i32 0, i32 %3
  %5 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %0, ptr noundef dereferenceable(3) %4, i32 3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr [22 x %struct.alps_model_info], ptr @alps_model_data, i32 0, i32 %3, i32 1
  br label %12

9:                                                ; preds = %2
  %10 = add nuw nsw i32 %3, 1
  %11 = icmp eq i32 %10, 22
  br i1 %11, label %12, label %2

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ null, %9 ]
  ret ptr %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_set_protocol(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [2 x [4 x i8]], align 8
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [4 x i8], align 4
  store ptr %1, ptr %0, align 4
  %9 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 30
  tail call void @init_timer_key(ptr noundef %9, ptr noundef nonnull @alps_flush_packet, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %10 = load i16, ptr %2, align 4
  %11 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 8
  store i16 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.alps_protocol_info, ptr %2, i32 0, i32 1
  %13 = load i8, ptr %12, align 2
  %14 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 9
  store i8 %13, ptr %14, align 2
  %15 = getelementptr inbounds %struct.alps_protocol_info, ptr %2, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 10
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.alps_protocol_info, ptr %2, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 14
  store i32 2000, ptr %21, align 4
  %22 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 15
  store i32 1400, ptr %22, align 4
  %23 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 16
  store i32 15, ptr %23, align 4
  %24 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 17
  store i32 11, ptr %24, align 4
  switch i16 %10, label %351 [
    i16 256, label %25
    i16 512, label %25
    i16 768, label %34
    i16 784, label %71
    i16 1024, label %108
    i16 1280, label %114
    i16 1536, label %156
    i16 1792, label %161
    i16 2048, label %204
  ]

25:                                               ; preds = %3, %3
  %26 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_v1_v2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_packet_v1_v2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_st, ptr %28, align 4
  store i32 1023, ptr %21, align 4
  store i32 767, ptr %22, align 4
  %29 = tail call i32 @dmi_check_system(ptr noundef nonnull @alps_dmi_has_separate_stick_buttons) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %351, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %20, align 4
  %33 = or i32 %32, 256
  store i32 %33, ptr %20, align 4
  br label %351

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_v3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_packet_v3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_semi_mt, ptr %37, align 4
  %38 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 22
  store ptr @alps_decode_pinnacle, ptr %38, align 4
  %39 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  store ptr @alps_v3_nibble_commands, ptr %39, align 4
  %40 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 7
  store i32 236, ptr %40, align 4
  %41 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %34
  %44 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 8) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %48 = call i32 @ps2_command(ptr noundef %47, ptr noundef nonnull %8, i32 noundef 1001) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i8, ptr %8, align 4
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %60, label %59

59:                                               ; preds = %50, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %66

60:                                               ; preds = %50
  %61 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  %62 = load i8, ptr %61, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %63 = icmp sgt i8 %62, -1
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = call i32 @ps2_command(ptr noundef %47, ptr noundef null, i32 noundef 234) #16
  br label %351

66:                                               ; preds = %60, %59, %43, %34
  %67 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %68 = call i32 @ps2_command(ptr noundef %67, ptr noundef null, i32 noundef 234) #16
  %69 = load i32, ptr %20, align 4
  %70 = and i32 %69, -3
  store i32 %70, ptr %20, align 4
  br label %351

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_rushmore_v3, ptr %72, align 4
  %73 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_packet_v3, ptr %73, align 4
  %74 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_semi_mt, ptr %74, align 4
  %75 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 22
  store ptr @alps_decode_rushmore, ptr %75, align 4
  %76 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  store ptr @alps_v3_nibble_commands, ptr %76, align 4
  %77 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 7
  store i32 236, ptr %77, align 4
  store i32 16, ptr %23, align 4
  store i32 12, ptr %24, align 4
  %78 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %71
  %81 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49864) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %85 = call i32 @ps2_command(ptr noundef %84, ptr noundef nonnull %7, i32 noundef 1001) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i8, ptr %7, align 4
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %90, %93
  %95 = icmp eq i32 %94, 49864
  br i1 %95, label %97, label %96

96:                                               ; preds = %87, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %103

97:                                               ; preds = %87
  %98 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  %99 = load i8, ptr %98, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %100 = icmp sgt i8 %99, -1
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = call i32 @ps2_command(ptr noundef %84, ptr noundef null, i32 noundef 234) #16
  br label %351

103:                                              ; preds = %97, %96, %80, %71
  %104 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %105 = call i32 @ps2_command(ptr noundef %104, ptr noundef null, i32 noundef 234) #16
  %106 = load i32, ptr %20, align 4
  %107 = and i32 %106, -3
  store i32 %107, ptr %20, align 4
  br label %351

108:                                              ; preds = %3
  %109 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_v4, ptr %109, align 4
  %110 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_packet_v4, ptr %110, align 4
  %111 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_semi_mt, ptr %111, align 4
  %112 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  store ptr @alps_v4_nibble_commands, ptr %112, align 4
  %113 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 7
  store i32 245, ptr %113, align 4
  br label %351

114:                                              ; preds = %3
  %115 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_dolphin_v1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_touchpad_packet_v3_v5, ptr %116, align 4
  %117 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 22
  store ptr @alps_decode_dolphin, ptr %117, align 4
  %118 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_semi_mt, ptr %118, align 4
  %119 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  store ptr @alps_v3_nibble_commands, ptr %119, align 4
  %120 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 7
  store i32 236, ptr %120, align 4
  store i32 23, ptr %23, align 4
  store i32 12, ptr %24, align 4
  %121 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 10, ptr %6, align 4
  %122 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0) #16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %114
  %125 = tail call i32 @ps2_command(ptr noundef %121, ptr noundef null, i32 noundef 236) #16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = tail call i32 @ps2_command(ptr noundef %121, ptr noundef null, i32 noundef 240) #16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = tail call i32 @ps2_command(ptr noundef %121, ptr noundef null, i32 noundef 240) #16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = call i32 @ps2_command(ptr noundef %121, ptr noundef nonnull %6, i32 noundef 4339) #16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = call i32 @ps2_command(ptr noundef %121, ptr noundef nonnull %6, i32 noundef 4339) #16
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = call i32 @ps2_command(ptr noundef %121, ptr noundef nonnull %6, i32 noundef 1001) #16
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139, %136, %133, %130, %127, %124, %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %352

143:                                              ; preds = %139
  %144 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  %145 = load i8, ptr %144, align 2
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, 15
  %148 = add nuw nsw i32 %147, 8
  %149 = lshr i32 %146, 4
  %150 = add nuw nsw i32 %149, 1
  store i32 %148, ptr %23, align 4
  store i32 %150, ptr %24, align 4
  %151 = shl nuw nsw i32 %147, 6
  %152 = add nuw nsw i32 %151, 448
  store i32 %152, ptr %21, align 4
  %153 = shl nuw nsw i32 %149, 6
  store i32 %153, ptr %22, align 4
  %154 = call i32 @ps2_command(ptr noundef %121, ptr noundef null, i32 noundef 234) #16
  %155 = icmp eq i32 %154, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %155, label %351, label %352

156:                                              ; preds = %3
  %157 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_v6, ptr %157, align 4
  %158 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_packet_v6, ptr %158, align 4
  %159 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_st, ptr %159, align 4
  %160 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  store ptr @alps_v6_nibble_commands, ptr %160, align 4
  store i32 2047, ptr %21, align 4
  store i32 1535, ptr %22, align 4
  br label %351

161:                                              ; preds = %3
  %162 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_v7, ptr %162, align 4
  %163 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_packet_v7, ptr %163, align 4
  %164 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 22
  store ptr @alps_decode_packet_v7, ptr %164, align 4
  %165 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_v7, ptr %165, align 4
  %166 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  store ptr @alps_v3_nibble_commands, ptr %166, align 4
  %167 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 7
  store i32 236, ptr %167, align 4
  store i32 4095, ptr %21, align 4
  store i32 2047, ptr %22, align 4
  %168 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 12, i32 1
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, -70
  br i1 %170, label %173, label %171

171:                                              ; preds = %161
  %172 = or i32 %19, 512
  store i32 %172, ptr %20, align 4
  br label %173

173:                                              ; preds = %171, %161
  %174 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0) #16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %173
  %177 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49864) #16
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %181 = call i32 @ps2_command(ptr noundef %180, ptr noundef nonnull %5, i32 noundef 1001) #16
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %179
  %184 = load i8, ptr %5, align 4
  %185 = zext i8 %184 to i32
  %186 = shl nuw nsw i32 %185, 8
  %187 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %186, %189
  %191 = icmp eq i32 %190, 49864
  br i1 %191, label %193, label %192

192:                                              ; preds = %183, %179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %199

193:                                              ; preds = %183
  %194 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  %195 = load i8, ptr %194, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %196 = icmp sgt i8 %195, -1
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = call i32 @ps2_command(ptr noundef %180, ptr noundef null, i32 noundef 234) #16
  br label %351

199:                                              ; preds = %193, %192, %176, %173
  %200 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %201 = call i32 @ps2_command(ptr noundef %200, ptr noundef null, i32 noundef 234) #16
  %202 = load i32, ptr %20, align 4
  %203 = and i32 %202, -3
  store i32 %203, ptr %20, align 4
  br label %351

204:                                              ; preds = %3
  %205 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  store ptr @alps_hw_init_ss4_v2, ptr %205, align 4
  %206 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  store ptr @alps_process_packet_ss4_v2, ptr %206, align 4
  %207 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 22
  store ptr @alps_decode_ss4_v2, ptr %207, align 4
  %208 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  store ptr @alps_set_abs_params_ss4_v2, ptr %208, align 4
  %209 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  store ptr @alps_v3_nibble_commands, ptr %209, align 4
  %210 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 7
  store i32 236, ptr %210, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8
  %211 = getelementptr inbounds [2 x [4 x i8]], ptr %4, i32 0, i32 1
  %212 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %213 = tail call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 240) #16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %350

215:                                              ; preds = %204
  %216 = tail call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 240) #16
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %350

218:                                              ; preds = %215
  %219 = call i32 @ps2_command(ptr noundef %212, ptr noundef %211, i32 noundef 1001) #16
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %350

221:                                              ; preds = %218
  %222 = call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 234) #16
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %350

224:                                              ; preds = %221
  %225 = call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 234) #16
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %350

227:                                              ; preds = %224
  %228 = call i32 @ps2_command(ptr noundef %212, ptr noundef nonnull %4, i32 noundef 1001) #16
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %350

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 11
  %232 = load i8, ptr %231, align 4
  %233 = icmp eq i8 %232, 115
  br i1 %233, label %234, label %261

234:                                              ; preds = %230
  %235 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 1
  %236 = load i8, ptr %235, align 1
  %237 = icmp eq i8 %236, 3
  br i1 %237, label %238, label %261

238:                                              ; preds = %234
  %239 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 2
  %240 = load i8, ptr %239, align 2
  %241 = icmp eq i8 %240, 40
  br i1 %241, label %242, label %261

242:                                              ; preds = %238
  %243 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %244 = load i8, ptr %243, align 2
  %245 = zext i8 %244 to i32
  %246 = and i32 %245, 15
  %247 = or i32 %246, 16
  %248 = lshr i32 %245, 4
  %249 = add nuw nsw i32 %248, 5
  %250 = shl nuw nsw i32 %246, 7
  %251 = add nuw nsw i32 %250, 1920
  store i32 %251, ptr %21, align 4
  %252 = shl nuw nsw i32 %248, 7
  %253 = add nuw nsw i32 %252, 512
  store i32 %253, ptr %22, align 4
  %254 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i32
  %257 = and i32 %256, 15
  %258 = add nuw nsw i32 %257, 37
  %259 = lshr i32 %256, 4
  %260 = add nuw nsw i32 %259, 37
  br label %280

261:                                              ; preds = %238, %234, %230
  %262 = load i8, ptr %211, align 4
  %263 = zext i8 %262 to i32
  %264 = and i32 %263, 15
  %265 = add nuw nsw i32 %264, 7
  %266 = lshr i32 %263, 4
  %267 = add nuw nsw i32 %266, 7
  %268 = shl nuw nsw i32 %264, 8
  %269 = add nuw nsw i32 %268, 1536
  store i32 %269, ptr %21, align 4
  %270 = shl nuw nsw i32 %266, 8
  %271 = add nuw nsw i32 %270, 1536
  store i32 %271, ptr %22, align 4
  %272 = getelementptr inbounds [4 x i8], ptr %4, i32 1, i32 2
  %273 = load i8, ptr %272, align 2
  %274 = zext i8 %273 to i32
  %275 = lshr i32 %274, 2
  %276 = and i32 %275, 7
  %277 = add nuw nsw i32 %276, 50
  %278 = lshr i32 %274, 5
  %279 = add nuw nsw i32 %278, 50
  br label %280

280:                                              ; preds = %261, %242
  %281 = phi i32 [ %253, %242 ], [ %271, %261 ]
  %282 = phi i32 [ %251, %242 ], [ %269, %261 ]
  %283 = phi i32 [ %247, %242 ], [ %265, %261 ]
  %284 = phi i32 [ %249, %242 ], [ %267, %261 ]
  %285 = phi i32 [ %258, %242 ], [ %277, %261 ]
  %286 = phi i32 [ %260, %242 ], [ %279, %261 ]
  %287 = add nsw i32 %283, -1
  %288 = mul nsw i32 %285, %287
  %289 = add nuw nsw i32 %284, 65535
  %290 = mul nuw nsw i32 %286, %289
  %291 = mul nuw nsw i32 %282, 10
  %292 = sdiv i32 %291, %288
  %293 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 18
  store i32 %292, ptr %293, align 4
  %294 = trunc i32 %281 to i16
  %295 = mul nuw i16 %294, 10
  %296 = trunc i32 %290 to i16
  %297 = udiv i16 %295, %296
  %298 = zext i16 %297 to i32
  %299 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 19
  store i32 %298, ptr %299, align 4
  br i1 %233, label %300, label %308

300:                                              ; preds = %280
  %301 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 1
  %302 = load i8, ptr %301, align 1
  %303 = icmp eq i8 %302, 3
  br i1 %303, label %304, label %308

304:                                              ; preds = %300
  %305 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 2
  %306 = load i8, ptr %305, align 2
  %307 = icmp eq i8 %306, 40
  br i1 %307, label %310, label %308

308:                                              ; preds = %304, %300, %280
  %309 = getelementptr inbounds [4 x i8], ptr %4, i32 1, i32 1
  br label %310

310:                                              ; preds = %308, %304
  %311 = phi ptr [ %309, %308 ], [ %211, %304 ]
  %312 = phi i8 [ 3, %308 ], [ 1, %304 ]
  %313 = load i8, ptr %311, align 1
  %314 = shl nuw nsw i8 1, %312
  %315 = and i8 %313, %314
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %310
  %318 = load i32, ptr %20, align 4
  %319 = or i32 %318, 512
  store i32 %319, ptr %20, align 4
  br label %320

320:                                              ; preds = %317, %310
  br i1 %233, label %321, label %349

321:                                              ; preds = %320
  %322 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 1
  %323 = load i8, ptr %322, align 1
  %324 = icmp eq i8 %323, 3
  br i1 %324, label %325, label %349

325:                                              ; preds = %321
  %326 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 2
  %327 = load i8, ptr %326, align 2
  %328 = icmp eq i8 %327, 40
  br i1 %328, label %329, label %349

329:                                              ; preds = %325
  %330 = load i8, ptr %4, align 8
  %331 = and i8 %330, 16
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %329
  %334 = call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 234) #16
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = call fastcc i32 @alps_enter_command_mode(ptr noundef %0) #16
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %336, %333
  %340 = call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 234) #16
  %341 = call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 244) #16
  br label %349

342:                                              ; preds = %336
  %343 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %0, i32 noundef 215) #16
  %344 = call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 234) #16
  %345 = call i32 @ps2_command(ptr noundef %212, ptr noundef null, i32 noundef 244) #16
  switch i32 %343, label %349 [
    i32 29, label %346
    i32 12, label %346
  ]

346:                                              ; preds = %342, %342, %329
  %347 = load i32, ptr %20, align 4
  %348 = or i32 %347, 1026
  store i32 %348, ptr %20, align 4
  br label %349

349:                                              ; preds = %346, %342, %339, %325, %321, %320
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %351

350:                                              ; preds = %227, %224, %221, %218, %215, %204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %352

351:                                              ; preds = %349, %199, %197, %156, %143, %108, %103, %101, %66, %64, %31, %25, %3
  br label %352

352:                                              ; preds = %351, %350, %143, %142
  %353 = phi i32 [ 0, %351 ], [ -5, %143 ], [ -5, %350 ], [ -5, %142 ]
  ret i32 %353
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_flush_packet(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -248
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 9
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 10
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = getelementptr %struct.psmouse, ptr %3, i32 0, i32 7, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr %struct.psmouse, ptr %3, i32 0, i32 7, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, %14
  %18 = getelementptr %struct.psmouse, ptr %3, i32 0, i32 7, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %17, %19
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %0, i32 -76
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %3) #16
  br label %25

25:                                               ; preds = %22, %12
  store i8 0, ptr %7, align 1
  br label %26

26:                                               ; preds = %25, %1
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %29 = load i16, ptr %28, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v1_v2(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [4 x i8], align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %0, i1 noundef zeroext true)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 10, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %14 = call i32 @ps2_command(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1001) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = call i32 @ps2_command(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 4339) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  store i8 0, ptr %3, align 4
  %26 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %28, %25, %22, %19, %16, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  br label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 -1, ptr %36, align 2
  %37 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -1, ptr %37, align 1
  store i8 -1, ptr %3, align 4
  %38 = call i32 @ps2_command(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1001) #16
  %39 = icmp eq i32 %38, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %34
  %41 = load ptr, ptr %13, align 4
  %42 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.14) #17
  br label %77

43:                                               ; preds = %35
  %44 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 245) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 244) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 240) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %55, %52, %49, %46, %43
  %62 = load ptr, ptr %13, align 4
  %63 = getelementptr inbounds %struct.serio, ptr %62, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.15) #17
  br label %77

64:                                               ; preds = %58
  %65 = load i32, ptr %5, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %0, i1 noundef zeroext false)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68, %64
  %72 = call i32 @ps2_command(ptr noundef %13, ptr noundef null, i32 noundef 234) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %13, align 4
  %76 = getelementptr inbounds %struct.serio, ptr %75, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.16) #17
  br label %77

77:                                               ; preds = %74, %71, %68, %61, %40, %9
  %78 = phi i32 [ -1, %40 ], [ -1, %61 ], [ -1, %74 ], [ -1, %9 ], [ -1, %68 ], [ 0, %71 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_process_packet_v1_v2(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 8
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 256
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 16
  %16 = and i32 %14, 8
  %17 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, 7
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 7
  %24 = or i32 %23, %19
  %25 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 7
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 7
  %33 = or i32 %32, %27
  br label %56

34:                                               ; preds = %1
  %35 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 1
  %39 = and i32 %37, 2
  %40 = and i32 %37, 4
  %41 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 120
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 4
  %49 = or i32 %48, %43
  %50 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %37, 3
  %54 = and i32 %53, 896
  %55 = or i32 %54, %52
  br label %56

56:                                               ; preds = %34, %11
  %57 = phi i8 [ %29, %11 ], [ %36, %34 ]
  %58 = phi i8 [ %13, %11 ], [ %45, %34 ]
  %59 = phi i32 [ %24, %11 ], [ %49, %34 ]
  %60 = phi i32 [ %33, %11 ], [ %55, %34 ]
  %61 = phi i32 [ %15, %11 ], [ %38, %34 ]
  %62 = phi i32 [ %16, %11 ], [ %39, %34 ]
  %63 = phi i32 [ 0, %11 ], [ %40, %34 ]
  %64 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 13
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load i8, ptr %3, align 1
  %73 = and i8 %72, 16
  %74 = zext i8 %73 to i32
  %75 = and i8 %58, 4
  %76 = zext i8 %75 to i32
  br label %77

77:                                               ; preds = %71, %56
  %78 = phi i32 [ %74, %71 ], [ 0, %56 ]
  %79 = phi i32 [ %76, %71 ], [ 0, %56 ]
  %80 = and i32 %68, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = and i8 %57, 4
  %84 = zext i8 %83 to i32
  %85 = and i8 %58, 4
  %86 = zext i8 %85 to i32
  %87 = icmp ne i8 %85, 0
  %88 = icmp ne i8 %83, 0
  %89 = select i1 %87, i1 %88, i1 false
  %90 = zext i1 %89 to i32
  %91 = select i1 %89, i32 0, i32 %84
  %92 = select i1 %89, i32 0, i32 %86
  br label %93

93:                                               ; preds = %82, %77
  %94 = phi i32 [ %63, %77 ], [ %90, %82 ]
  %95 = phi i32 [ %78, %77 ], [ %91, %82 ]
  %96 = phi i32 [ %79, %77 ], [ %92, %82 ]
  %97 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %98 = zext i8 %58 to i32
  %99 = and i32 %98, 2
  %100 = and i32 %68, 2
  %101 = icmp ne i32 %100, 0
  %102 = icmp eq i8 %65, 127
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %112

104:                                              ; preds = %93
  %105 = icmp sgt i32 %59, 383
  %106 = add nsw i32 %59, -768
  %107 = select i1 %105, i32 %106, i32 %59
  tail call void @input_event(ptr noundef %7, i32 noundef 2, i32 noundef 0, i32 noundef %107) #16
  %108 = icmp sgt i32 %60, 255
  %109 = add nsw i32 %60, -512
  %110 = select i1 %108, i32 %109, i32 %60
  %111 = sub nsw i32 0, %110
  tail call void @input_event(ptr noundef %7, i32 noundef 2, i32 noundef 1, i32 noundef %111) #16
  tail call fastcc void @alps_report_buttons(ptr noundef %7, ptr noundef %5, i32 noundef %61, i32 noundef %62, i32 noundef %94)
  br label %194

112:                                              ; preds = %93
  %113 = and i32 %68, 256
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = load i8, ptr %3, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 1
  %119 = or i32 %118, %61
  %120 = and i32 %117, 2
  %121 = or i32 %120, %62
  %122 = and i32 %117, 4
  %123 = or i32 %122, %94
  br label %124

124:                                              ; preds = %115, %112
  %125 = phi i32 [ %119, %115 ], [ %61, %112 ]
  %126 = phi i32 [ %121, %115 ], [ %62, %112 ]
  %127 = phi i32 [ %123, %115 ], [ %94, %112 ]
  tail call fastcc void @alps_report_buttons(ptr noundef %5, ptr noundef %7, i32 noundef %125, i32 noundef %126, i32 noundef %127)
  %128 = and i32 %98, 3
  %129 = icmp eq i32 %128, 1
  %130 = select i1 %129, i32 40, i32 %66
  %131 = icmp eq i32 %128, 3
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 24
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %59) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %60) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef 0) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 325, i32 noundef 0) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %137

137:                                              ; preds = %136, %132, %124
  %138 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 24
  store i32 %99, ptr %138, align 4
  %139 = icmp ugt i32 %130, 30
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef 1) #16
  br label %145

141:                                              ; preds = %137
  %142 = icmp ult i32 %130, 25
  br i1 %142, label %143, label %145

143:                                              ; preds = %141
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef 0) #16
  %144 = icmp eq i32 %130, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %143, %141, %140
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %59) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %60) #16
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ 1, %145 ], [ 0, %143 ]
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %130) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 325, i32 noundef %147) #16
  %148 = load i32, ptr %67, align 4
  %149 = and i32 %148, 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %146
  %152 = load i8, ptr %97, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, 1
  %155 = and i32 %154, 8
  %156 = load i8, ptr %3, align 1
  %157 = lshr i8 %156, 4
  %158 = and i8 %157, 7
  %159 = zext i8 %158 to i32
  %160 = sub nsw i32 %155, %159
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 8, i32 noundef %160) #16
  %161 = load i32, ptr %67, align 4
  br label %162

162:                                              ; preds = %151, %146
  %163 = phi i32 [ %161, %151 ], [ %148, %146 ]
  %164 = and i32 %163, 48
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %162
  %167 = icmp ne i32 %96, 0
  %168 = zext i1 %167 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 277, i32 noundef %168) #16
  %169 = icmp ne i32 %95, 0
  %170 = zext i1 %169 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 278, i32 noundef %170) #16
  %171 = load i32, ptr %67, align 4
  br label %172

172:                                              ; preds = %166, %162
  %173 = phi i32 [ %171, %166 ], [ %163, %162 ]
  %174 = and i32 %173, 64
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr %97, align 1
  %178 = lshr i8 %177, 2
  %179 = and i8 %178, 1
  %180 = zext i8 %179 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 256, i32 noundef %180) #16
  %181 = load i8, ptr %3, align 1
  %182 = lshr i8 %181, 4
  %183 = and i8 %182, 1
  %184 = zext i8 %183 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 257, i32 noundef %184) #16
  %185 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %186 = load i8, ptr %185, align 1
  %187 = lshr i8 %186, 2
  %188 = and i8 %187, 1
  %189 = zext i8 %188 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 258, i32 noundef %189) #16
  %190 = load i8, ptr %3, align 1
  %191 = lshr i8 %190, 5
  %192 = and i8 %191, 1
  %193 = zext i8 %192 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 259, i32 noundef %193) #16
  br label %194

194:                                              ; preds = %176, %172, %104
  %195 = phi ptr [ %7, %104 ], [ %5, %176 ], [ %5, %172 ]
  tail call void @input_event(ptr noundef %195, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_set_abs_params_st(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef 0, i32 noundef 0) #16
  %5 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef %6, i32 noundef 0, i32 noundef 0) #16
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v3(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca [4 x i8], align 4
  %14 = alloca [4 x i8], align 4
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  store i32 0, ptr %14, align 4, !annotation !9
  %17 = getelementptr inbounds %struct.alps_data, ptr %15, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = tail call fastcc i32 @alps_setup_trackstick_v3(ptr noundef %0, i32 noundef 0)
  %23 = icmp eq i32 %22, -5
  br i1 %23, label %235, label %24

24:                                               ; preds = %21, %1
  %25 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 4) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  store i32 0, ptr %13, align 4, !annotation !9
  %31 = call i32 @ps2_command(ptr noundef %16, ptr noundef nonnull %13, i32 noundef 1001) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8, ptr %13, align 4
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %43, label %42

42:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  br label %73

43:                                               ; preds = %33
  %44 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 2
  %45 = load i8, ptr %44, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  %46 = or i8 %45, 6
  %47 = zext i8 %46 to i32
  %48 = lshr i32 %47, 4
  %49 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  store i32 0, ptr %12, align 4, !annotation !9
  %50 = getelementptr inbounds %struct.alps_data, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr %struct.alps_nibble_commands, ptr %51, i32 %48
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 3840
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr %struct.alps_nibble_commands, ptr %51, i32 %48, i32 1
  %57 = select i1 %55, ptr %56, ptr %12
  %58 = call i32 @ps2_command(ptr noundef %16, ptr noundef %57, i32 noundef %53) #16
  %59 = icmp eq i32 %58, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  br i1 %59, label %60, label %73

60:                                               ; preds = %43
  %61 = and i32 %47, 15
  %62 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  store i32 0, ptr %11, align 4, !annotation !9
  %63 = getelementptr inbounds %struct.alps_data, ptr %62, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr %struct.alps_nibble_commands, ptr %64, i32 %61
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 3840
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr %struct.alps_nibble_commands, ptr %64, i32 %61, i32 1
  %70 = select i1 %68, ptr %69, ptr %11
  %71 = call i32 @ps2_command(ptr noundef %16, ptr noundef %70, i32 noundef %66) #16
  %72 = icmp eq i32 %71, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br i1 %72, label %76, label %73

73:                                               ; preds = %60, %43, %42, %27, %24
  %74 = load ptr, ptr %16, align 4
  %75 = getelementptr inbounds %struct.serio, ptr %74, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.17) #17
  br label %235

76:                                               ; preds = %60
  %77 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 6) #16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %235

79:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !annotation !9
  %80 = call i32 @ps2_command(ptr noundef %16, ptr noundef nonnull %10, i32 noundef 1001) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8, ptr %10, align 4
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %85, %88
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %92, label %91

91:                                               ; preds = %82, %79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %235

92:                                               ; preds = %82
  %93 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 2
  %94 = load i8, ptr %93, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  %95 = or i8 %94, 1
  %96 = zext i8 %95 to i32
  %97 = lshr i32 %96, 4
  %98 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  %99 = getelementptr inbounds %struct.alps_data, ptr %98, i32 0, i32 6
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr %struct.alps_nibble_commands, ptr %100, i32 %97
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 3840
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr %struct.alps_nibble_commands, ptr %100, i32 %97, i32 1
  %106 = select i1 %104, ptr %105, ptr %9
  %107 = call i32 @ps2_command(ptr noundef %16, ptr noundef %106, i32 noundef %102) #16
  %108 = icmp eq i32 %107, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br i1 %108, label %109, label %235

109:                                              ; preds = %92
  %110 = and i32 %96, 15
  %111 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %112 = getelementptr inbounds %struct.alps_data, ptr %111, i32 0, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr %struct.alps_nibble_commands, ptr %113, i32 %110
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 3840
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr %struct.alps_nibble_commands, ptr %113, i32 %110, i32 1
  %119 = select i1 %117, ptr %118, ptr %8
  %120 = call i32 @ps2_command(ptr noundef %16, ptr noundef %119, i32 noundef %115) #16
  %121 = icmp eq i32 %120, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br i1 %121, label %122, label %235

122:                                              ; preds = %109
  %123 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 7) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %235

125:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %126 = call i32 @ps2_command(ptr noundef %16, ptr noundef nonnull %7, i32 noundef 1001) #16
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i8, ptr %7, align 4
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 8
  %132 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %131, %134
  %136 = icmp eq i32 %135, 7
  br i1 %136, label %138, label %137

137:                                              ; preds = %128, %125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %235

138:                                              ; preds = %128
  %139 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  %140 = load i8, ptr %139, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %141 = or i8 %140, 1
  %142 = zext i8 %141 to i32
  %143 = lshr i32 %142, 4
  %144 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %145 = getelementptr inbounds %struct.alps_data, ptr %144, i32 0, i32 6
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr %struct.alps_nibble_commands, ptr %146, i32 %143
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 3840
  %150 = icmp eq i32 %149, 0
  %151 = getelementptr %struct.alps_nibble_commands, ptr %146, i32 %143, i32 1
  %152 = select i1 %150, ptr %151, ptr %6
  %153 = call i32 @ps2_command(ptr noundef %16, ptr noundef %152, i32 noundef %148) #16
  %154 = icmp eq i32 %153, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %154, label %155, label %235

155:                                              ; preds = %138
  %156 = and i32 %142, 15
  %157 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %158 = getelementptr inbounds %struct.alps_data, ptr %157, i32 0, i32 6
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr %struct.alps_nibble_commands, ptr %159, i32 %156
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 3840
  %163 = icmp eq i32 %162, 0
  %164 = getelementptr %struct.alps_nibble_commands, ptr %159, i32 %156, i32 1
  %165 = select i1 %163, ptr %164, ptr %5
  %166 = call i32 @ps2_command(ptr noundef %16, ptr noundef %165, i32 noundef %161) #16
  %167 = icmp eq i32 %166, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br i1 %167, label %168, label %235

168:                                              ; preds = %155
  %169 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 324) #16
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %235

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %172 = call i32 @ps2_command(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1001) #16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load i8, ptr %4, align 4
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 8
  %178 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = or i32 %177, %180
  %182 = icmp eq i32 %181, 324
  br i1 %182, label %184, label %183

183:                                              ; preds = %174, %171
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %235

184:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %185 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %186 = getelementptr inbounds %struct.alps_data, ptr %185, i32 0, i32 6
  %187 = load ptr, ptr %186, align 4
  %188 = load i32, ptr %187, align 4
  %189 = and i32 %188, 3840
  %190 = icmp eq i32 %189, 0
  %191 = getelementptr %struct.alps_nibble_commands, ptr %187, i32 0, i32 1
  %192 = select i1 %190, ptr %191, ptr %3
  %193 = call i32 @ps2_command(ptr noundef %16, ptr noundef %192, i32 noundef %188) #16
  %194 = icmp eq i32 %193, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %194, label %195, label %235

195:                                              ; preds = %184
  %196 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %197 = getelementptr inbounds %struct.alps_data, ptr %196, i32 0, i32 6
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr %struct.alps_nibble_commands, ptr %198, i32 4
  %200 = load i32, ptr %199, align 4
  %201 = and i32 %200, 3840
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr %struct.alps_nibble_commands, ptr %198, i32 4, i32 1
  %204 = select i1 %202, ptr %203, ptr %2
  %205 = call i32 @ps2_command(ptr noundef %16, ptr noundef %204, i32 noundef %200) #16
  %206 = icmp eq i32 %205, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br i1 %206, label %207, label %235

207:                                              ; preds = %195
  %208 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %0, i32 noundef 345)
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %235, label %210

210:                                              ; preds = %207
  %211 = call fastcc i32 @__alps_command_mode_write_reg(ptr noundef %0, i8 noundef zeroext 3)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %235

213:                                              ; preds = %210
  %214 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %0, i32 noundef 355)
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %235, label %216

216:                                              ; preds = %213
  %217 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 355, i8 noundef zeroext 3)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %216
  %220 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %0, i32 noundef 354)
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %235, label %222

222:                                              ; preds = %219
  %223 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 354, i8 noundef zeroext 4)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = call i32 @ps2_command(ptr noundef %16, ptr noundef null, i32 noundef 234) #16
  store i8 100, ptr %14, align 4
  %227 = call i32 @ps2_command(ptr noundef %16, ptr noundef nonnull %14, i32 noundef 4339) #16
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = call i32 @ps2_command(ptr noundef %16, ptr noundef null, i32 noundef 244) #16
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %229, %225
  %233 = load ptr, ptr %16, align 4
  %234 = getelementptr inbounds %struct.serio, ptr %233, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.18) #17
  br label %237

235:                                              ; preds = %222, %219, %216, %213, %210, %207, %195, %184, %183, %168, %155, %138, %137, %122, %109, %92, %91, %76, %73, %21
  %236 = call i32 @ps2_command(ptr noundef %16, ptr noundef null, i32 noundef 234) #16
  br label %237

237:                                              ; preds = %235, %232, %229
  %238 = phi i32 [ -1, %235 ], [ -1, %232 ], [ 0, %229 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_process_packet_v3(ptr noundef %0) #0 {
  %2 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 63
  br i1 %4, label %5, label %72

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.alps_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.alps_data, ptr %6, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.22) #17
  br label %73

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 64
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 127
  %26 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 127
  %29 = select i1 %25, i1 %28, i1 false
  %30 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %31 = load i8, ptr %30, align 1
  br i1 %29, label %34, label %32

32:                                               ; preds = %22
  %33 = and i8 %27, 127
  br label %36

34:                                               ; preds = %22
  %35 = icmp eq i8 %31, 127
  br i1 %35, label %73, label %36

36:                                               ; preds = %34, %32
  %37 = phi i8 [ 127, %34 ], [ %33, %32 ]
  %38 = shl i8 %19, 2
  %39 = and i8 %38, -128
  %40 = and i8 %24, 127
  %41 = or i8 %40, %39
  %42 = shl i8 %19, 3
  %43 = and i8 %42, -128
  %44 = or i8 %37, %43
  %45 = and i8 %31, 127
  %46 = zext i8 %45 to i32
  %47 = sdiv i8 %41, 8
  %48 = sext i8 %47 to i32
  %49 = sdiv i8 %44, -8
  tail call void @input_event(ptr noundef %8, i32 noundef 2, i32 noundef 0, i32 noundef %48) #16
  %50 = sext i8 %49 to i32
  tail call void @input_event(ptr noundef %8, i32 noundef 2, i32 noundef 1, i32 noundef %50) #16
  tail call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 24, i32 noundef %46) #16
  %51 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 1
  %55 = getelementptr inbounds %struct.alps_data, ptr %6, i32 0, i32 29
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = icmp ne i8 %57, 0
  %59 = and i32 %53, 7
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %36
  %63 = or i8 %56, 1
  store i8 %63, ptr %55, align 4
  br label %66

64:                                               ; preds = %36
  %65 = icmp eq i8 %57, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %64, %62
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 272, i32 noundef %54) #16
  %67 = lshr i32 %53, 1
  %68 = and i32 %67, 1
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 273, i32 noundef %68) #16
  %69 = lshr i32 %53, 2
  %70 = and i32 %69, 1
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 274, i32 noundef %70) #16
  br label %71

71:                                               ; preds = %66, %64
  tail call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %73

72:                                               ; preds = %1
  tail call void @alps_process_touchpad_packet_v3_v5(ptr noundef %0)
  br label %73

73:                                               ; preds = %72, %71, %34, %17, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_set_abs_params_semi_mt(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @alps_set_abs_params_mt_common(ptr noundef %0, ptr noundef %1)
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #16
  %3 = tail call i32 @input_mt_init_slots(ptr noundef %1, i32 noundef 4, i32 noundef 21) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_pinnacle(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #8 {
  %4 = getelementptr i8, ptr %1, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %7 = lshr i8 %5, 6
  %8 = and i8 %7, 1
  %9 = load i8, ptr %6, align 4
  %10 = and i8 %9, -2
  %11 = or i8 %10, %8
  store i8 %11, ptr %6, align 4
  %12 = load i8, ptr %1, align 1
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 2
  %15 = and i8 %11, -3
  %16 = or i8 %14, %15
  store i8 %16, ptr %6, align 4
  %17 = icmp eq i8 %14, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %3
  %19 = getelementptr i8, ptr %1, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 3
  %22 = add nuw nsw i8 %21, 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = load i8, ptr %4, align 1
  %26 = and i8 %25, 126
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = getelementptr i8, ptr %1, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 127
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 2
  %34 = or i32 %33, %28
  %35 = load i8, ptr %1, align 1
  %36 = lshr i8 %35, 4
  %37 = and i8 %36, 3
  %38 = zext i8 %37 to i32
  %39 = or i32 %34, %38
  store i32 %39, ptr %0, align 4
  %40 = getelementptr i8, ptr %1, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 112
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 4
  %45 = getelementptr i8, ptr %1, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = shl i8 %46, 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %44, %48
  %50 = load i8, ptr %4, align 1
  %51 = and i8 %50, 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  br label %118

55:                                               ; preds = %3
  %56 = getelementptr i8, ptr %1, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 127
  %59 = zext i8 %58 to i16
  %60 = shl nuw nsw i16 %59, 4
  %61 = load i8, ptr %4, align 1
  %62 = lshr i8 %61, 2
  %63 = and i8 %62, 12
  %64 = zext i8 %63 to i16
  %65 = or i16 %60, %64
  %66 = load i8, ptr %1, align 1
  %67 = lshr i8 %66, 4
  %68 = and i8 %67, 3
  %69 = zext i8 %68 to i16
  %70 = or i16 %65, %69
  %71 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 4
  store i16 %70, ptr %71, align 4
  %72 = getelementptr i8, ptr %1, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 127
  %75 = zext i8 %74 to i16
  %76 = shl nuw nsw i16 %75, 4
  %77 = load i8, ptr %4, align 1
  %78 = and i8 %77, 15
  %79 = zext i8 %78 to i16
  %80 = or i16 %76, %79
  %81 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 4, i32 1
  store i16 %80, ptr %81, align 2
  %82 = getelementptr i8, ptr %1, i32 5
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 127
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 3
  store i32 %85, ptr %86, align 4
  %87 = getelementptr i8, ptr %1, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = shl i8 %88, 2
  %90 = and i8 %89, 4
  %91 = and i8 %16, -5
  %92 = or i8 %90, %91
  store i8 %92, ptr %6, align 4
  %93 = load i8, ptr %87, align 1
  %94 = shl i8 %93, 2
  %95 = and i8 %94, 8
  %96 = and i8 %92, -9
  %97 = or i8 %95, %96
  store i8 %97, ptr %6, align 4
  %98 = load i8, ptr %87, align 1
  %99 = shl i8 %98, 2
  %100 = and i8 %99, 16
  %101 = and i8 %97, -17
  %102 = or i8 %101, %100
  store i8 %102, ptr %6, align 4
  %103 = load i8, ptr %87, align 1
  %104 = shl i8 %103, 1
  %105 = and i8 %104, 32
  %106 = and i8 %102, -33
  %107 = or i8 %106, %105
  store i8 %107, ptr %6, align 4
  %108 = load i8, ptr %87, align 1
  %109 = shl i8 %108, 1
  %110 = and i8 %109, 64
  %111 = and i8 %107, -65
  %112 = or i8 %111, %110
  store i8 %112, ptr %6, align 4
  %113 = load i8, ptr %87, align 1
  %114 = shl i8 %113, 1
  %115 = and i8 %114, -128
  %116 = and i8 %112, 127
  %117 = or i8 %116, %115
  store i8 %117, ptr %6, align 4
  br label %118

118:                                              ; preds = %55, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_rushmore_v3(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.alps_data, ptr %6, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = tail call fastcc i32 @alps_setup_trackstick_v3(ptr noundef %0, i32 noundef 49856)
  %14 = icmp eq i32 %13, -5
  br i1 %14, label %98, label %15

15:                                               ; preds = %12, %1
  %16 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %98

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49881) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %22 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %5, i32 noundef 1001) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8, ptr %5, align 4
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %27, %30
  %32 = icmp eq i32 %31, 49881
  br i1 %32, label %34, label %33

33:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %98

34:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %35 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49867) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %39 = getelementptr inbounds %struct.alps_data, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 3840
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr %struct.alps_nibble_commands, ptr %40, i32 0, i32 1
  %45 = select i1 %43, ptr %44, ptr %4
  %46 = call i32 @ps2_command(ptr noundef %7, ptr noundef %45, i32 noundef %41) #16
  %47 = icmp eq i32 %46, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br i1 %47, label %48, label %98

48:                                               ; preds = %37
  %49 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %50 = getelementptr inbounds %struct.alps_data, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 3840
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr %struct.alps_nibble_commands, ptr %51, i32 0, i32 1
  %56 = select i1 %54, ptr %55, ptr %3
  %57 = call i32 @ps2_command(ptr noundef %7, ptr noundef %56, i32 noundef %52) #16
  %58 = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %58, label %59, label %98

59:                                               ; preds = %48
  %60 = call fastcc i32 @alps_get_v3_v7_resolution(ptr noundef %0, i32 noundef 49882)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  %63 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49862) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %66 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1001) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8, ptr %2, align 4
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %71, %74
  %76 = icmp eq i32 %75, 49862
  br i1 %76, label %78, label %77

77:                                               ; preds = %68, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %98

78:                                               ; preds = %68
  %79 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  %80 = load i8, ptr %79, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %81 = and i8 %80, -3
  %82 = call fastcc i32 @__alps_command_mode_write_reg(ptr noundef %0, i8 noundef zeroext %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 49865, i8 noundef zeroext 100)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %0, i32 noundef 49860)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = trunc i32 %88 to i8
  %92 = or i8 %91, 2
  %93 = call fastcc i32 @__alps_command_mode_write_reg(ptr noundef %0, i8 noundef zeroext %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = call i32 @ps2_command(ptr noundef %7, ptr noundef null, i32 noundef 234) #16
  %97 = call i32 @ps2_command(ptr noundef %7, ptr noundef null, i32 noundef 244) #16
  br label %100

98:                                               ; preds = %90, %87, %84, %78, %77, %62, %59, %48, %37, %34, %33, %18, %15, %12
  %99 = call i32 @ps2_command(ptr noundef %7, ptr noundef null, i32 noundef 234) #16
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i32 [ -1, %98 ], [ %97, %95 ]
  ret i32 %101
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_rushmore(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = getelementptr i8, ptr %1, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %7 = lshr i8 %5, 6
  %8 = and i8 %7, 1
  %9 = load i8, ptr %6, align 4
  %10 = and i8 %9, -2
  %11 = or i8 %10, %8
  store i8 %11, ptr %6, align 4
  %12 = getelementptr i8, ptr %1, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = lshr i8 %13, 5
  %15 = and i8 %14, 2
  %16 = and i8 %11, -3
  %17 = or i8 %15, %16
  store i8 %17, ptr %6, align 4
  %18 = icmp eq i8 %15, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %3
  %20 = load i8, ptr %12, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 3
  %23 = lshr i32 %21, 2
  %24 = and i32 %23, 3
  %25 = tail call i32 @llvm.umax.i32(i32 %22, i32 %24)
  %26 = add nuw nsw i32 %25, 1
  %27 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = load i8, ptr %12, align 1
  %29 = and i8 %28, 16
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 11
  %32 = load i8, ptr %4, align 1
  %33 = and i8 %32, 126
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %35, %31
  %37 = getelementptr i8, ptr %1, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 127
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 2
  %42 = or i32 %36, %41
  %43 = load i8, ptr %1, align 1
  %44 = lshr i8 %43, 4
  %45 = and i8 %44, 3
  %46 = zext i8 %45 to i32
  %47 = or i32 %42, %46
  store i32 %47, ptr %0, align 4
  %48 = load i8, ptr %12, align 1
  %49 = and i8 %48, 32
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 6
  %52 = getelementptr i8, ptr %1, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 112
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 4
  %57 = or i32 %56, %51
  %58 = getelementptr i8, ptr %1, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = shl i8 %59, 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %57, %61
  %63 = load i8, ptr %4, align 1
  %64 = and i8 %63, 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %62, %65
  %67 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 1
  store i32 %66, ptr %67, align 4
  br label %130

68:                                               ; preds = %3
  %69 = getelementptr i8, ptr %1, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 127
  %72 = zext i8 %71 to i16
  %73 = shl nuw nsw i16 %72, 4
  %74 = load i8, ptr %4, align 1
  %75 = lshr i8 %74, 2
  %76 = and i8 %75, 12
  %77 = zext i8 %76 to i16
  %78 = or i16 %73, %77
  %79 = load i8, ptr %1, align 1
  %80 = lshr i8 %79, 4
  %81 = and i8 %80, 3
  %82 = zext i8 %81 to i16
  %83 = or i16 %78, %82
  %84 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 4
  store i16 %83, ptr %84, align 4
  %85 = getelementptr i8, ptr %1, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, 127
  %88 = zext i8 %87 to i16
  %89 = shl nuw nsw i16 %88, 4
  %90 = load i8, ptr %4, align 1
  %91 = and i8 %90, 15
  %92 = zext i8 %91 to i16
  %93 = or i16 %89, %92
  %94 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 4, i32 1
  store i16 %93, ptr %94, align 2
  %95 = load i8, ptr %12, align 1
  %96 = and i8 %95, 127
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 3
  store i32 %97, ptr %98, align 4
  %99 = getelementptr i8, ptr %1, i32 3
  %100 = load i8, ptr %99, align 1
  %101 = shl i8 %100, 2
  %102 = and i8 %101, 4
  %103 = and i8 %17, -5
  %104 = or i8 %102, %103
  store i8 %104, ptr %6, align 4
  %105 = load i8, ptr %99, align 1
  %106 = shl i8 %105, 2
  %107 = and i8 %106, 8
  %108 = and i8 %104, -9
  %109 = or i8 %107, %108
  store i8 %109, ptr %6, align 4
  %110 = load i8, ptr %99, align 1
  %111 = shl i8 %110, 2
  %112 = and i8 %111, 16
  %113 = and i8 %109, -17
  %114 = or i8 %113, %112
  store i8 %114, ptr %6, align 4
  %115 = load i8, ptr %99, align 1
  %116 = shl i8 %115, 1
  %117 = and i8 %116, 32
  %118 = and i8 %114, -33
  %119 = or i8 %118, %117
  store i8 %119, ptr %6, align 4
  %120 = load i8, ptr %99, align 1
  %121 = shl i8 %120, 1
  %122 = and i8 %121, 64
  %123 = and i8 %119, -65
  %124 = or i8 %123, %122
  store i8 %124, ptr %6, align 4
  %125 = load i8, ptr %99, align 1
  %126 = shl i8 %125, 1
  %127 = and i8 %126, -128
  %128 = and i8 %124, 127
  %129 = or i8 %128, %127
  store i8 %129, ptr %6, align 4
  br label %130

130:                                              ; preds = %68, %19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v4(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 4
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  store i32 0, ptr %11, align 4, !annotation !9
  %13 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %182

15:                                               ; preds = %1
  %16 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 4) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !annotation !9
  %19 = call i32 @ps2_command(ptr noundef %12, ptr noundef nonnull %10, i32 noundef 1001) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i8, ptr %10, align 4
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %31, label %30

30:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %61

31:                                               ; preds = %21
  %32 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 2
  %33 = load i8, ptr %32, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  %34 = or i8 %33, 2
  %35 = zext i8 %34 to i32
  %36 = lshr i32 %35, 4
  %37 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  %38 = getelementptr inbounds %struct.alps_data, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %struct.alps_nibble_commands, ptr %39, i32 %36
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 3840
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr %struct.alps_nibble_commands, ptr %39, i32 %36, i32 1
  %45 = select i1 %43, ptr %44, ptr %9
  %46 = call i32 @ps2_command(ptr noundef %12, ptr noundef %45, i32 noundef %41) #16
  %47 = icmp eq i32 %46, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br i1 %47, label %48, label %61

48:                                               ; preds = %31
  %49 = and i32 %35, 15
  %50 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %51 = getelementptr inbounds %struct.alps_data, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.alps_nibble_commands, ptr %52, i32 %49
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 3840
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr %struct.alps_nibble_commands, ptr %52, i32 %49, i32 1
  %58 = select i1 %56, ptr %57, ptr %8
  %59 = call i32 @ps2_command(ptr noundef %12, ptr noundef %58, i32 noundef %54) #16
  %60 = icmp eq i32 %59, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br i1 %60, label %64, label %61

61:                                               ; preds = %48, %31, %30, %15
  %62 = load ptr, ptr %12, align 4
  %63 = getelementptr inbounds %struct.serio, ptr %62, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.17) #17
  br label %182

64:                                               ; preds = %48
  %65 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 7) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %182

67:                                               ; preds = %64
  %68 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %69 = getelementptr inbounds %struct.alps_data, ptr %68, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr %struct.alps_nibble_commands, ptr %70, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 3840
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr %struct.alps_nibble_commands, ptr %70, i32 8, i32 1
  %76 = select i1 %74, ptr %75, ptr %7
  %77 = call i32 @ps2_command(ptr noundef %12, ptr noundef %76, i32 noundef %72) #16
  %78 = icmp eq i32 %77, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br i1 %78, label %79, label %182

79:                                               ; preds = %67
  %80 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %81 = getelementptr inbounds %struct.alps_data, ptr %80, i32 0, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr %struct.alps_nibble_commands, ptr %82, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 3840
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr %struct.alps_nibble_commands, ptr %82, i32 12, i32 1
  %88 = select i1 %86, ptr %87, ptr %6
  %89 = call i32 @ps2_command(ptr noundef %12, ptr noundef %88, i32 noundef %84) #16
  %90 = icmp eq i32 %89, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %90, label %91, label %182

91:                                               ; preds = %79
  %92 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 329) #16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %182

94:                                               ; preds = %91
  %95 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %96 = getelementptr inbounds %struct.alps_data, ptr %95, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 3840
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr %struct.alps_nibble_commands, ptr %97, i32 0, i32 1
  %102 = select i1 %100, ptr %101, ptr %5
  %103 = call i32 @ps2_command(ptr noundef %12, ptr noundef %102, i32 noundef %98) #16
  %104 = icmp eq i32 %103, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br i1 %104, label %105, label %182

105:                                              ; preds = %94
  %106 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %107 = getelementptr inbounds %struct.alps_data, ptr %106, i32 0, i32 6
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.alps_nibble_commands, ptr %108, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 3840
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr %struct.alps_nibble_commands, ptr %108, i32 3, i32 1
  %114 = select i1 %112, ptr %113, ptr %4
  %115 = call i32 @ps2_command(ptr noundef %12, ptr noundef %114, i32 noundef %110) #16
  %116 = icmp eq i32 %115, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br i1 %116, label %117, label %182

117:                                              ; preds = %105
  %118 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 352) #16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %182

120:                                              ; preds = %117
  %121 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %122 = getelementptr inbounds %struct.alps_data, ptr %121, i32 0, i32 6
  %123 = load ptr, ptr %122, align 4
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 3840
  %126 = icmp eq i32 %125, 0
  %127 = getelementptr %struct.alps_nibble_commands, ptr %123, i32 0, i32 1
  %128 = select i1 %126, ptr %127, ptr %3
  %129 = call i32 @ps2_command(ptr noundef %12, ptr noundef %128, i32 noundef %124) #16
  %130 = icmp eq i32 %129, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %130, label %131, label %182

131:                                              ; preds = %120
  %132 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %133 = getelementptr inbounds %struct.alps_data, ptr %132, i32 0, i32 6
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr %struct.alps_nibble_commands, ptr %134, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 3840
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr %struct.alps_nibble_commands, ptr %134, i32 3, i32 1
  %140 = select i1 %138, ptr %139, ptr %2
  %141 = call i32 @ps2_command(ptr noundef %12, ptr noundef %140, i32 noundef %136) #16
  %142 = icmp eq i32 %141, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br i1 %142, label %143, label %182

143:                                              ; preds = %131
  %144 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 383, i8 noundef zeroext 21)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %182

146:                                              ; preds = %143
  %147 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 337, i8 noundef zeroext 1)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %182

149:                                              ; preds = %146
  %150 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 360, i8 noundef zeroext 3)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %182

152:                                              ; preds = %149
  %153 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 330, i8 noundef zeroext 3)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %152
  %156 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 353, i8 noundef zeroext 3)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %155
  %159 = call i32 @ps2_command(ptr noundef %12, ptr noundef null, i32 noundef 234) #16
  store i8 -56, ptr %11, align 4
  %160 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 1
  store i8 100, ptr %160, align 1
  %161 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 2
  store i8 80, ptr %161, align 2
  %162 = call i32 @ps2_command(ptr noundef %12, ptr noundef nonnull %11, i32 noundef 4339) #16
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %158
  %165 = call i32 @ps2_command(ptr noundef %12, ptr noundef %160, i32 noundef 4339) #16
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %164
  %168 = call i32 @ps2_command(ptr noundef %12, ptr noundef %161, i32 noundef 4339) #16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = call i32 @ps2_command(ptr noundef %12, ptr noundef nonnull %11, i32 noundef 754) #16
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %170
  store i8 100, ptr %11, align 4
  %174 = call i32 @ps2_command(ptr noundef %12, ptr noundef nonnull %11, i32 noundef 4339) #16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = call i32 @ps2_command(ptr noundef %12, ptr noundef null, i32 noundef 244) #16
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %176, %173
  %180 = load ptr, ptr %12, align 4
  %181 = getelementptr inbounds %struct.serio, ptr %180, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.18) #17
  br label %184

182:                                              ; preds = %155, %152, %149, %146, %143, %131, %120, %117, %105, %94, %91, %79, %67, %64, %61, %1
  %183 = call i32 @ps2_command(ptr noundef %12, ptr noundef null, i32 noundef 234) #16
  br label %184

184:                                              ; preds = %182, %179, %176, %170, %167, %164, %158
  %185 = phi i32 [ -1, %182 ], [ -1, %179 ], [ -1, %170 ], [ -1, %167 ], [ -1, %164 ], [ -1, %158 ], [ 0, %176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_process_packet_v4(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28
  %5 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 25
  br i1 %8, label %11, label %10

10:                                               ; preds = %1
  store i32 0, ptr %9, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load i32, ptr %9, align 4
  %13 = icmp sgt i32 %12, 2
  %14 = load i1, ptr @alps_process_packet_v4.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %11
  store i1 true, ptr @alps_process_packet_v4.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 906, i32 noundef 9, ptr noundef null) #16
  br label %120

18:                                               ; preds = %11
  br i1 %13, label %120, label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 1
  %23 = load i8, ptr %5, align 1
  %24 = getelementptr %struct.alps_data, ptr %2, i32 0, i32 27, i32 %22
  store i8 %23, ptr %24, align 1
  %25 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 7
  %26 = load i8, ptr %25, align 1
  %27 = or i32 %22, 1
  %28 = getelementptr %struct.alps_data, ptr %2, i32 0, i32 27, i32 %27
  store i8 %26, ptr %28, align 1
  %29 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 6
  %32 = load i8, ptr %31, align 4
  %33 = shl i8 %30, 2
  %34 = and i8 %33, 4
  %35 = and i8 %32, -5
  %36 = or i8 %35, %34
  store i8 %36, ptr %31, align 4
  %37 = load i8, ptr %29, align 1
  %38 = shl i8 %37, 2
  %39 = and i8 %38, 8
  %40 = and i8 %36, -9
  %41 = or i8 %39, %40
  store i8 %41, ptr %31, align 4
  %42 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 127
  %45 = zext i8 %44 to i16
  %46 = shl nuw nsw i16 %45, 4
  %47 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = lshr i8 %48, 2
  %50 = and i8 %49, 12
  %51 = zext i8 %50 to i16
  %52 = or i16 %46, %51
  %53 = load i8, ptr %3, align 1
  %54 = lshr i8 %53, 4
  %55 = and i8 %54, 3
  %56 = zext i8 %55 to i16
  %57 = or i16 %52, %56
  %58 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 4
  store i16 %57, ptr %58, align 4
  %59 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 127
  %62 = zext i8 %61 to i16
  %63 = shl nuw nsw i16 %62, 4
  %64 = load i8, ptr %47, align 1
  %65 = and i8 %64, 15
  %66 = zext i8 %65 to i16
  %67 = or i16 %63, %66
  %68 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 4, i32 1
  store i16 %67, ptr %68, align 2
  %69 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 127
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 3
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %20, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %20, align 4
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %19
  %78 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 2
  %79 = load i32, ptr %78, align 4
  br label %118

80:                                               ; preds = %19
  %81 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 27
  store i32 0, ptr %20, align 4
  %82 = getelementptr %struct.alps_data, ptr %2, i32 0, i32 27, i32 2
  %83 = load i8, ptr %82, align 2
  %84 = and i8 %83, 31
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 10
  %87 = getelementptr %struct.alps_data, ptr %2, i32 0, i32 27, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, 96
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 3
  %92 = or i32 %91, %86
  %93 = load i8, ptr %81, align 4
  %94 = shl i8 %93, 2
  %95 = zext i8 %94 to i32
  %96 = or i32 %92, %95
  %97 = getelementptr %struct.alps_data, ptr %2, i32 0, i32 27, i32 1
  %98 = load i8, ptr %97, align 1
  %99 = lshr i8 %98, 5
  %100 = and i8 %99, 3
  %101 = zext i8 %100 to i32
  %102 = or i32 %96, %101
  store i32 %102, ptr %4, align 4
  %103 = getelementptr %struct.alps_data, ptr %2, i32 0, i32 27, i32 5
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 10
  %108 = and i8 %88, 31
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 5
  %111 = or i32 %107, %110
  %112 = and i8 %98, 31
  %113 = zext i8 %112 to i32
  %114 = or i32 %111, %113
  %115 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 1
  store i32 %114, ptr %115, align 4
  %116 = tail call fastcc i32 @alps_process_bitmap(ptr noundef %2, ptr noundef %4)
  %117 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 2
  store i32 %116, ptr %117, align 4
  br label %118

118:                                              ; preds = %80, %77
  %119 = phi i32 [ %79, %77 ], [ %116, %80 ]
  tail call fastcc void @alps_report_semi_mt_data(ptr noundef %0, i32 noundef %119)
  br label %120

120:                                              ; preds = %118, %18, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_dolphin_v1(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 10340, ptr %2, align 2, !annotation !9
  %4 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %5 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 234) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4339) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = call i32 @ps2_command(ptr noundef %3, ptr noundef %4, i32 noundef 4339) #16
  %12 = icmp ne i32 %11, 0
  %13 = sext i1 %12 to i32
  br label %14

14:                                               ; preds = %10, %7, %1
  %15 = phi i32 [ -1, %7 ], [ -1, %1 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_process_touchpad_packet_v3_v5(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false)
  %7 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, ptr noundef %3, ptr noundef %0) #16
  %10 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 27
  %23 = tail call i32 %21(ptr noundef %6, ptr noundef %22, ptr noundef %0) #16
  %24 = tail call fastcc i32 @alps_process_bitmap(ptr noundef %2, ptr noundef %6)
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 %20
  br label %28

27:                                               ; preds = %13
  store i32 0, ptr %10, align 4
  br label %28

28:                                               ; preds = %27, %18, %1
  %29 = phi i32 [ 0, %27 ], [ 0, %1 ], [ %26, %18 ]
  %30 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 6
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = load i32, ptr %10, align 4
  %36 = icmp ne i32 %35, 0
  %37 = and i8 %31, 1
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  store i32 1, ptr %10, align 4
  %41 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %41, ptr noundef align 1 dereferenceable(6) %3, i32 6, i1 false)
  br label %76

42:                                               ; preds = %34
  store i32 0, ptr %10, align 4
  %43 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 4
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 4, i32 1
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %50, %46, %42
  tail call fastcc void @alps_report_semi_mt_data(ptr noundef %0, i32 noundef %29)
  %55 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 13
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 29
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i8, ptr %30, align 4
  %66 = lshr i8 %65, 5
  %67 = and i8 %66, 1
  %68 = zext i8 %67 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 272, i32 noundef %68) #16
  %69 = load i8, ptr %30, align 4
  %70 = lshr i8 %69, 6
  %71 = and i8 %70, 1
  %72 = zext i8 %71 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 273, i32 noundef %72) #16
  %73 = load i8, ptr %30, align 4
  %74 = lshr i8 %73, 7
  %75 = zext i8 %74 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 274, i32 noundef %75) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %76

76:                                               ; preds = %64, %59, %54, %50, %40, %28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_dolphin(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 {
  %4 = load ptr, ptr %2, align 4
  %5 = load i8, ptr %1, align 1
  %6 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %7 = lshr i8 %5, 1
  %8 = and i8 %7, 1
  %9 = load i8, ptr %6, align 4
  %10 = and i8 %9, -2
  %11 = or i8 %10, %8
  store i8 %11, ptr %6, align 4
  %12 = load i8, ptr %1, align 1
  %13 = lshr i8 %12, 4
  %14 = and i8 %13, 2
  %15 = and i8 %11, -3
  %16 = or i8 %14, %15
  store i8 %16, ptr %6, align 4
  %17 = icmp eq i8 %14, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %3
  %19 = getelementptr i8, ptr %1, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 127
  %22 = zext i8 %21 to i16
  %23 = getelementptr i8, ptr %1, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 15
  %26 = zext i8 %25 to i16
  %27 = shl nuw nsw i16 %26, 7
  %28 = or i16 %27, %22
  %29 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 4
  store i16 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %1, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 127
  %33 = zext i8 %32 to i16
  %34 = load i8, ptr %23, align 1
  %35 = and i8 %34, -16
  %36 = zext i8 %35 to i16
  %37 = shl nuw nsw i16 %36, 3
  %38 = or i16 %37, %33
  %39 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 4, i32 1
  store i16 %38, ptr %39, align 2
  %40 = load i8, ptr %1, align 1
  %41 = and i8 %40, 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %18
  %44 = getelementptr i8, ptr %1, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 127
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %43, %18
  %49 = phi i32 [ %47, %43 ], [ 0, %18 ]
  %50 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %1, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = shl i8 %52, 2
  %54 = and i8 %53, 4
  %55 = and i8 %16, -5
  %56 = or i8 %54, %55
  store i8 %56, ptr %6, align 4
  %57 = load i8, ptr %51, align 1
  %58 = shl i8 %57, 2
  %59 = and i8 %58, 8
  %60 = and i8 %56, -9
  %61 = or i8 %59, %60
  store i8 %61, ptr %6, align 4
  %62 = load i8, ptr %51, align 1
  %63 = shl i8 %62, 2
  %64 = and i8 %63, 16
  %65 = and i8 %61, -17
  %66 = or i8 %65, %64
  store i8 %66, ptr %6, align 4
  %67 = load i8, ptr %51, align 1
  %68 = shl i8 %67, 1
  %69 = and i8 %68, 32
  %70 = and i8 %66, -33
  %71 = or i8 %70, %69
  store i8 %71, ptr %6, align 4
  %72 = load i8, ptr %51, align 1
  %73 = shl i8 %72, 1
  %74 = and i8 %73, 64
  %75 = and i8 %71, -65
  %76 = or i8 %75, %74
  store i8 %76, ptr %6, align 4
  %77 = load i8, ptr %51, align 1
  %78 = shl i8 %77, 1
  %79 = and i8 %78, -128
  %80 = and i8 %76, 127
  %81 = or i8 %80, %79
  store i8 %81, ptr %6, align 4
  br label %145

82:                                               ; preds = %3
  %83 = load i8, ptr %1, align 1
  %84 = zext i8 %83 to i32
  %85 = lshr i32 %84, 1
  %86 = and i32 %85, 3
  %87 = lshr i32 %84, 2
  %88 = and i32 %87, 4
  %89 = or i32 %86, %88
  %90 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 %89, ptr %90, align 4
  %91 = getelementptr i8, ptr %1, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 127
  %94 = zext i8 %93 to i32
  %95 = getelementptr i8, ptr %1, i32 2
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, 127
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 7
  %100 = or i32 %99, %94
  %101 = getelementptr i8, ptr %1, i32 4
  %102 = load i8, ptr %101, align 1
  %103 = and i8 %102, 127
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 14
  %106 = or i32 %100, %105
  %107 = getelementptr i8, ptr %1, i32 5
  %108 = load i8, ptr %107, align 1
  %109 = and i8 %108, 127
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 21
  %112 = or i32 %106, %111
  %113 = getelementptr i8, ptr %1, i32 3
  %114 = load i8, ptr %113, align 1
  %115 = and i8 %114, 7
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 28
  %118 = or i32 %112, %117
  %119 = zext i32 %118 to i64
  %120 = and i8 %114, 112
  %121 = zext i8 %120 to i64
  %122 = shl nuw nsw i64 %121, 27
  %123 = or i64 %122, %119
  %124 = load i8, ptr %1, align 1
  %125 = and i8 %124, 1
  %126 = zext i8 %125 to i64
  %127 = shl nuw nsw i64 %126, 34
  %128 = or i64 %123, %127
  %129 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 17
  %130 = load i32, ptr %129, align 4
  %131 = shl nsw i32 -1, %130
  %132 = xor i32 %131, -1
  %133 = trunc i64 %123 to i32
  %134 = and i32 %133, %132
  %135 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 1
  store i32 %134, ptr %135, align 4
  %136 = load i32, ptr %129, align 4
  %137 = zext i32 %136 to i64
  %138 = lshr i64 %128, %137
  %139 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 16
  %140 = load i32, ptr %139, align 4
  %141 = shl nsw i32 -1, %140
  %142 = xor i32 %141, -1
  %143 = trunc i64 %138 to i32
  %144 = and i32 %143, %142
  store i32 %144, ptr %0, align 4
  br label %145

145:                                              ; preds = %82, %48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v6(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %0, i1 noundef zeroext true)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %58

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @alps_trackstick_enter_extended_mode_v3_v6(ptr noundef %0)
  %6 = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %0, i1 noundef zeroext false)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %12 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 236) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 1001) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 245) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 245) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 231) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 230) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 231) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 1001) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 244) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @alps_monitor_mode_send_word(ptr noundef %0, i16 noundef zeroext 160) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @alps_monitor_mode_send_word(ptr noundef %0, i16 noundef zeroext 0) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @alps_monitor_mode_send_word(ptr noundef %0, i16 noundef zeroext 385) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44, %41, %38, %35
  %48 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 236) #16
  br label %55

49:                                               ; preds = %44
  %50 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 245) #16
  %51 = icmp eq i32 %50, 0
  %52 = tail call i32 @ps2_command(ptr noundef %11, ptr noundef null, i32 noundef 236) #16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i1 %51, i1 false
  br i1 %54, label %58, label %55

55:                                               ; preds = %49, %47, %32, %29, %26, %23, %20, %17, %14, %10
  %56 = load ptr, ptr %11, align 4
  %57 = getelementptr inbounds %struct.serio, ptr %56, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.15) #17
  br label %58

58:                                               ; preds = %55, %49, %8, %4, %1
  %59 = phi i32 [ -1, %55 ], [ -1, %1 ], [ -1, %4 ], [ %5, %8 ], [ 0, %49 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_process_packet_v6(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 127
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.22) #17
  br label %79

20:                                               ; preds = %11
  %21 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 2
  %28 = and i32 %27, 128
  %29 = or i32 %28, %23
  %30 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %26, 1
  %34 = and i32 %33, 128
  %35 = or i32 %34, %32
  %36 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i32 %29, 127
  %39 = icmp eq i32 %35, 127
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i8 %37, 127
  %42 = select i1 %40, i1 %41, i1 false
  %43 = lshr i32 %29, 2
  %44 = select i1 %42, i32 0, i32 %43
  tail call void @input_event(ptr noundef %6, i32 noundef 2, i32 noundef 0, i32 noundef %44) #16
  %45 = lshr i32 %35, 2
  %46 = select i1 %42, i32 0, i32 %45
  %47 = sub nsw i32 0, %46
  tail call void @input_event(ptr noundef %6, i32 noundef 2, i32 noundef 1, i32 noundef %47) #16
  %48 = load i8, ptr %24, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %6, i8 noundef zeroext %48) #16
  tail call void @input_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %79

49:                                               ; preds = %1
  %50 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 120
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 4
  %58 = or i32 %57, %52
  %59 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 120
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 4
  %67 = or i32 %66, %61
  %68 = icmp ugt i8 %8, 30
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 330, i32 noundef 1) #16
  br label %74

70:                                               ; preds = %49
  %71 = icmp ult i8 %8, 25
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 330, i32 noundef 0) #16
  %73 = icmp eq i8 %8, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %72, %70, %69
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 0, i32 noundef %58) #16
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 1, i32 noundef %67) #16
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ 1, %74 ], [ 0, %72 ]
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 24, i32 noundef %9) #16
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 325, i32 noundef %76) #16
  %77 = load i8, ptr %53, align 1
  %78 = and i8 %77, -5
  store i8 %78, ptr %53, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %6, i8 noundef zeroext %78) #16
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %79

79:                                               ; preds = %75, %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v7(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [4 x i8], align 4
  %8 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %9 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %106

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49881) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %106

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %15 = call i32 @ps2_command(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 1001) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i8, ptr %7, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = icmp eq i32 %24, 49881
  br i1 %25, label %27, label %26

26:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %106

27:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %28 = call fastcc i32 @alps_get_v3_v7_resolution(ptr noundef %0, i32 noundef 50071)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %106

30:                                               ; preds = %27
  %31 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49865) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %35 = getelementptr inbounds %struct.alps_data, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.alps_nibble_commands, ptr %36, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 3840
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr %struct.alps_nibble_commands, ptr %36, i32 6, i32 1
  %42 = select i1 %40, ptr %41, ptr %6
  %43 = call i32 @ps2_command(ptr noundef %8, ptr noundef %42, i32 noundef %38) #16
  %44 = icmp eq i32 %43, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %44, label %45, label %106

45:                                               ; preds = %33
  %46 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %47 = getelementptr inbounds %struct.alps_data, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr %struct.alps_nibble_commands, ptr %48, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 3840
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr %struct.alps_nibble_commands, ptr %48, i32 4, i32 1
  %54 = select i1 %52, ptr %53, ptr %5
  %55 = call i32 @ps2_command(ptr noundef %8, ptr noundef %54, i32 noundef %50) #16
  %56 = icmp eq i32 %55, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br i1 %56, label %57, label %106

57:                                               ; preds = %45
  %58 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef 49860) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %106

60:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %61 = call i32 @ps2_command(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 1001) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i8, ptr %4, align 4
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %66, %69
  %71 = icmp eq i32 %70, 49860
  br i1 %71, label %73, label %72

72:                                               ; preds = %63, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %106

73:                                               ; preds = %63
  %74 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %75 = load i8, ptr %74, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %76 = or i8 %75, 2
  %77 = zext i8 %76 to i32
  %78 = lshr i32 %77, 4
  %79 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %80 = getelementptr inbounds %struct.alps_data, ptr %79, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr %struct.alps_nibble_commands, ptr %81, i32 %78
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 3840
  %85 = icmp eq i32 %84, 0
  %86 = getelementptr %struct.alps_nibble_commands, ptr %81, i32 %78, i32 1
  %87 = select i1 %85, ptr %86, ptr %3
  %88 = call i32 @ps2_command(ptr noundef %8, ptr noundef %87, i32 noundef %83) #16
  %89 = icmp eq i32 %88, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %89, label %90, label %106

90:                                               ; preds = %73
  %91 = and i32 %77, 15
  %92 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %93 = getelementptr inbounds %struct.alps_data, ptr %92, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr %struct.alps_nibble_commands, ptr %94, i32 %91
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 3840
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr %struct.alps_nibble_commands, ptr %94, i32 %91, i32 1
  %100 = select i1 %98, ptr %99, ptr %2
  %101 = call i32 @ps2_command(ptr noundef %8, ptr noundef %100, i32 noundef %96) #16
  %102 = icmp eq i32 %101, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = call i32 @ps2_command(ptr noundef %8, ptr noundef null, i32 noundef 234) #16
  %105 = call i32 @ps2_command(ptr noundef %8, ptr noundef null, i32 noundef 244) #16
  br label %108

106:                                              ; preds = %90, %73, %72, %57, %45, %33, %30, %27, %26, %11, %1
  %107 = call i32 @ps2_command(ptr noundef %8, ptr noundef null, i32 noundef 234) #16
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i32 [ -1, %106 ], [ %105, %103 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_process_packet_v7(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 72
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  %6 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 71
  %9 = icmp eq i8 %8, 6
  br i1 %9, label %10, label %49

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.alps_data, ptr %11, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.22) #17
  br label %117

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.alps_data, ptr %11, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, -65
  %26 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = shl i8 %27, 2
  %29 = and i8 %28, 64
  %30 = or i8 %29, %25
  %31 = and i8 %27, 7
  %32 = and i8 %7, -72
  %33 = or i8 %31, %32
  %34 = shl i8 %27, 1
  %35 = and i8 %34, 64
  %36 = or i8 %33, %35
  %37 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 63
  %40 = lshr i8 %27, 1
  %41 = and i8 %40, 64
  %42 = or i8 %39, %41
  %43 = zext i8 %42 to i32
  %44 = zext i8 %30 to i32
  tail call void @input_event(ptr noundef %22, i32 noundef 2, i32 noundef 0, i32 noundef %44) #16
  %45 = zext i8 %36 to i32
  %46 = sub nsw i32 0, %45
  tail call void @input_event(ptr noundef %22, i32 noundef 2, i32 noundef 1, i32 noundef %46) #16
  tail call void @input_event(ptr noundef %22, i32 noundef 3, i32 noundef 24, i32 noundef %43) #16
  %47 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %48 = load i8, ptr %47, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %22, i8 noundef zeroext %48) #16
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %117

49:                                               ; preds = %5, %1
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.alps_data, ptr %50, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %53, i8 0, i32 40, i1 false) #16
  %54 = getelementptr inbounds %struct.alps_data, ptr %50, i32 0, i32 22
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %53, ptr noundef %2, ptr noundef %0) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %117

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.alps_data, ptr %50, i32 0, i32 28, i32 5
  %60 = load i16, ptr %59, align 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr %struct.alps_data, ptr %50, i32 0, i32 28, i32 5, i32 0, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ 1, %66 ], [ 0, %62 ]
  %69 = getelementptr %struct.alps_data, ptr %50, i32 0, i32 28, i32 5, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = getelementptr %struct.alps_data, ptr %50, i32 0, i32 28, i32 5, i32 1, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72, %67
  %77 = add nuw nsw i32 %68, 1
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %77, %76 ], [ %68, %72 ]
  %80 = getelementptr %struct.alps_data, ptr %50, i32 0, i32 28, i32 5, i32 2
  %81 = load i16, ptr %80, align 2
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = getelementptr %struct.alps_data, ptr %50, i32 0, i32 28, i32 5, i32 2, i32 1
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83, %78
  %88 = add nuw nsw i32 %79, 1
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i32 [ %88, %87 ], [ %79, %83 ]
  %91 = getelementptr %struct.alps_data, ptr %50, i32 0, i32 28, i32 5, i32 3
  %92 = load i16, ptr %91, align 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = getelementptr %struct.alps_data, ptr %50, i32 0, i32 28, i32 5, i32 3, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94, %89
  %99 = add nuw nsw i32 %90, 1
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %99, %98 ], [ %90, %94 ]
  tail call fastcc void @alps_report_mt_data(ptr noundef %0, i32 noundef %101) #16
  %102 = getelementptr inbounds %struct.alps_data, ptr %50, i32 0, i32 28, i32 2
  %103 = load i32, ptr %102, align 4
  tail call void @input_mt_report_finger_count(ptr noundef %52, i32 noundef %103) #16
  %104 = getelementptr inbounds %struct.alps_data, ptr %50, i32 0, i32 28, i32 6
  %105 = load i8, ptr %104, align 4
  %106 = lshr i8 %105, 2
  %107 = and i8 %106, 1
  %108 = zext i8 %107 to i32
  tail call void @input_event(ptr noundef %52, i32 noundef 1, i32 noundef 272, i32 noundef %108) #16
  %109 = load i8, ptr %104, align 4
  %110 = lshr i8 %109, 3
  %111 = and i8 %110, 1
  %112 = zext i8 %111 to i32
  tail call void @input_event(ptr noundef %52, i32 noundef 1, i32 noundef 273, i32 noundef %112) #16
  %113 = load i8, ptr %104, align 4
  %114 = lshr i8 %113, 4
  %115 = and i8 %114, 1
  %116 = zext i8 %115 to i32
  tail call void @input_event(ptr noundef %52, i32 noundef 1, i32 noundef 274, i32 noundef %116) #16
  tail call void @input_event(ptr noundef %52, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %117

117:                                              ; preds = %100, %49, %20, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_packet_v7(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %1, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = and i32 %7, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i8, ptr %1, align 1
  %15 = and i8 %14, 16
  %16 = icmp ne i8 %15, 0
  %17 = and i32 %7, 67
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %194, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %1, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp ne i8 %22, 0
  %24 = icmp ne i8 %6, 0
  %25 = select i1 %23, i1 true, i1 %24
  %26 = sext i1 %25 to i32
  br label %194

27:                                               ; preds = %10, %3
  %28 = phi i2 [ -2, %10 ], [ 1, %3 ]
  %29 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5
  %30 = getelementptr i8, ptr %1, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, -128
  %33 = zext i8 %32 to i16
  %34 = shl nuw nsw i16 %33, 4
  store i16 %34, ptr %29, align 2
  %35 = load i8, ptr %30, align 1
  %36 = and i8 %35, 63
  %37 = zext i8 %36 to i16
  %38 = shl nuw nsw i16 %37, 5
  %39 = or i16 %38, %34
  store i16 %39, ptr %29, align 2
  %40 = getelementptr i8, ptr %1, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = lshr i8 %41, 1
  %43 = and i8 %42, 24
  %44 = zext i8 %43 to i16
  %45 = or i16 %39, %44
  store i16 %45, ptr %29, align 2
  %46 = load i8, ptr %40, align 1
  %47 = and i8 %46, 7
  %48 = zext i8 %47 to i16
  %49 = or i16 %45, %48
  store i16 %49, ptr %29, align 2
  %50 = getelementptr i8, ptr %1, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i16
  %53 = shl nuw nsw i16 %52, 3
  %54 = load i8, ptr %1, align 1
  %55 = and i8 %54, 7
  %56 = zext i8 %55 to i16
  %57 = or i16 %53, %56
  %58 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i16 %57, ptr %58, align 2
  %59 = load i8, ptr %40, align 1
  %60 = and i8 %59, -128
  %61 = zext i8 %60 to i16
  %62 = shl nuw nsw i16 %61, 4
  %63 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 1
  store i16 %62, ptr %63, align 2
  %64 = load i8, ptr %5, align 1
  %65 = and i8 %64, -128
  %66 = zext i8 %65 to i16
  %67 = shl nuw nsw i16 %66, 3
  %68 = or i16 %67, %62
  store i16 %68, ptr %63, align 2
  %69 = load i8, ptr %5, align 1
  %70 = and i8 %69, 63
  %71 = zext i8 %70 to i16
  %72 = shl nuw nsw i16 %71, 4
  %73 = or i16 %72, %68
  store i16 %73, ptr %63, align 2
  %74 = getelementptr i8, ptr %1, i32 5
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, -128
  %77 = zext i8 %76 to i16
  %78 = shl nuw nsw i16 %77, 3
  %79 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 1, i32 1
  store i16 %78, ptr %79, align 2
  %80 = load i8, ptr %74, align 1
  %81 = and i8 %80, 63
  %82 = zext i8 %81 to i16
  %83 = shl nuw nsw i16 %82, 4
  %84 = or i16 %83, %78
  switch i2 %28, label %116 [
    i2 1, label %85
    i2 -2, label %105
  ]

85:                                               ; preds = %27
  %86 = icmp eq i16 %84, 2032
  %87 = icmp eq i16 %73, 4080
  %88 = select i1 %86, i1 %87, i1 false
  %89 = select i1 %88, i16 0, i16 %73
  store i16 %89, ptr %63, align 2
  %90 = xor i16 %57, 2047
  store i16 %90, ptr %58, align 2
  %91 = xor i16 %84, 2032
  %92 = select i1 %88, i16 0, i16 %91
  store i16 %92, ptr %79, align 2
  %93 = icmp ne i16 %49, 0
  %94 = icmp ne i16 %90, 0
  %95 = select i1 %93, i1 true, i1 %94
  %96 = zext i1 %95 to i32
  %97 = icmp eq i16 %89, 0
  %98 = icmp eq i16 %92, 0
  %99 = select i1 %97, i1 %98, i1 false
  %100 = select i1 %95, i32 2, i32 1
  %101 = select i1 %99, i32 %96, i32 %100
  %102 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 2
  %103 = load i16, ptr %102, align 2
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %119, label %123

105:                                              ; preds = %27
  %106 = and i16 %73, 4032
  store i16 %106, ptr %63, align 2
  %107 = and i16 %84, 2000
  store i16 %107, ptr %79, align 2
  %108 = load i8, ptr %5, align 1
  %109 = shl i8 %108, 4
  %110 = and i8 %109, 32
  %111 = zext i8 %110 to i16
  %112 = xor i16 %57, 2047
  store i16 %112, ptr %58, align 2
  %113 = and i16 %84, 1984
  %114 = or i16 %113, %111
  %115 = xor i16 %114, 2016
  br label %136

116:                                              ; preds = %27
  %117 = xor i16 %57, 2047
  store i16 %117, ptr %58, align 2
  %118 = xor i16 %84, 2047
  br label %136

119:                                              ; preds = %85
  %120 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 2, i32 1
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119, %85
  %124 = add nuw nsw i32 %101, 1
  br label %125

125:                                              ; preds = %123, %119
  %126 = phi i32 [ %124, %123 ], [ %101, %119 ]
  %127 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 3
  %128 = load i16, ptr %127, align 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 3, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %130, %125
  %135 = add nuw nsw i32 %126, 1
  br label %144

136:                                              ; preds = %116, %105
  %137 = phi i16 [ %106, %105 ], [ %73, %116 ]
  %138 = phi i16 [ %112, %105 ], [ %117, %116 ]
  %139 = phi i16 [ %115, %105 ], [ %118, %116 ]
  store i16 %139, ptr %79, align 2
  %140 = load i8, ptr %74, align 1
  %141 = and i8 %140, 3
  %142 = add nuw nsw i8 %141, 3
  %143 = zext i8 %142 to i32
  br label %144

144:                                              ; preds = %136, %134, %130
  %145 = phi i32 [ %143, %136 ], [ %135, %134 ], [ %126, %130 ]
  %146 = phi i16 [ %139, %136 ], [ %92, %134 ], [ %92, %130 ]
  %147 = phi i16 [ %137, %136 ], [ %89, %134 ], [ %89, %130 ]
  %148 = phi i16 [ %138, %136 ], [ %90, %134 ], [ %90, %130 ]
  %149 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 %145, ptr %149, align 4
  %150 = load i8, ptr %1, align 1
  %151 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %152 = load i8, ptr %151, align 4
  %153 = lshr i8 %150, 5
  %154 = and i8 %153, 4
  %155 = and i8 %152, -5
  %156 = or i8 %155, %154
  store i8 %156, ptr %151, align 4
  %157 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 13
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 512
  %160 = icmp eq i32 %159, 0
  %161 = load i8, ptr %1, align 1
  br i1 %160, label %177, label %162

162:                                              ; preds = %144
  %163 = and i8 %161, 32
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  %167 = add nuw nsw i32 %145, 1
  store i32 %167, ptr %166, align 4
  %168 = load i8, ptr %1, align 1
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i32 [ %167, %165 ], [ %145, %162 ]
  %171 = phi i8 [ %168, %165 ], [ %161, %162 ]
  %172 = and i8 %171, 16
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  %176 = add nuw nsw i32 %170, 1
  store i32 %176, ptr %175, align 4
  br label %186

177:                                              ; preds = %144
  %178 = lshr i8 %161, 2
  %179 = and i8 %178, 8
  %180 = and i8 %156, -9
  %181 = or i8 %179, %180
  store i8 %181, ptr %151, align 4
  %182 = load i8, ptr %1, align 1
  %183 = and i8 %182, 16
  %184 = and i8 %181, -17
  %185 = or i8 %184, %183
  store i8 %185, ptr %151, align 4
  br label %186

186:                                              ; preds = %177, %174, %169
  %187 = phi i32 [ %170, %169 ], [ %176, %174 ], [ %145, %177 ]
  %188 = icmp eq i32 %187, 1
  %189 = icmp eq i16 %49, 0
  %190 = select i1 %188, i1 %189, i1 false
  %191 = icmp eq i16 %148, 0
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  store i16 %147, ptr %29, align 4
  store i16 %146, ptr %58, align 2
  store i16 0, ptr %63, align 4
  store i16 0, ptr %79, align 2
  br label %194

194:                                              ; preds = %193, %186, %20, %13
  %195 = phi i32 [ 0, %193 ], [ 0, %186 ], [ 1, %13 ], [ %26, %20 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_set_abs_params_v7(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @alps_set_abs_params_mt_common(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 328, ptr noundef %3) #16
  %4 = tail call i32 @input_mt_init_slots(ptr noundef %1, i32 noundef 4, i32 noundef 13) #16
  tail call void @_set_bit(i32 noundef 328, ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alps_hw_init_ss4_v2(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 10340, ptr %2, align 2
  %4 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 234) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 234) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4339) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %14 = call i32 @ps2_command(ptr noundef %3, ptr noundef %13, i32 noundef 4339) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 234) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = call fastcc i32 @alps_enter_command_mode(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef 29, i8 noundef zeroext 32)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 234) #16
  %27 = call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 244) #16
  br label %30

28:                                               ; preds = %22, %19, %16, %12, %9, %6, %1
  %29 = call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 234) #16
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ -1, %28 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_process_packet_ss4_v2(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %8, i8 0, i32 40, i1 false)
  %9 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %8, ptr noundef %3, ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 25
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 27
  %23 = tail call i32 %21(ptr noundef %8, ptr noundef %22, ptr noundef %0) #16
  br label %25

24:                                               ; preds = %15
  store i32 0, ptr %12, align 4
  br label %25

25:                                               ; preds = %24, %20, %1
  %26 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 6
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %25
  %31 = load i32, ptr %12, align 4
  %32 = icmp ne i32 %31, 0
  %33 = and i8 %27, 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  store i32 1, ptr %12, align 4
  %37 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %37, ptr noundef align 1 dereferenceable(6) %3, i32 6, i1 false)
  br label %102

38:                                               ; preds = %30
  store i32 0, ptr %12, align 4
  %39 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 48
  %42 = icmp eq i8 %41, 32
  br i1 %42, label %43, label %83

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 13
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.serio, ptr %50, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.22) #17
  br label %102

52:                                               ; preds = %43
  %53 = load i8, ptr %3, align 1
  %54 = shl i8 %53, 7
  %55 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, 127
  %58 = or i8 %57, %54
  %59 = sext i8 %58 to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 2, i32 noundef 0, i32 noundef %59) #16
  %60 = load i8, ptr %39, align 1
  %61 = shl i8 %60, 7
  %62 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 127
  %65 = or i8 %64, %61
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 0, %66
  tail call void @input_event(ptr noundef %7, i32 noundef 2, i32 noundef 1, i32 noundef %67) #16
  %68 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 127
  %71 = zext i8 %70 to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 3, i32 noundef 24, i32 noundef %71) #16
  %72 = load i8, ptr %26, align 4
  %73 = lshr i8 %72, 5
  %74 = and i8 %73, 1
  %75 = zext i8 %74 to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 272, i32 noundef %75) #16
  %76 = load i8, ptr %26, align 4
  %77 = lshr i8 %76, 6
  %78 = and i8 %77, 1
  %79 = zext i8 %78 to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 273, i32 noundef %79) #16
  %80 = load i8, ptr %26, align 4
  %81 = lshr i8 %80, 7
  %82 = zext i8 %81 to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 274, i32 noundef %82) #16
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %102

83:                                               ; preds = %38
  %84 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 4)
  tail call fastcc void @alps_report_mt_data(ptr noundef %0, i32 noundef %86)
  %87 = load i32, ptr %84, align 4
  tail call void @input_mt_report_finger_count(ptr noundef %5, i32 noundef %87) #16
  %88 = load i8, ptr %26, align 4
  %89 = lshr i8 %88, 2
  %90 = and i8 %89, 1
  %91 = zext i8 %90 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 272, i32 noundef %91) #16
  %92 = load i8, ptr %26, align 4
  %93 = lshr i8 %92, 3
  %94 = and i8 %93, 1
  %95 = zext i8 %94 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 273, i32 noundef %95) #16
  %96 = load i8, ptr %26, align 4
  %97 = lshr i8 %96, 4
  %98 = and i8 %97, 1
  %99 = zext i8 %98 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 274, i32 noundef %99) #16
  %100 = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 28, i32 3
  %101 = load i32, ptr %100, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %101) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %102

102:                                              ; preds = %83, %52, %48, %36, %25
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_ss4_v2(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #11 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %1, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 3
  switch i32 %9, label %32 [
    i32 0, label %10
    i32 1, label %84
    i32 2, label %516
    i32 3, label %300
  ]

10:                                               ; preds = %3
  %11 = load i8, ptr %1, align 1
  %12 = icmp eq i8 %11, 24
  %13 = getelementptr i8, ptr %1, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 16
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %1, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = and i32 %7, 136
  %22 = icmp eq i32 %21, 8
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %1, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 16
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %515, label %33

32:                                               ; preds = %3
  unreachable

33:                                               ; preds = %28, %24, %17, %10
  %34 = phi i8 [ 16, %17 ], [ 16, %24 ], [ 16, %28 ], [ %14, %10 ]
  %35 = and i8 %11, 7
  %36 = zext i8 %35 to i32
  %37 = zext i8 %34 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = and i32 %38, 120
  %40 = or i32 %39, %36
  %41 = shl nuw nsw i32 %37, 2
  %42 = and i32 %41, 896
  %43 = or i32 %40, %42
  %44 = getelementptr i8, ptr %1, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 5
  %48 = and i32 %47, 7168
  %49 = or i32 %43, %48
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5
  store i16 %50, ptr %51, align 4
  %52 = load i8, ptr %44, align 1
  %53 = and i8 %52, 15
  %54 = load i8, ptr %5, align 1
  %55 = lshr i8 %54, 2
  %56 = and i8 %55, 48
  %57 = or i8 %56, %53
  %58 = zext i8 %57 to i32
  %59 = getelementptr i8, ptr %1, i32 4
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 6
  %63 = and i32 %62, 960
  %64 = or i32 %63, %58
  %65 = shl nuw nsw i32 %61, 5
  %66 = and i32 %65, 3072
  %67 = or i32 %64, %66
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i16 %68, ptr %69, align 2
  %70 = getelementptr i8, ptr %1, i32 5
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 1
  %74 = and i32 %73, 30
  %75 = and i32 %72, 96
  %76 = or i32 %74, %75
  %77 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 3
  store i32 %76, ptr %77, align 4
  %78 = icmp ne i32 %76, 0
  %79 = zext i1 %78 to i32
  %80 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, -4
  store i8 %83, ptr %81, align 4
  br label %532

84:                                               ; preds = %3
  %85 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 13
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 512
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 11
  %90 = load i8, ptr %89, align 4
  %91 = icmp eq i8 %90, 115
  br i1 %88, label %203, label %92

92:                                               ; preds = %84
  br i1 %91, label %93, label %130

93:                                               ; preds = %92
  %94 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 3
  br i1 %96, label %97, label %130

97:                                               ; preds = %93
  %98 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 2
  %99 = load i8, ptr %98, align 2
  %100 = icmp eq i8 %99, 40
  br i1 %100, label %101, label %130

101:                                              ; preds = %97
  %102 = load i8, ptr %1, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 4
  %105 = and i32 %104, 112
  %106 = getelementptr i8, ptr %1, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 4
  %110 = and i32 %109, 3968
  %111 = lshr i32 %103, 4
  %112 = and i32 %111, 8
  %113 = or i32 %112, %105
  %114 = or i32 %113, %110
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5
  store i16 %115, ptr %116, align 4
  %117 = load i8, ptr %5, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 4
  %120 = and i32 %119, 112
  %121 = getelementptr i8, ptr %1, i32 4
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 4
  %125 = and i32 %124, 3968
  %126 = lshr i32 %118, 4
  %127 = and i32 %126, 8
  %128 = or i32 %127, %120
  %129 = or i32 %128, %125
  br label %159

130:                                              ; preds = %97, %93, %92
  %131 = load i8, ptr %1, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 5
  %134 = and i32 %133, 224
  %135 = getelementptr i8, ptr %1, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 5
  %139 = and i32 %138, 7936
  %140 = lshr i32 %132, 3
  %141 = and i32 %140, 16
  %142 = or i32 %141, %134
  %143 = or i32 %142, %139
  %144 = trunc i32 %143 to i16
  %145 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5
  store i16 %144, ptr %145, align 4
  %146 = load i8, ptr %5, align 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 5
  %149 = and i32 %148, 224
  %150 = getelementptr i8, ptr %1, i32 4
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 5
  %154 = and i32 %153, 7936
  %155 = lshr i32 %147, 3
  %156 = and i32 %155, 16
  %157 = or i32 %156, %149
  %158 = or i32 %157, %154
  br label %159

159:                                              ; preds = %130, %101
  %160 = phi i32 [ %158, %130 ], [ %129, %101 ]
  %161 = trunc i32 %160 to i16
  %162 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 1
  store i16 %161, ptr %162, align 4
  %163 = getelementptr i8, ptr %1, i32 1
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl nuw nsw i32 %165, 3
  %167 = and i32 %166, 16
  %168 = getelementptr i8, ptr %1, i32 2
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 5
  %172 = and i32 %171, 480
  %173 = or i32 %172, %167
  %174 = shl nuw nsw i32 %170, 4
  %175 = and i32 %174, 3584
  %176 = or i32 %173, %175
  %177 = load i8, ptr %1, align 1
  %178 = lshr i8 %177, 3
  %179 = and i8 %178, 8
  %180 = zext i8 %179 to i32
  %181 = or i32 %176, %180
  %182 = trunc i32 %181 to i16
  %183 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i16 %182, ptr %183, align 2
  %184 = getelementptr i8, ptr %1, i32 4
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = shl nuw nsw i32 %186, 3
  %188 = and i32 %187, 16
  %189 = getelementptr i8, ptr %1, i32 5
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = shl nuw nsw i32 %191, 5
  %193 = and i32 %192, 480
  %194 = or i32 %193, %188
  %195 = shl nuw nsw i32 %191, 4
  %196 = and i32 %195, 3584
  %197 = or i32 %194, %196
  %198 = load i8, ptr %5, align 1
  %199 = lshr i8 %198, 3
  %200 = and i8 %199, 8
  %201 = zext i8 %200 to i32
  %202 = or i32 %197, %201
  br label %269

203:                                              ; preds = %84
  br i1 %91, label %204, label %212

204:                                              ; preds = %203
  %205 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 1
  %206 = load i8, ptr %205, align 1
  %207 = icmp eq i8 %206, 3
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 2
  %210 = load i8, ptr %209, align 2
  %211 = icmp eq i8 %210, 40
  br i1 %211, label %213, label %212

212:                                              ; preds = %208, %204, %203
  br label %213

213:                                              ; preds = %212, %208
  %214 = phi i16 [ 5, %212 ], [ 4, %208 ]
  %215 = phi i16 [ 224, %212 ], [ 112, %208 ]
  %216 = phi i16 [ 7936, %212 ], [ 3968, %208 ]
  %217 = load i8, ptr %1, align 1
  %218 = zext i8 %217 to i16
  %219 = shl nuw nsw i16 %218, %214
  %220 = and i16 %219, %215
  %221 = getelementptr i8, ptr %1, i32 1
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i16
  %224 = shl nuw nsw i16 %223, %214
  %225 = and i16 %224, %216
  %226 = or i16 %225, %220
  %227 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5
  store i16 %226, ptr %227, align 4
  %228 = load i8, ptr %5, align 1
  %229 = zext i8 %228 to i16
  %230 = shl nuw nsw i16 %229, %214
  %231 = and i16 %230, %215
  %232 = getelementptr i8, ptr %1, i32 4
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i16
  %235 = shl nuw nsw i16 %234, %214
  %236 = and i16 %235, %216
  %237 = or i16 %236, %231
  %238 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 1
  store i16 %237, ptr %238, align 4
  %239 = getelementptr i8, ptr %1, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = shl nuw nsw i32 %241, 3
  %243 = and i32 %242, 16
  %244 = getelementptr i8, ptr %1, i32 2
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 5
  %248 = and i32 %247, 480
  %249 = or i32 %248, %243
  %250 = shl nuw nsw i32 %246, 4
  %251 = and i32 %250, 3584
  %252 = or i32 %249, %251
  %253 = trunc i32 %252 to i16
  %254 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i16 %253, ptr %254, align 2
  %255 = getelementptr i8, ptr %1, i32 4
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 3
  %259 = and i32 %258, 16
  %260 = getelementptr i8, ptr %1, i32 5
  %261 = load i8, ptr %260, align 1
  %262 = zext i8 %261 to i32
  %263 = shl nuw nsw i32 %262, 5
  %264 = and i32 %263, 480
  %265 = or i32 %264, %259
  %266 = shl nuw nsw i32 %262, 4
  %267 = and i32 %266, 3584
  %268 = or i32 %265, %267
  br label %269

269:                                              ; preds = %213, %159
  %270 = phi i32 [ %268, %213 ], [ %202, %159 ]
  %271 = trunc i32 %270 to i16
  %272 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 1, i32 1
  store i16 %271, ptr %272, align 2
  %273 = getelementptr i8, ptr %1, i32 1
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i32
  %276 = and i32 %275, 1
  %277 = lshr i32 %275, 1
  %278 = and i32 %277, 2
  %279 = or i32 %278, %276
  %280 = icmp eq i32 %279, 0
  %281 = select i1 %280, i32 0, i32 48
  %282 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 3
  store i32 %281, ptr %282, align 4
  %283 = getelementptr i8, ptr %1, i32 2
  %284 = load i8, ptr %283, align 1
  %285 = and i8 %284, 16
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %269
  %288 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %289 = load i8, ptr %288, align 4
  %290 = or i8 %289, 1
  br label %296

291:                                              ; preds = %269
  %292 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 2, ptr %292, align 4
  %293 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %294 = load i8, ptr %293, align 4
  %295 = and i8 %294, -2
  br label %296

296:                                              ; preds = %291, %287
  %297 = phi i8 [ %295, %291 ], [ %290, %287 ]
  %298 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %299 = and i8 %297, -3
  store i8 %299, ptr %298, align 4
  br label %532

300:                                              ; preds = %3
  %301 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 13
  %302 = load i32, ptr %301, align 4
  %303 = and i32 %302, 512
  %304 = icmp eq i32 %303, 0
  %305 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 11
  %306 = load i8, ptr %305, align 4
  %307 = icmp eq i8 %306, 115
  br i1 %304, label %420, label %308

308:                                              ; preds = %300
  br i1 %307, label %309, label %346

309:                                              ; preds = %308
  %310 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 1
  %311 = load i8, ptr %310, align 1
  %312 = icmp eq i8 %311, 3
  br i1 %312, label %313, label %346

313:                                              ; preds = %309
  %314 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 2
  %315 = load i8, ptr %314, align 2
  %316 = icmp eq i8 %315, 40
  br i1 %316, label %317, label %346

317:                                              ; preds = %313
  %318 = load i8, ptr %1, align 1
  %319 = zext i8 %318 to i32
  %320 = shl nuw nsw i32 %319, 4
  %321 = and i32 %320, 112
  %322 = getelementptr i8, ptr %1, i32 1
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i32
  %325 = shl nuw nsw i32 %324, 4
  %326 = and i32 %325, 3968
  %327 = lshr i32 %319, 4
  %328 = and i32 %327, 8
  %329 = or i32 %328, %321
  %330 = or i32 %329, %326
  %331 = trunc i32 %330 to i16
  %332 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 2
  store i16 %331, ptr %332, align 4
  %333 = load i8, ptr %5, align 1
  %334 = zext i8 %333 to i32
  %335 = shl nuw nsw i32 %334, 4
  %336 = and i32 %335, 112
  %337 = getelementptr i8, ptr %1, i32 4
  %338 = load i8, ptr %337, align 1
  %339 = zext i8 %338 to i32
  %340 = shl nuw nsw i32 %339, 4
  %341 = and i32 %340, 3968
  %342 = lshr i32 %334, 4
  %343 = and i32 %342, 8
  %344 = or i32 %343, %336
  %345 = or i32 %344, %341
  br label %375

346:                                              ; preds = %313, %309, %308
  %347 = load i8, ptr %1, align 1
  %348 = zext i8 %347 to i32
  %349 = shl nuw nsw i32 %348, 5
  %350 = and i32 %349, 224
  %351 = getelementptr i8, ptr %1, i32 1
  %352 = load i8, ptr %351, align 1
  %353 = zext i8 %352 to i32
  %354 = shl nuw nsw i32 %353, 5
  %355 = and i32 %354, 7936
  %356 = lshr i32 %348, 3
  %357 = and i32 %356, 16
  %358 = or i32 %357, %350
  %359 = or i32 %358, %355
  %360 = trunc i32 %359 to i16
  %361 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 2
  store i16 %360, ptr %361, align 4
  %362 = load i8, ptr %5, align 1
  %363 = zext i8 %362 to i32
  %364 = shl nuw nsw i32 %363, 5
  %365 = and i32 %364, 224
  %366 = getelementptr i8, ptr %1, i32 4
  %367 = load i8, ptr %366, align 1
  %368 = zext i8 %367 to i32
  %369 = shl nuw nsw i32 %368, 5
  %370 = and i32 %369, 7936
  %371 = lshr i32 %363, 3
  %372 = and i32 %371, 16
  %373 = or i32 %372, %365
  %374 = or i32 %373, %370
  br label %375

375:                                              ; preds = %346, %317
  %376 = phi i32 [ %374, %346 ], [ %345, %317 ]
  %377 = phi i32 [ 8176, %346 ], [ 4088, %317 ]
  %378 = trunc i32 %376 to i16
  %379 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 3
  store i16 %378, ptr %379, align 4
  %380 = getelementptr i8, ptr %1, i32 1
  %381 = load i8, ptr %380, align 1
  %382 = zext i8 %381 to i32
  %383 = shl nuw nsw i32 %382, 3
  %384 = and i32 %383, 16
  %385 = getelementptr i8, ptr %1, i32 2
  %386 = load i8, ptr %385, align 1
  %387 = zext i8 %386 to i32
  %388 = shl nuw nsw i32 %387, 5
  %389 = and i32 %388, 480
  %390 = or i32 %389, %384
  %391 = shl nuw nsw i32 %387, 4
  %392 = and i32 %391, 3584
  %393 = or i32 %390, %392
  %394 = load i8, ptr %1, align 1
  %395 = lshr i8 %394, 3
  %396 = and i8 %395, 8
  %397 = zext i8 %396 to i32
  %398 = or i32 %393, %397
  %399 = trunc i32 %398 to i16
  %400 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 2, i32 1
  store i16 %399, ptr %400, align 2
  %401 = getelementptr i8, ptr %1, i32 4
  %402 = load i8, ptr %401, align 1
  %403 = zext i8 %402 to i32
  %404 = shl nuw nsw i32 %403, 3
  %405 = and i32 %404, 16
  %406 = getelementptr i8, ptr %1, i32 5
  %407 = load i8, ptr %406, align 1
  %408 = zext i8 %407 to i32
  %409 = shl nuw nsw i32 %408, 5
  %410 = and i32 %409, 480
  %411 = or i32 %410, %405
  %412 = shl nuw nsw i32 %408, 4
  %413 = and i32 %412, 3584
  %414 = or i32 %411, %413
  %415 = load i8, ptr %5, align 1
  %416 = lshr i8 %415, 3
  %417 = and i8 %416, 8
  %418 = zext i8 %417 to i32
  %419 = or i32 %414, %418
  br label %487

420:                                              ; preds = %300
  br i1 %307, label %421, label %429

421:                                              ; preds = %420
  %422 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 1
  %423 = load i8, ptr %422, align 1
  %424 = icmp eq i8 %423, 3
  br i1 %424, label %425, label %429

425:                                              ; preds = %421
  %426 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 11, i32 2
  %427 = load i8, ptr %426, align 2
  %428 = icmp eq i8 %427, 40
  br i1 %428, label %430, label %429

429:                                              ; preds = %425, %421, %420
  br label %430

430:                                              ; preds = %429, %425
  %431 = phi i16 [ 5, %429 ], [ 4, %425 ]
  %432 = phi i16 [ 224, %429 ], [ 112, %425 ]
  %433 = phi i16 [ 7936, %429 ], [ 3968, %425 ]
  %434 = phi i32 [ 8160, %429 ], [ 4080, %425 ]
  %435 = load i8, ptr %1, align 1
  %436 = zext i8 %435 to i16
  %437 = shl nuw nsw i16 %436, %431
  %438 = and i16 %437, %432
  %439 = getelementptr i8, ptr %1, i32 1
  %440 = load i8, ptr %439, align 1
  %441 = zext i8 %440 to i16
  %442 = shl nuw nsw i16 %441, %431
  %443 = and i16 %442, %433
  %444 = or i16 %443, %438
  %445 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 2
  store i16 %444, ptr %445, align 4
  %446 = load i8, ptr %5, align 1
  %447 = zext i8 %446 to i16
  %448 = shl nuw nsw i16 %447, %431
  %449 = and i16 %448, %432
  %450 = getelementptr i8, ptr %1, i32 4
  %451 = load i8, ptr %450, align 1
  %452 = zext i8 %451 to i16
  %453 = shl nuw nsw i16 %452, %431
  %454 = and i16 %453, %433
  %455 = or i16 %454, %449
  %456 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 3
  store i16 %455, ptr %456, align 4
  %457 = getelementptr i8, ptr %1, i32 1
  %458 = load i8, ptr %457, align 1
  %459 = zext i8 %458 to i32
  %460 = shl nuw nsw i32 %459, 3
  %461 = and i32 %460, 16
  %462 = getelementptr i8, ptr %1, i32 2
  %463 = load i8, ptr %462, align 1
  %464 = zext i8 %463 to i32
  %465 = shl nuw nsw i32 %464, 5
  %466 = and i32 %465, 480
  %467 = or i32 %466, %461
  %468 = shl nuw nsw i32 %464, 4
  %469 = and i32 %468, 3584
  %470 = or i32 %467, %469
  %471 = trunc i32 %470 to i16
  %472 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 2, i32 1
  store i16 %471, ptr %472, align 2
  %473 = getelementptr i8, ptr %1, i32 4
  %474 = load i8, ptr %473, align 1
  %475 = zext i8 %474 to i32
  %476 = shl nuw nsw i32 %475, 3
  %477 = and i32 %476, 16
  %478 = getelementptr i8, ptr %1, i32 5
  %479 = load i8, ptr %478, align 1
  %480 = zext i8 %479 to i32
  %481 = shl nuw nsw i32 %480, 5
  %482 = and i32 %481, 480
  %483 = or i32 %482, %477
  %484 = shl nuw nsw i32 %480, 4
  %485 = and i32 %484, 3584
  %486 = or i32 %483, %485
  br label %487

487:                                              ; preds = %430, %375
  %488 = phi i32 [ %486, %430 ], [ %419, %375 ]
  %489 = phi i16 [ %455, %430 ], [ %378, %375 ]
  %490 = phi i32 [ %434, %430 ], [ %377, %375 ]
  %491 = phi i32 [ 4080, %430 ], [ 4088, %375 ]
  %492 = trunc i32 %488 to i16
  %493 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 3, i32 1
  store i16 %492, ptr %493, align 2
  %494 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %495 = load i8, ptr %494, align 4
  %496 = and i8 %495, -4
  %497 = or i8 %496, 2
  store i8 %497, ptr %494, align 4
  %498 = getelementptr i8, ptr %1, i32 2
  %499 = load i8, ptr %498, align 1
  %500 = and i8 %499, 16
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %487
  %503 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 5, ptr %503, align 4
  br label %532

504:                                              ; preds = %487
  %505 = sext i16 %489 to i32
  %506 = icmp eq i32 %490, %505
  %507 = icmp eq i32 %491, %488
  %508 = select i1 %506, i1 %507, i1 false
  br i1 %508, label %509, label %513

509:                                              ; preds = %504
  %510 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 3
  %511 = getelementptr %struct.alps_fields, ptr %0, i32 0, i32 5, i32 3, i32 1
  store i16 0, ptr %510, align 4
  store i16 0, ptr %511, align 2
  %512 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 3, ptr %512, align 4
  br label %532

513:                                              ; preds = %504
  %514 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 2
  store i32 4, ptr %514, align 4
  br label %532

515:                                              ; preds = %28
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %0, i8 0, i32 40, i1 false)
  br label %532

516:                                              ; preds = %3
  %517 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %518 = load i8, ptr %517, align 4
  %519 = and i8 %518, -4
  store i8 %519, ptr %517, align 4
  %520 = load i8, ptr %1, align 1
  %521 = and i8 %520, 32
  %522 = and i8 %518, -36
  %523 = or i8 %521, %522
  store i8 %523, ptr %517, align 4
  %524 = load i8, ptr %1, align 1
  %525 = and i8 %524, 64
  %526 = and i8 %523, -68
  %527 = or i8 %526, %525
  store i8 %527, ptr %517, align 4
  %528 = load i8, ptr %1, align 1
  %529 = and i8 %528, -128
  %530 = and i8 %527, 124
  %531 = or i8 %530, %529
  store i8 %531, ptr %517, align 4
  br label %555

532:                                              ; preds = %515, %513, %509, %502, %296, %33
  %533 = phi i8 [ %497, %502 ], [ %497, %513 ], [ %497, %509 ], [ 0, %515 ], [ %299, %296 ], [ %83, %33 ]
  %534 = load i8, ptr %1, align 1
  %535 = getelementptr inbounds %struct.alps_fields, ptr %0, i32 0, i32 6
  %536 = lshr i8 %534, 3
  %537 = and i8 %536, 4
  %538 = and i8 %533, -5
  %539 = or i8 %538, %537
  store i8 %539, ptr %535, align 4
  %540 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 13
  %541 = load i32, ptr %540, align 4
  %542 = and i32 %541, 512
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %555

544:                                              ; preds = %532
  %545 = load i8, ptr %1, align 1
  %546 = lshr i8 %545, 3
  %547 = and i8 %546, 8
  %548 = and i8 %539, -9
  %549 = or i8 %547, %548
  store i8 %549, ptr %535, align 4
  %550 = load i8, ptr %1, align 1
  %551 = lshr i8 %550, 3
  %552 = and i8 %551, 16
  %553 = and i8 %549, -17
  %554 = or i8 %553, %552
  store i8 %554, ptr %535, align 4
  br label %555

555:                                              ; preds = %544, %532, %516
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alps_set_abs_params_ss4_v2(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @alps_set_abs_params_mt_common(ptr noundef %0, ptr noundef %1)
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #16
  %3 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 328, ptr noundef %3) #16
  %4 = tail call i32 @input_mt_init_slots(ptr noundef %1, i32 noundef 4, i32 noundef 13) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_setup_trackstick_v3(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call fastcc i32 @alps_passthrough_mode_v3(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %96

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %11 = tail call i32 @ps2_command(ptr noundef %10, ptr noundef null, i32 noundef 231) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = tail call i32 @ps2_command(ptr noundef %10, ptr noundef null, i32 noundef 231) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = tail call i32 @ps2_command(ptr noundef %10, ptr noundef null, i32 noundef 231) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 -1, ptr %20, align 2
  %21 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -1, ptr %21, align 1
  store i8 -1, ptr %6, align 4
  %22 = call i32 @ps2_command(ptr noundef %10, ptr noundef nonnull %6, i32 noundef 1001) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %16, %13, %9
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.19) #17
  br label %33

27:                                               ; preds = %19
  %28 = call fastcc i32 @alps_trackstick_enter_extended_mode_v3_v6(ptr noundef %0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.20) #17
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = phi i1 [ false, %27 ], [ true, %30 ], [ true, %24 ]
  %35 = phi i32 [ 0, %27 ], [ -5, %30 ], [ -19, %24 ]
  %36 = call fastcc i32 @alps_passthrough_mode_v3(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  %37 = icmp ne i32 %36, 0
  %38 = or i1 %34, %37
  %39 = select i1 %37, i32 -5, i32 %35
  br i1 %38, label %96, label %40

40:                                               ; preds = %33
  %41 = call fastcc i32 @alps_enter_command_mode(ptr noundef %0)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %96

43:                                               ; preds = %40
  %44 = add i32 %1, 8
  %45 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef %44) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %48 = call i32 @ps2_command(ptr noundef %10, ptr noundef nonnull %5, i32 noundef 1001) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8, ptr %5, align 4
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = icmp eq i32 %57, %44
  br i1 %58, label %60, label %59

59:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %91

60:                                               ; preds = %50
  %61 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  %62 = load i8, ptr %61, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %63 = or i8 %62, 2
  %64 = zext i8 %63 to i32
  %65 = lshr i32 %64, 4
  %66 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %67 = getelementptr inbounds %struct.alps_data, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.alps_nibble_commands, ptr %68, i32 %65
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 3840
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr %struct.alps_nibble_commands, ptr %68, i32 %65, i32 1
  %74 = select i1 %72, ptr %73, ptr %4
  %75 = call i32 @ps2_command(ptr noundef %10, ptr noundef %74, i32 noundef %70) #16
  %76 = icmp eq i32 %75, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br i1 %76, label %77, label %91

77:                                               ; preds = %60
  %78 = and i32 %64, 15
  %79 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %80 = getelementptr inbounds %struct.alps_data, ptr %79, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr %struct.alps_nibble_commands, ptr %81, i32 %78
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 3840
  %85 = icmp eq i32 %84, 0
  %86 = getelementptr %struct.alps_nibble_commands, ptr %81, i32 %78, i32 1
  %87 = select i1 %85, ptr %86, ptr %3
  %88 = call i32 @ps2_command(ptr noundef %10, ptr noundef %87, i32 noundef %83) #16
  %89 = icmp eq i32 %88, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %90 = select i1 %89, i32 0, i32 -5
  br label %91

91:                                               ; preds = %77, %60, %59, %43
  %92 = phi i32 [ -5, %59 ], [ -5, %43 ], [ -5, %60 ], [ %90, %77 ]
  %93 = call i32 @ps2_command(ptr noundef %10, ptr noundef null, i32 noundef 234) #16
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 %92, i32 -5
  br label %96

96:                                               ; preds = %91, %40, %33, %2
  %97 = phi i32 [ -5, %2 ], [ %39, %33 ], [ -5, %40 ], [ %95, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_enter_command_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 236) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 236) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 236) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 -1, ptr %13, align 2
  %14 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -1, ptr %14, align 1
  store i8 -1, ptr %2, align 4
  %15 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 1001) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %9, %6, %1
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21) #17
  br label %30

20:                                               ; preds = %12
  %21 = load i8, ptr %2, align 4
  switch i8 %21, label %30 [
    i8 115, label %29
    i8 -120, label %22
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %14, align 1
  %24 = add i8 %23, -7
  %25 = icmp ult i8 %24, 2
  %26 = add i8 %23, 80
  %27 = icmp ult i8 %26, 32
  %28 = or i1 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %20
  br label %30

30:                                               ; preds = %29, %22, %20, %17
  %31 = phi i32 [ -1, %17 ], [ 0, %29 ], [ -1, %20 ], [ -1, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_command_mode_read_reg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %8 = call i32 @ps2_command(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 1001) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i8, ptr %3, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %13, %16
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %19, %10, %6
  %24 = phi i32 [ %22, %19 ], [ -1, %6 ], [ -1, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi i32 [ %24, %23 ], [ -1, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__alps_command_mode_write_reg(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = zext i8 %1 to i32
  %6 = lshr i32 %5, 4
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.alps_data, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.alps_nibble_commands, ptr %10, i32 %6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 3840
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr %struct.alps_nibble_commands, ptr %10, i32 %6, i32 1
  %16 = select i1 %14, ptr %15, ptr %4
  %17 = call i32 @ps2_command(ptr noundef %7, ptr noundef %16, i32 noundef %12) #16
  %18 = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = and i32 %5, 15
  %21 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %22 = getelementptr inbounds %struct.alps_data, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.alps_nibble_commands, ptr %23, i32 %20
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 3840
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr %struct.alps_nibble_commands, ptr %23, i32 %20, i32 1
  %29 = select i1 %27, ptr %28, ptr %3
  %30 = call i32 @ps2_command(ptr noundef %7, ptr noundef %29, i32 noundef %25) #16
  %31 = icmp ne i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %32 = sext i1 %31 to i32
  br label %33

33:                                               ; preds = %19, %2
  %34 = phi i32 [ -1, %2 ], [ %32, %19 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_command_mode_write_reg(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = zext i8 %2 to i32
  %10 = lshr i32 %9, 4
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %13 = getelementptr inbounds %struct.alps_data, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.alps_nibble_commands, ptr %14, i32 %10
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 3840
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr %struct.alps_nibble_commands, ptr %14, i32 %10, i32 1
  %20 = select i1 %18, ptr %19, ptr %5
  %21 = call i32 @ps2_command(ptr noundef %11, ptr noundef %20, i32 noundef %16) #16
  %22 = icmp eq i32 %21, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br i1 %22, label %23, label %37

23:                                               ; preds = %8
  %24 = and i32 %9, 15
  %25 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %26 = getelementptr inbounds %struct.alps_data, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.alps_nibble_commands, ptr %27, i32 %24
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 3840
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr %struct.alps_nibble_commands, ptr %27, i32 %24, i32 1
  %33 = select i1 %31, ptr %32, ptr %4
  %34 = call i32 @ps2_command(ptr noundef %11, ptr noundef %33, i32 noundef %29) #16
  %35 = icmp ne i32 %34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %36 = sext i1 %35 to i32
  br label %37

37:                                               ; preds = %23, %8, %3
  %38 = phi i32 [ -1, %3 ], [ -1, %8 ], [ %36, %23 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_passthrough_mode_v3(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = tail call fastcc i32 @alps_enter_command_mode(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %66

9:                                                ; preds = %3
  %10 = add i32 %1, 8
  %11 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %15 = call i32 @ps2_command(ptr noundef %14, ptr noundef nonnull %6, i32 noundef 1001) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i8, ptr %6, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %27, label %26

26:                                               ; preds = %17, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %60

27:                                               ; preds = %17
  %28 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  %29 = load i8, ptr %28, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %30 = and i8 %29, -2
  %31 = zext i1 %2 to i8
  %32 = or i8 %30, %31
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %33, 4
  %35 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %36 = getelementptr inbounds %struct.alps_data, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.alps_nibble_commands, ptr %37, i32 %34
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 3840
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr %struct.alps_nibble_commands, ptr %37, i32 %34, i32 1
  %43 = select i1 %41, ptr %42, ptr %5
  %44 = call i32 @ps2_command(ptr noundef %14, ptr noundef %43, i32 noundef %39) #16
  %45 = icmp eq i32 %44, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br i1 %45, label %46, label %60

46:                                               ; preds = %27
  %47 = and i32 %33, 15
  %48 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %49 = getelementptr inbounds %struct.alps_data, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr %struct.alps_nibble_commands, ptr %50, i32 %47
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 3840
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr %struct.alps_nibble_commands, ptr %50, i32 %47, i32 1
  %56 = select i1 %54, ptr %55, ptr %4
  %57 = call i32 @ps2_command(ptr noundef %14, ptr noundef %56, i32 noundef %52) #16
  %58 = icmp ne i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %59 = sext i1 %58 to i32
  br label %60

60:                                               ; preds = %46, %27, %26, %9
  %61 = phi i32 [ -1, %26 ], [ -1, %27 ], [ %59, %46 ], [ -1, %9 ]
  %62 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %63 = call i32 @ps2_command(ptr noundef %62, ptr noundef null, i32 noundef 234) #16
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 %61, i32 -1
  br label %66

66:                                               ; preds = %60, %3
  %67 = phi i32 [ %65, %60 ], [ -1, %3 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_trackstick_enter_extended_mode_v3_v6(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 5320, ptr %2, align 2
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 230) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 230) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 230) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4339) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %17 = call i32 @ps2_command(ptr noundef %3, ptr noundef %16, i32 noundef 4339) #16
  %18 = icmp ne i32 %17, 0
  %19 = sext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %12, %9, %6, %1
  %21 = phi i32 [ -1, %12 ], [ -1, %9 ], [ -1, %6 ], [ -1, %1 ], [ %19, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.alps_data, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %2
  %11 = lshr i32 %1, 12
  %12 = and i32 %11, 15
  %13 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %14 = getelementptr inbounds %struct.alps_data, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.alps_nibble_commands, ptr %15, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 3840
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr %struct.alps_nibble_commands, ptr %15, i32 %12, i32 1
  %21 = select i1 %19, ptr %20, ptr %3
  %22 = call i32 @ps2_command(ptr noundef %4, ptr noundef %21, i32 noundef %17) #16
  %23 = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %23, label %24, label %66

24:                                               ; preds = %10
  %25 = lshr i32 %1, 8
  %26 = and i32 %25, 15
  %27 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %28 = getelementptr inbounds %struct.alps_data, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.alps_nibble_commands, ptr %29, i32 %26
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 3840
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr %struct.alps_nibble_commands, ptr %29, i32 %26, i32 1
  %35 = select i1 %33, ptr %34, ptr %3
  %36 = call i32 @ps2_command(ptr noundef %4, ptr noundef %35, i32 noundef %31) #16
  %37 = icmp eq i32 %36, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %37, label %38, label %66

38:                                               ; preds = %24
  %39 = lshr i32 %1, 4
  %40 = and i32 %39, 15
  %41 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %42 = getelementptr inbounds %struct.alps_data, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.alps_nibble_commands, ptr %43, i32 %40
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 3840
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr %struct.alps_nibble_commands, ptr %43, i32 %40, i32 1
  %49 = select i1 %47, ptr %48, ptr %3
  %50 = call i32 @ps2_command(ptr noundef %4, ptr noundef %49, i32 noundef %45) #16
  %51 = icmp eq i32 %50, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %51, label %52, label %66

52:                                               ; preds = %38
  %53 = and i32 %1, 15
  %54 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %55 = getelementptr inbounds %struct.alps_data, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr %struct.alps_nibble_commands, ptr %56, i32 %53
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 3840
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr %struct.alps_nibble_commands, ptr %56, i32 %53, i32 1
  %62 = select i1 %60, ptr %61, ptr %3
  %63 = call i32 @ps2_command(ptr noundef %4, ptr noundef %62, i32 noundef %58) #16
  %64 = icmp ne i32 %63, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %65 = sext i1 %64 to i32
  br label %66

66:                                               ; preds = %52, %38, %24, %10, %2
  %67 = phi i32 [ -1, %2 ], [ -1, %10 ], [ -1, %24 ], [ -1, %38 ], [ %65, %52 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alps_set_abs_params_mt_common(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 53, i32 noundef 0, i32 noundef %4, i32 noundef 0, i32 noundef 0) #16
  %5 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 54, i32 noundef 0, i32 noundef %6, i32 noundef 0, i32 noundef 0) #16
  %7 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %7, align 4
  tail call void @input_alloc_absinfo(ptr noundef %1) #16
  %9 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr %struct.input_absinfo, ptr %10, i32 53, i32 5
  store i32 %8, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  tail call void @input_alloc_absinfo(ptr noundef %1) #16
  %17 = load ptr, ptr %9, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.input_absinfo, ptr %17, i32 54, i32 5
  store i32 %16, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 334, ptr noundef %22) #16
  tail call void @_set_bit(i32 noundef 335, ptr noundef %22) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_get_v3_v7_resolution(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = load ptr, ptr %0, align 4
  %6 = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef %1) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %10 = call i32 @ps2_command(ptr noundef %9, ptr noundef nonnull %4, i32 noundef 1001) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i8, ptr %4, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %22, label %21

21:                                               ; preds = %12, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %68

22:                                               ; preds = %12
  %23 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %26 = add i32 %1, 1
  %27 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %0, i32 noundef %26) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %30 = call i32 @ps2_command(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1001) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i8, ptr %3, align 4
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  %40 = icmp eq i32 %39, %26
  br i1 %40, label %42, label %41

41:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %68

42:                                               ; preds = %32
  %43 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %46 = lshr i32 %25, 3
  %47 = and i32 %46, 30
  %48 = add nuw nsw i32 %47, 36
  %49 = shl nuw nsw i32 %25, 1
  %50 = and i32 %49, 30
  %51 = add nuw nsw i32 %50, 50
  %52 = and i32 %45, 15
  %53 = lshr i32 %45, 4
  %54 = or i32 %52, 16
  %55 = mul nuw nsw i32 %54, %51
  %56 = add nuw nsw i32 %53, 12
  %57 = mul nuw nsw i32 %56, %48
  %58 = getelementptr inbounds %struct.alps_data, ptr %5, i32 0, i32 14
  %59 = load i32, ptr %58, align 4
  %60 = mul i32 %59, 10
  %61 = sdiv i32 %60, %55
  %62 = getelementptr inbounds %struct.alps_data, ptr %5, i32 0, i32 18
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.alps_data, ptr %5, i32 0, i32 15
  %64 = load i32, ptr %63, align 4
  %65 = mul i32 %64, 10
  %66 = sdiv i32 %65, %57
  %67 = getelementptr inbounds %struct.alps_data, ptr %5, i32 0, i32 19
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %42, %41, %22, %21, %2
  %69 = phi i32 [ 0, %42 ], [ -1, %21 ], [ -1, %41 ], [ -1, %2 ], [ -1, %22 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_process_bitmap(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = alloca %struct.alps_bitmap_point, align 8
  %4 = alloca %struct.alps_bitmap_point, align 8
  %5 = alloca %struct.alps_bitmap_point, align 8
  %6 = alloca %struct.alps_bitmap_point, align 8
  %7 = alloca [4 x %struct.input_mt_pos], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !9
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %255, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.alps_fields, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %255, label %14

14:                                               ; preds = %36, %10
  %15 = phi i32 [ %37, %36 ], [ 0, %10 ]
  %16 = phi i32 [ %20, %36 ], [ 0, %10 ]
  %17 = phi i32 [ %39, %36 ], [ 0, %10 ]
  %18 = phi ptr [ %38, %36 ], [ %3, %10 ]
  %19 = phi i32 [ %40, %36 ], [ %8, %10 ]
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = icmp eq i32 %16, 0
  br i1 %21, label %34, label %23

23:                                               ; preds = %14
  br i1 %22, label %27, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.alps_bitmap_point, ptr %18, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  br label %29

27:                                               ; preds = %23
  store i32 %17, ptr %18, align 4
  %28 = add i32 %15, 1
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ 0, %27 ], [ %26, %24 ]
  %31 = phi i32 [ %28, %27 ], [ %15, %24 ]
  %32 = getelementptr inbounds %struct.alps_bitmap_point, ptr %18, i32 0, i32 1
  %33 = add i32 %30, 1
  store i32 %33, ptr %32, align 4
  br label %36

34:                                               ; preds = %14
  %35 = select i1 %22, ptr %18, ptr %4
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %15, %34 ], [ %31, %29 ]
  %38 = phi ptr [ %35, %34 ], [ %18, %29 ]
  %39 = add nuw nsw i32 %17, 1
  %40 = lshr i32 %19, 1
  %41 = icmp ult i32 %19, 2
  br i1 %41, label %42, label %14

42:                                               ; preds = %36
  %43 = load i32, ptr %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %67, %42
  %46 = phi i32 [ %68, %67 ], [ 0, %42 ]
  %47 = phi i32 [ %51, %67 ], [ 0, %42 ]
  %48 = phi i32 [ %70, %67 ], [ 0, %42 ]
  %49 = phi ptr [ %69, %67 ], [ %5, %42 ]
  %50 = phi i32 [ %71, %67 ], [ %43, %42 ]
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = icmp eq i32 %47, 0
  br i1 %52, label %65, label %54

54:                                               ; preds = %45
  br i1 %53, label %58, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.alps_bitmap_point, ptr %49, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  br label %60

58:                                               ; preds = %54
  store i32 %48, ptr %49, align 4
  %59 = add i32 %46, 1
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ 0, %58 ], [ %57, %55 ]
  %62 = phi i32 [ %59, %58 ], [ %46, %55 ]
  %63 = getelementptr inbounds %struct.alps_bitmap_point, ptr %49, i32 0, i32 1
  %64 = add i32 %61, 1
  store i32 %64, ptr %63, align 4
  br label %67

65:                                               ; preds = %45
  %66 = select i1 %53, ptr %49, ptr %6
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi i32 [ %46, %65 ], [ %62, %60 ]
  %69 = phi ptr [ %66, %65 ], [ %49, %60 ]
  %70 = add nuw nsw i32 %48, 1
  %71 = lshr i32 %50, 1
  %72 = icmp ult i32 %50, 2
  br i1 %72, label %73, label %45

73:                                               ; preds = %67, %42
  %74 = phi i32 [ 0, %42 ], [ %68, %67 ]
  %75 = tail call i32 @llvm.smax.i32(i32 %37, i32 %74)
  %76 = icmp eq i32 %37, 1
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.alps_bitmap_point, ptr %3, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  %81 = sdiv i32 %80, 2
  %82 = sub i32 %79, %81
  store i32 %82, ptr %78, align 4
  %83 = load i32, ptr %3, align 8
  %84 = add i32 %83, %81
  store i32 %84, ptr %4, align 8
  %85 = tail call i32 @llvm.smax.i32(i32 %81, i32 1)
  %86 = getelementptr inbounds %struct.alps_bitmap_point, ptr %4, i32 0, i32 1
  store i32 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %77, %73
  %88 = icmp eq i32 %74, 1
  br i1 %88, label %96, label %89

89:                                               ; preds = %87
  %90 = load i32, ptr %5, align 8
  %91 = getelementptr inbounds %struct.alps_bitmap_point, ptr %5, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr %6, align 8
  %94 = getelementptr inbounds %struct.alps_bitmap_point, ptr %6, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  br label %106

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.alps_bitmap_point, ptr %5, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, -1
  %100 = sdiv i32 %99, 2
  %101 = sub i32 %98, %100
  store i32 %101, ptr %97, align 4
  %102 = load i32, ptr %5, align 8
  %103 = add i32 %102, %100
  store i32 %103, ptr %6, align 8
  %104 = tail call i32 @llvm.smax.i32(i32 %100, i32 1)
  %105 = getelementptr inbounds %struct.alps_bitmap_point, ptr %6, i32 0, i32 1
  store i32 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %96, %89
  %107 = phi i32 [ %95, %89 ], [ %104, %96 ]
  %108 = phi i32 [ %93, %89 ], [ %103, %96 ]
  %109 = phi i32 [ %92, %89 ], [ %101, %96 ]
  %110 = phi i32 [ %90, %89 ], [ %102, %96 ]
  %111 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 14
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr %3, align 8
  %114 = shl i32 %113, 1
  %115 = getelementptr inbounds %struct.alps_bitmap_point, ptr %3, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, -1
  %118 = add i32 %117, %114
  %119 = mul i32 %118, %112
  %120 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 16
  %121 = load i32, ptr %120, align 4
  %122 = shl i32 %121, 1
  %123 = add i32 %122, -2
  %124 = sdiv i32 %119, %123
  %125 = trunc i32 %124 to i16
  store i16 %125, ptr %7, align 2
  %126 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 15
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 %110, 1
  %129 = add i32 %109, -1
  %130 = add i32 %129, %128
  %131 = mul i32 %130, %127
  %132 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 17
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 %133, 1
  %135 = add i32 %134, -2
  %136 = sdiv i32 %131, %135
  %137 = trunc i32 %136 to i16
  %138 = getelementptr inbounds %struct.input_mt_pos, ptr %7, i32 0, i32 1
  store i16 %137, ptr %138, align 2
  %139 = load i32, ptr %4, align 8
  %140 = shl i32 %139, 1
  %141 = getelementptr inbounds %struct.alps_bitmap_point, ptr %4, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, -1
  %144 = add i32 %143, %140
  %145 = mul i32 %144, %112
  %146 = sdiv i32 %145, %123
  %147 = trunc i32 %146 to i16
  %148 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %7, i32 0, i32 1
  store i16 %147, ptr %148, align 2
  %149 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %7, i32 0, i32 1, i32 1
  store i16 %137, ptr %149, align 2
  %150 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %7, i32 0, i32 2
  store i16 %147, ptr %150, align 2
  %151 = shl i32 %108, 1
  %152 = add i32 %107, -1
  %153 = add i32 %152, %151
  %154 = mul i32 %153, %127
  %155 = sdiv i32 %154, %135
  %156 = trunc i32 %155 to i16
  %157 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %7, i32 0, i32 2, i32 1
  store i16 %156, ptr %157, align 2
  %158 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %7, i32 0, i32 3
  store i16 %125, ptr %158, align 2
  %159 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %7, i32 0, i32 3, i32 1
  store i16 %156, ptr %159, align 2
  %160 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 8
  %161 = load i16, ptr %160, align 4
  switch i16 %161, label %170 [
    i16 1280, label %162
    i16 768, label %166
    i16 1024, label %166
  ]

162:                                              ; preds = %106
  %163 = trunc i32 %112 to i16
  %164 = sub i16 %163, %125
  store i16 %164, ptr %7, align 2
  %165 = sub i16 %163, %147
  store i16 %165, ptr %148, align 2
  store i16 %165, ptr %150, align 2
  store i16 %164, ptr %158, align 2
  br label %170

166:                                              ; preds = %106, %106
  %167 = trunc i32 %127 to i16
  %168 = sub i16 %167, %137
  store i16 %168, ptr %138, align 2
  store i16 %168, ptr %149, align 2
  %169 = sub i16 %167, %156
  store i16 %169, ptr %157, align 2
  store i16 %169, ptr %159, align 2
  br label %170

170:                                              ; preds = %166, %162, %106
  %171 = phi i16 [ %169, %166 ], [ %156, %106 ], [ %156, %162 ]
  %172 = phi i16 [ %147, %166 ], [ %147, %106 ], [ %165, %162 ]
  %173 = phi i16 [ %168, %166 ], [ %137, %106 ], [ %137, %162 ]
  %174 = phi i16 [ %125, %166 ], [ %125, %106 ], [ %164, %162 ]
  %175 = getelementptr inbounds %struct.alps_data, ptr %0, i32 0, i32 26
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %247

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.alps_fields, ptr %1, i32 0, i32 4
  %180 = getelementptr inbounds %struct.alps_fields, ptr %1, i32 0, i32 4, i32 1
  %181 = load i16, ptr %179, align 4
  %182 = sext i16 %181 to i32
  %183 = sext i16 %174 to i32
  %184 = sub nsw i32 %182, %183
  %185 = load i16, ptr %180, align 2
  %186 = sext i16 %185 to i32
  %187 = sext i16 %173 to i32
  %188 = sub nsw i32 %186, %187
  %189 = mul i32 %184, %184
  %190 = mul i32 %188, %188
  %191 = add i32 %190, %189
  %192 = icmp eq i32 %191, 2147483647
  br i1 %192, label %200, label %193

193:                                              ; preds = %178
  store i32 0, ptr %175, align 4
  %194 = load i16, ptr %179, align 4
  %195 = load i16, ptr %180, align 2
  %196 = sext i16 %194 to i32
  %197 = sext i16 %195 to i32
  %198 = sub nsw i32 %197, %187
  %199 = mul i32 %198, %198
  br label %200

200:                                              ; preds = %193, %178
  %201 = phi i32 [ %199, %193 ], [ %190, %178 ]
  %202 = phi i32 [ %197, %193 ], [ %186, %178 ]
  %203 = phi i32 [ %196, %193 ], [ %182, %178 ]
  %204 = phi i32 [ 0, %193 ], [ 255, %178 ]
  %205 = sext i16 %172 to i32
  %206 = sub nsw i32 %203, %205
  %207 = mul i32 %206, %206
  %208 = add i32 %201, %207
  %209 = icmp slt i32 %208, %191
  br i1 %209, label %210, label %217

210:                                              ; preds = %200
  store i32 1, ptr %175, align 4
  %211 = load i16, ptr %179, align 4
  %212 = load i16, ptr %180, align 2
  %213 = sext i16 %211 to i32
  %214 = sub nsw i32 %213, %205
  %215 = sext i16 %212 to i32
  %216 = mul i32 %214, %214
  br label %217

217:                                              ; preds = %210, %200
  %218 = phi i32 [ %216, %210 ], [ %207, %200 ]
  %219 = phi i32 [ %215, %210 ], [ %202, %200 ]
  %220 = phi i32 [ %213, %210 ], [ %203, %200 ]
  %221 = phi i32 [ 1, %210 ], [ %204, %200 ]
  %222 = phi i32 [ %208, %210 ], [ %191, %200 ]
  %223 = sext i16 %171 to i32
  %224 = sub nsw i32 %219, %223
  %225 = mul i32 %224, %224
  %226 = add i32 %225, %218
  %227 = icmp slt i32 %226, %222
  br i1 %227, label %228, label %235

228:                                              ; preds = %217
  store i32 2, ptr %175, align 4
  %229 = load i16, ptr %179, align 4
  %230 = load i16, ptr %180, align 2
  %231 = sext i16 %229 to i32
  %232 = sext i16 %230 to i32
  %233 = sub nsw i32 %232, %223
  %234 = mul i32 %233, %233
  br label %235

235:                                              ; preds = %228, %217
  %236 = phi i32 [ %234, %228 ], [ %225, %217 ]
  %237 = phi i32 [ %231, %228 ], [ %220, %217 ]
  %238 = phi i32 [ 2, %228 ], [ %221, %217 ]
  %239 = phi i32 [ %226, %228 ], [ %222, %217 ]
  %240 = sub nsw i32 %237, %183
  %241 = mul i32 %240, %240
  %242 = add i32 %236, %241
  %243 = icmp slt i32 %242, %239
  %244 = add nsw i32 %238, 2
  %245 = and i32 %244, 3
  %246 = select i1 %243, i32 1, i32 %245
  store i32 %246, ptr %175, align 4
  br label %247

247:                                              ; preds = %235, %170
  %248 = getelementptr inbounds %struct.alps_fields, ptr %1, i32 0, i32 5
  %249 = getelementptr inbounds %struct.alps_fields, ptr %1, i32 0, i32 4
  %250 = load i32, ptr %249, align 4
  store i32 %250, ptr %248, align 4
  %251 = getelementptr %struct.alps_fields, ptr %1, i32 0, i32 5, i32 1
  %252 = load i32, ptr %175, align 4
  %253 = getelementptr [4 x %struct.input_mt_pos], ptr %7, i32 0, i32 %252
  %254 = load i32, ptr %253, align 2
  store i32 %254, ptr %251, align 4
  br label %255

255:                                              ; preds = %247, %10, %2
  %256 = phi i32 [ %75, %247 ], [ 0, %10 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %256
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alps_report_semi_mt_data(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp slt i32 %1, 2
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 5
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 5, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  br label %23

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 4
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 5
  store i16 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 4, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 5, i32 0, i32 1
  store i16 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 26
  store i32 -1, ptr %22, align 4
  br i1 %21, label %23, label %39

23:                                               ; preds = %12, %7
  %24 = phi i16 [ %17, %12 ], [ %11, %7 ]
  %25 = phi i16 [ %14, %12 ], [ %9, %7 ]
  %26 = phi i32 [ 1, %12 ], [ %1, %7 ]
  %27 = sext i16 %25 to i32
  %28 = sext i16 %24 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 0) #16
  %29 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext true) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 53, i32 noundef %27) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 54, i32 noundef %28) #16
  %30 = icmp ugt i32 %26, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = getelementptr %struct.alps_data, ptr %3, i32 0, i32 28, i32 5, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = sext i16 %33 to i32
  %35 = getelementptr %struct.alps_data, ptr %3, i32 0, i32 28, i32 5, i32 1, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = sext i16 %36 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 1) #16
  %38 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext true) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 53, i32 noundef %34) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 54, i32 noundef %37) #16
  br label %39

39:                                               ; preds = %31, %23, %12
  %40 = phi i32 [ %26, %31 ], [ 1, %23 ], [ 0, %12 ]
  tail call void @input_mt_sync_frame(ptr noundef %5) #16
  tail call void @input_mt_report_finger_count(ptr noundef %5, i32 noundef %40) #16
  %41 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 6
  %42 = load i8, ptr %41, align 4
  %43 = lshr i8 %42, 2
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 272, i32 noundef %45) #16
  %46 = load i8, ptr %41, align 4
  %47 = lshr i8 %46, 3
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 273, i32 noundef %49) #16
  %50 = load i8, ptr %41, align 4
  %51 = lshr i8 %50, 4
  %52 = and i8 %51, 1
  %53 = zext i8 %52 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 274, i32 noundef %53) #16
  %54 = getelementptr inbounds %struct.alps_data, ptr %3, i32 0, i32 28, i32 3
  %55 = load i32, ptr %54, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %55) #16
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alps_monitor_mode_send_word(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = zext i16 %1 to i32
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %6 = and i32 %4, 15
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.alps_data, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.alps_nibble_commands, ptr %9, i32 %6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 3840
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr %struct.alps_nibble_commands, ptr %9, i32 %6, i32 1
  %15 = select i1 %13, ptr %14, ptr %3
  %16 = call i32 @ps2_command(ptr noundef %5, ptr noundef %15, i32 noundef %11) #16
  %17 = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = lshr i32 %4, 4
  %20 = and i32 %19, 15
  %21 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %22 = getelementptr inbounds %struct.alps_data, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.alps_nibble_commands, ptr %23, i32 %20
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 3840
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr %struct.alps_nibble_commands, ptr %23, i32 %20, i32 1
  %29 = select i1 %27, ptr %28, ptr %3
  %30 = call i32 @ps2_command(ptr noundef %5, ptr noundef %29, i32 noundef %25) #16
  %31 = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %31, label %32, label %47

32:                                               ; preds = %18
  %33 = lshr i32 %4, 8
  %34 = and i32 %33, 15
  %35 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %36 = getelementptr inbounds %struct.alps_data, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.alps_nibble_commands, ptr %37, i32 %34
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 3840
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr %struct.alps_nibble_commands, ptr %37, i32 %34, i32 1
  %43 = select i1 %41, ptr %42, ptr %3
  %44 = call i32 @ps2_command(ptr noundef %5, ptr noundef %43, i32 noundef %39) #16
  %45 = icmp ne i32 %44, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %46 = sext i1 %45 to i32
  br label %47

47:                                               ; preds = %32, %18, %2
  %48 = phi i32 [ -1, %2 ], [ -1, %18 ], [ %46, %32 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_buttons(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alps_report_mt_data(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i32], align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.alps_data, ptr %4, i32 0, i32 28, i32 5
  %8 = call i32 @input_mt_assign_slots(ptr noundef %6, ptr noundef nonnull %3, ptr noundef %7, i32 noundef %1, i32 noundef 0) #16
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %10, %2
  %11 = phi i32 [ %21, %10 ], [ 0, %2 ]
  %12 = getelementptr [4 x i32], ptr %3, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 28, i32 5, i32 %11
  %15 = load i16, ptr %14, align 4
  %16 = sext i16 %15 to i32
  %17 = getelementptr %struct.alps_data, ptr %4, i32 0, i32 28, i32 5, i32 %11, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = sext i16 %18 to i32
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 47, i32 noundef %13) #16
  %20 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %6, i32 noundef 0, i1 noundef zeroext true) #16
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 53, i32 noundef %16) #16
  call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 54, i32 noundef %19) #16
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %10

23:                                               ; preds = %10, %2
  call void @input_mt_sync_frame(ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2149011193}
!11 = !{i64 2149007017}
!12 = !{i64 2149007092, i64 2149007119, i64 2149007166, i64 2149007188, i64 2149007216, i64 2149007236}
!13 = !{i64 748512}
!14 = !{i64 2149035337}
