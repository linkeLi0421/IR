; ModuleID = '/llk/IR/drivers/input/input-mt.c_pt.bc'
source_filename = "../drivers/input/input-mt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_init_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_init_slots\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_init_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_destroy_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_destroy_slots\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_destroy_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_report_slot_state:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_report_slot_state\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_report_slot_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_report_finger_count:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_report_finger_count\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_report_finger_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_report_pointer_emulation:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_report_pointer_emulation\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_report_pointer_emulation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_drop_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_drop_unused\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_drop_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_sync_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_sync_frame\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_sync_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_assign_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_assign_slots\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_assign_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_mt_get_slot_by_key:\09\09\09\09\09"
module asm "\09.asciz \09\22input_mt_get_slot_by_key\22\09\09\09\09\09"
module asm "__kstrtabns_input_mt_get_slot_by_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.input_mt = type { i32, i32, i32, i32, i32, ptr, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@__kstrtab_input_mt_init_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_init_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_init_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_init_slots to i32), ptr @__kstrtab_input_mt_init_slots, ptr @__kstrtabns_input_mt_init_slots }, section "___ksymtab+input_mt_init_slots", align 4
@__kstrtab_input_mt_destroy_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_destroy_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_destroy_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_destroy_slots to i32), ptr @__kstrtab_input_mt_destroy_slots, ptr @__kstrtabns_input_mt_destroy_slots }, section "___ksymtab+input_mt_destroy_slots", align 4
@__kstrtab_input_mt_report_slot_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_report_slot_state = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_report_slot_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_report_slot_state to i32), ptr @__kstrtab_input_mt_report_slot_state, ptr @__kstrtabns_input_mt_report_slot_state }, section "___ksymtab+input_mt_report_slot_state", align 4
@__kstrtab_input_mt_report_finger_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_report_finger_count = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_report_finger_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_report_finger_count to i32), ptr @__kstrtab_input_mt_report_finger_count, ptr @__kstrtabns_input_mt_report_finger_count }, section "___ksymtab+input_mt_report_finger_count", align 4
@__kstrtab_input_mt_report_pointer_emulation = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_report_pointer_emulation = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_report_pointer_emulation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_report_pointer_emulation to i32), ptr @__kstrtab_input_mt_report_pointer_emulation, ptr @__kstrtabns_input_mt_report_pointer_emulation }, section "___ksymtab+input_mt_report_pointer_emulation", align 4
@__kstrtab_input_mt_drop_unused = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_drop_unused = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_drop_unused = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_drop_unused to i32), ptr @__kstrtab_input_mt_drop_unused, ptr @__kstrtabns_input_mt_drop_unused }, section "___ksymtab+input_mt_drop_unused", align 4
@__kstrtab_input_mt_sync_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_sync_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_sync_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_sync_frame to i32), ptr @__kstrtab_input_mt_sync_frame, ptr @__kstrtabns_input_mt_sync_frame }, section "___ksymtab+input_mt_sync_frame", align 4
@__kstrtab_input_mt_assign_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_assign_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_assign_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_assign_slots to i32), ptr @__kstrtab_input_mt_assign_slots, ptr @__kstrtabns_input_mt_assign_slots }, section "___ksymtab+input_mt_assign_slots", align 4
@__kstrtab_input_mt_get_slot_by_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_mt_get_slot_by_key = external dso_local constant [0 x i8], align 1
@__ksymtab_input_mt_get_slot_by_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_mt_get_slot_by_key to i32), ptr @__kstrtab_input_mt_get_slot_by_key, ptr @__kstrtabns_input_mt_get_slot_by_key }, section "___ksymtab+input_mt_get_slot_by_key", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_input_mt_assign_slots, ptr @__ksymtab_input_mt_destroy_slots, ptr @__ksymtab_input_mt_drop_unused, ptr @__ksymtab_input_mt_get_slot_by_key, ptr @__ksymtab_input_mt_init_slots, ptr @__ksymtab_input_mt_report_finger_count, ptr @__ksymtab_input_mt_report_pointer_emulation, ptr @__ksymtab_input_mt_report_slot_state, ptr @__ksymtab_input_mt_sync_frame], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_mt_init_slots(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %137, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.input_mt, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  %13 = select i1 %12, i32 0, i32 -22
  br label %137

14:                                               ; preds = %7
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 64) #8
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %18 = or i32 %17, 24
  %19 = select i1 %16, i32 -1, i32 %18
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %136, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.input_mt, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.input_mt, ptr %20, i32 0, i32 3
  store i32 %2, ptr %24, align 4
  %25 = add i32 %1, -1
  tail call void @input_set_abs_params(ptr noundef %0, i32 noundef 47, i32 noundef 0, i32 noundef %25, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %0, i32 noundef 57, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #8
  %26 = and i32 %2, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %80, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 2
  store i32 %31, ptr %29, align 4
  %32 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 6, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 1024
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %80, label %38

38:                                               ; preds = %28
  %39 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 8, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 2097152
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %45 = getelementptr %struct.input_absinfo, ptr %36, i32 53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, ptr noundef align 4 dereferenceable(24) %45, i32 24, i1 false) #8
  %46 = load ptr, ptr %35, align 4
  %47 = getelementptr %struct.input_absinfo, ptr %46, i32 0, i32 3
  store i32 0, ptr %47, align 4
  %48 = load i32, ptr %44, align 4
  %49 = or i32 %48, 1
  store i32 %49, ptr %44, align 4
  %50 = load ptr, ptr %35, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %80, label %52

52:                                               ; preds = %43, %38
  %53 = phi ptr [ %50, %43 ], [ %36, %38 ]
  %54 = load volatile i32, ptr %39, align 4
  %55 = and i32 %54, 4194304
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %59 = getelementptr %struct.input_absinfo, ptr %53, i32 1
  %60 = getelementptr %struct.input_absinfo, ptr %53, i32 54
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %59, ptr noundef align 4 dereferenceable(24) %60, i32 24, i1 false) #8
  %61 = load ptr, ptr %35, align 4
  %62 = getelementptr %struct.input_absinfo, ptr %61, i32 1, i32 3
  store i32 0, ptr %62, align 4
  %63 = load i32, ptr %58, align 4
  %64 = or i32 %63, 2
  store i32 %64, ptr %58, align 4
  %65 = load ptr, ptr %35, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %57, %52
  %68 = phi ptr [ %65, %57 ], [ %53, %52 ]
  %69 = load volatile i32, ptr %39, align 4
  %70 = and i32 %69, 67108864
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %74 = getelementptr %struct.input_absinfo, ptr %68, i32 24
  %75 = getelementptr %struct.input_absinfo, ptr %68, i32 58
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %74, ptr noundef align 4 dereferenceable(24) %75, i32 24, i1 false) #8
  %76 = load ptr, ptr %35, align 4
  %77 = getelementptr %struct.input_absinfo, ptr %76, i32 24, i32 3
  store i32 0, ptr %77, align 4
  %78 = load i32, ptr %73, align 4
  %79 = or i32 %78, 16777216
  store i32 %79, ptr %73, align 4
  br label %80

80:                                               ; preds = %72, %67, %57, %43, %28, %22
  %81 = and i32 %2, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 6, i32 10
  %85 = load i32, ptr %84, align 4
  %86 = or i32 %85, 8224
  store i32 %86, ptr %84, align 4
  %87 = icmp ugt i32 %1, 2
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = or i32 %85, 24608
  store i32 %89, ptr %84, align 4
  %90 = icmp eq i32 %1, 3
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = or i32 %85, 57376
  store i32 %92, ptr %84, align 4
  %93 = icmp ugt i32 %1, 4
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = or i32 %85, 57632
  store i32 %95, ptr %84, align 4
  br label %96

96:                                               ; preds = %94, %91, %88, %83
  %97 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = or i32 %98, 1
  store i32 %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %96, %80
  %101 = and i32 %2, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, 2
  store i32 %106, ptr %104, align 4
  br label %107

107:                                              ; preds = %103, %100
  %108 = and i32 %2, 16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = or i32 %112, 8
  store i32 %113, ptr %111, align 4
  br label %114

114:                                              ; preds = %110, %107
  %115 = and i32 %2, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = mul i32 %1, %1
  %119 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %118, i32 4) #8
  %120 = extractvalue { i32, i1 } %119, 1
  br i1 %120, label %121, label %123, !prof !8

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.input_mt, ptr %20, i32 0, i32 5
  store ptr null, ptr %122, align 4
  br label %136

123:                                              ; preds = %117
  %124 = extractvalue { i32, i1 } %119, 0
  %125 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %124, i32 noundef 3520) #9
  %126 = getelementptr inbounds %struct.input_mt, ptr %20, i32 0, i32 5
  store ptr %125, ptr %126, align 4
  %127 = icmp eq ptr %125, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %123, %114
  br label %129

129:                                              ; preds = %129, %128
  %130 = phi i32 [ %132, %129 ], [ 0, %128 ]
  %131 = getelementptr %struct.input_mt, ptr %20, i32 0, i32 6, i32 %130, i32 0, i32 9
  store i32 -1, ptr %131, align 4
  %132 = add nuw i32 %130, 1
  %133 = icmp eq i32 %132, %1
  br i1 %133, label %134, label %129

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.input_mt, ptr %20, i32 0, i32 4
  store i32 1, ptr %135, align 16
  store ptr %20, ptr %4, align 8
  br label %137

136:                                              ; preds = %123, %121, %14
  tail call void @kfree(ptr noundef %20) #8
  br label %137

137:                                              ; preds = %136, %134, %9, %3
  %138 = phi i32 [ %13, %9 ], [ -12, %136 ], [ 0, %134 ], [ 0, %3 ]
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_mt_destroy_slots(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %8) #8
  br label %9

9:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.input_mt, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.input_mt, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.input_mt, ptr %5, i32 0, i32 6, i32 %9, i32 1
  store i32 %11, ptr %12, align 4
  br i1 %2, label %14, label %13

13:                                               ; preds = %7
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 57, i32 noundef -1) #8
  br label %24

14:                                               ; preds = %7
  %15 = getelementptr %struct.input_mt, ptr %5, i32 0, i32 6, i32 %9, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %5, align 4
  %21 = and i32 %19, 65535
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %21, %18 ], [ %16, %14 ]
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 57, i32 noundef %23) #8
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 55, i32 noundef %1) #8
  br label %24

24:                                               ; preds = %22, %13, %3
  %25 = phi i1 [ true, %22 ], [ false, %13 ], [ false, %3 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_mt_report_finger_count(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 1
  %4 = zext i1 %3 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 325, i32 noundef %4) #8
  %5 = icmp eq i32 %1, 2
  %6 = zext i1 %5 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 333, i32 noundef %6) #8
  %7 = icmp eq i32 %1, 3
  %8 = zext i1 %7 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 334, i32 noundef %8) #8
  %9 = icmp eq i32 %1, 4
  %10 = zext i1 %9 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 335, i32 noundef %10) #8
  %11 = icmp eq i32 %1, 5
  %12 = zext i1 %11 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 328, i32 noundef %12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_mt_report_pointer_emulation(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %28, %10
  %13 = phi ptr [ %31, %28 ], [ null, %10 ]
  %14 = phi i32 [ %30, %28 ], [ %11, %10 ]
  %15 = phi i32 [ %32, %28 ], [ 0, %10 ]
  %16 = phi i32 [ %29, %28 ], [ 0, %10 ]
  %17 = getelementptr %struct.input_mt, ptr %4, i32 0, i32 6, i32 %15
  %18 = getelementptr [14 x i32], ptr %17, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = sub i32 %19, %14
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %14, i32 %19
  %26 = select i1 %24, ptr %13, ptr %17
  %27 = add i32 %16, 1
  br label %28

28:                                               ; preds = %21, %12
  %29 = phi i32 [ %27, %21 ], [ %16, %12 ]
  %30 = phi i32 [ %25, %21 ], [ %14, %12 ]
  %31 = phi ptr [ %26, %21 ], [ %13, %12 ]
  %32 = add nuw nsw i32 %15, 1
  %33 = icmp eq i32 %32, %8
  br i1 %33, label %34, label %12

34:                                               ; preds = %28, %6
  %35 = phi i32 [ 0, %6 ], [ %29, %28 ]
  %36 = phi ptr [ null, %6 ], [ %31, %28 ]
  %37 = icmp sgt i32 %35, 0
  %38 = zext i1 %37 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 330, i32 noundef %38) #8
  br i1 %1, label %39, label %72

39:                                               ; preds = %34
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %39
  %42 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 8, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 134217728
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 33554432
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.input_absinfo, ptr %53, i32 25
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %55, %46, %41, %39
  %61 = phi i32 [ 0, %41 ], [ 0, %46 ], [ %35, %39 ], [ 0, %59 ], [ 1, %55 ]
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 325, i32 noundef %63) #8
  %64 = icmp eq i32 %61, 2
  %65 = zext i1 %64 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 333, i32 noundef %65) #8
  %66 = icmp eq i32 %61, 3
  %67 = zext i1 %66 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 334, i32 noundef %67) #8
  %68 = icmp eq i32 %61, 4
  %69 = zext i1 %68 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 335, i32 noundef %69) #8
  %70 = icmp eq i32 %61, 5
  %71 = zext i1 %70 to i32
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 328, i32 noundef %71) #8
  br label %72

72:                                               ; preds = %60, %34
  %73 = icmp eq ptr %36, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %72
  %75 = getelementptr [14 x i32], ptr %36, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr [14 x i32], ptr %36, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef %76) #8
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %78) #8
  %79 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 8, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 67108864
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %74
  %84 = getelementptr [14 x i32], ptr %36, i32 0, i32 10
  %85 = load i32, ptr %84, align 4
  br label %91

86:                                               ; preds = %72
  %87 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 8, i32 1
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 67108864
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %85, %83 ], [ 0, %86 ]
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 24, i32 noundef %92) #8
  br label %93

93:                                               ; preds = %91, %86, %74, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_mt_drop_unused(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 4
  br label %11

11:                                               ; preds = %20, %9
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i32 [ 0, %9 ], [ %22, %20 ]
  %14 = getelementptr %struct.input_mt, ptr %3, i32 0, i32 6, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %10, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef %13) #8
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 57, i32 noundef -1) #8
  %19 = load i32, ptr %6, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i32 %13, 1
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %11, label %24

24:                                               ; preds = %20, %5
  %25 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_mt_sync_frame(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 4
  br label %16

16:                                               ; preds = %25, %14
  %17 = phi i32 [ %12, %14 ], [ %26, %25 ]
  %18 = phi i32 [ 0, %14 ], [ %27, %25 ]
  %19 = getelementptr %struct.input_mt, ptr %3, i32 0, i32 6, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %15, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef %18) #8
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 57, i32 noundef -1) #8
  %24 = load i32, ptr %11, align 4
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %17, %16 ], [ %24, %23 ]
  %27 = add nuw nsw i32 %18, 1
  %28 = icmp slt i32 %27, %26
  br i1 %28, label %16, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %6, align 4
  br label %31

31:                                               ; preds = %29, %10, %5
  %32 = phi i32 [ %30, %29 ], [ %7, %10 ], [ %7, %5 ]
  %33 = and i32 %32, 17
  %34 = icmp eq i32 %33, 1
  tail call void @input_mt_report_pointer_emulation(ptr noundef %0, i1 noundef zeroext %34)
  %35 = getelementptr inbounds %struct.input_mt, ptr %3, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_mt_assign_slots(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = shl i32 %4, 1
  %9 = mul i32 %8, %4
  %10 = icmp eq ptr %7, null
  br i1 %10, label %285, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.input_mt, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %285, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.input_mt, ptr %7, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, %3
  br i1 %18, label %285, label %19

19:                                               ; preds = %15
  %20 = icmp slt i32 %3, 1
  br i1 %20, label %285, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.input_mt, ptr %7, i32 0, i32 6
  %23 = getelementptr %struct.input_mt_slot, ptr %22, i32 %17
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %67, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.input_mt_pos, ptr %2, i32 %3
  %27 = icmp eq ptr %26, %2
  br label %28

28:                                               ; preds = %59, %25
  %29 = phi i32 [ %17, %25 ], [ %60, %59 ]
  %30 = phi ptr [ %22, %25 ], [ %62, %59 ]
  %31 = phi ptr [ %13, %25 ], [ %61, %59 ]
  %32 = getelementptr [14 x i32], ptr %30, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = getelementptr [14 x i32], ptr %30, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr [14 x i32], ptr %30, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  br i1 %27, label %59, label %40

40:                                               ; preds = %40, %35
  %41 = phi ptr [ %55, %40 ], [ %2, %35 ]
  %42 = phi ptr [ %54, %40 ], [ %31, %35 ]
  %43 = load i16, ptr %41, align 2
  %44 = sext i16 %43 to i32
  %45 = sub i32 %37, %44
  %46 = getelementptr inbounds %struct.input_mt_pos, ptr %41, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = sext i16 %47 to i32
  %49 = sub i32 %39, %48
  %50 = mul i32 %45, %45
  %51 = mul i32 %49, %49
  %52 = sub i32 %50, %9
  %53 = add i32 %52, %51
  %54 = getelementptr i32, ptr %42, i32 1
  store i32 %53, ptr %42, align 4
  %55 = getelementptr %struct.input_mt_pos, ptr %41, i32 1
  %56 = icmp eq ptr %55, %26
  br i1 %56, label %57, label %40

57:                                               ; preds = %40
  %58 = load i32, ptr %16, align 4
  br label %59

59:                                               ; preds = %57, %35, %28
  %60 = phi i32 [ %29, %28 ], [ %29, %35 ], [ %58, %57 ]
  %61 = phi ptr [ %31, %28 ], [ %31, %35 ], [ %54, %57 ]
  %62 = getelementptr %struct.input_mt_slot, ptr %30, i32 1
  %63 = getelementptr %struct.input_mt_slot, ptr %22, i32 %60
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %28

65:                                               ; preds = %59
  %66 = load ptr, ptr %12, align 4
  br label %67

67:                                               ; preds = %65, %21
  %68 = phi ptr [ %13, %21 ], [ %66, %65 ]
  %69 = phi ptr [ %13, %21 ], [ %61, %65 ]
  %70 = ptrtoint ptr %69 to i32
  %71 = ptrtoint ptr %68 to i32
  %72 = sub i32 %70, %71
  %73 = ashr exact i32 %72, 2
  %74 = icmp sgt i32 %72, 0
  br i1 %74, label %75, label %214

75:                                               ; preds = %67
  %76 = sdiv i32 %73, %3
  %77 = icmp sgt i32 %3, 0
  %78 = icmp slt i32 %76, %3
  %79 = icmp sgt i32 %9, 0
  %80 = or i1 %79, %78
  %81 = icmp slt i32 %9, 1
  %82 = icmp sgt i32 %76, %3
  %83 = or i1 %79, %82
  br label %84

84:                                               ; preds = %207, %75
  %85 = phi i32 [ 0, %75 ], [ %209, %207 ]
  br i1 %77, label %86, label %140

86:                                               ; preds = %137, %84
  %87 = phi i32 [ %138, %137 ], [ 0, %84 ]
  %88 = getelementptr i32, ptr %68, i32 %87
  %89 = getelementptr i32, ptr %88, i32 %73
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %137, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %88, align 4
  %93 = getelementptr i32, ptr %88, i32 %3
  %94 = icmp eq ptr %93, %89
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = add i32 %92, 1
  br label %114

97:                                               ; preds = %91
  %98 = load i32, ptr %93, align 4
  %99 = tail call i32 @llvm.smin.i32(i32 %98, i32 %92) #8
  %100 = call i32 @llvm.smax.i32(i32 %98, i32 %92)
  %101 = getelementptr i32, ptr %93, i32 %3
  %102 = icmp eq ptr %101, %89
  br i1 %102, label %114, label %103

103:                                              ; preds = %103, %97
  %104 = phi ptr [ %112, %103 ], [ %101, %97 ]
  %105 = phi i32 [ %111, %103 ], [ %100, %97 ]
  %106 = phi i32 [ %110, %103 ], [ %99, %97 ]
  %107 = load i32, ptr %104, align 4
  %108 = icmp slt i32 %107, %106
  %109 = tail call i32 @llvm.smin.i32(i32 %107, i32 %105) #8
  %110 = tail call i32 @llvm.smin.i32(i32 %107, i32 %106) #8
  %111 = select i1 %108, i32 %106, i32 %109
  %112 = getelementptr i32, ptr %104, i32 %3
  %113 = icmp eq ptr %112, %89
  br i1 %113, label %114, label %103

114:                                              ; preds = %103, %97, %95
  %115 = phi i32 [ %92, %95 ], [ %99, %97 ], [ %110, %103 ]
  %116 = phi i32 [ %96, %95 ], [ %100, %97 ], [ %111, %103 ]
  %117 = add i32 %116, %115
  %118 = add i32 %117, 1
  %119 = sdiv i32 %118, 2
  %120 = add i32 %117, 2
  %121 = icmp ult i32 %120, 3
  %122 = icmp sgt i32 %119, %9
  %123 = and i1 %80, %122
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %114
  %126 = icmp slt i32 %116, 0
  %127 = and i1 %81, %126
  %128 = zext i1 %127 to i32
  %129 = shl nsw i32 %119, %128
  %130 = sub i32 %92, %129
  store i32 %130, ptr %88, align 4
  br i1 %94, label %137, label %131

131:                                              ; preds = %131, %125
  %132 = phi ptr [ %135, %131 ], [ %93, %125 ]
  %133 = load i32, ptr %132, align 4
  %134 = sub i32 %133, %129
  store i32 %134, ptr %132, align 4
  %135 = getelementptr i32, ptr %132, i32 %3
  %136 = icmp eq ptr %135, %89
  br i1 %136, label %137, label %131

137:                                              ; preds = %131, %125, %114, %86
  %138 = add nuw nsw i32 %87, 1
  %139 = icmp eq i32 %138, %3
  br i1 %139, label %140, label %86

140:                                              ; preds = %137, %84
  br label %141

141:                                              ; preds = %202, %140
  %142 = phi i32 [ %204, %202 ], [ 0, %140 ]
  %143 = phi i32 [ %205, %202 ], [ 0, %140 ]
  %144 = getelementptr i32, ptr %68, i32 %143
  %145 = getelementptr i32, ptr %144, i32 %3
  %146 = icmp eq ptr %144, %145
  br i1 %146, label %202, label %147

147:                                              ; preds = %141
  %148 = load i32, ptr %144, align 4
  %149 = getelementptr i32, ptr %144, i32 1
  %150 = icmp eq ptr %149, %145
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = add i32 %148, 1
  br label %170

153:                                              ; preds = %147
  %154 = load i32, ptr %149, align 4
  %155 = tail call i32 @llvm.smin.i32(i32 %154, i32 %148) #8
  %156 = call i32 @llvm.smax.i32(i32 %154, i32 %148)
  %157 = getelementptr i32, ptr %149, i32 1
  %158 = icmp eq ptr %157, %145
  br i1 %158, label %170, label %159

159:                                              ; preds = %159, %153
  %160 = phi ptr [ %168, %159 ], [ %157, %153 ]
  %161 = phi i32 [ %167, %159 ], [ %156, %153 ]
  %162 = phi i32 [ %166, %159 ], [ %155, %153 ]
  %163 = load i32, ptr %160, align 4
  %164 = icmp slt i32 %163, %162
  %165 = tail call i32 @llvm.smin.i32(i32 %163, i32 %161) #8
  %166 = tail call i32 @llvm.smin.i32(i32 %163, i32 %162) #8
  %167 = select i1 %164, i32 %162, i32 %165
  %168 = getelementptr i32, ptr %160, i32 1
  %169 = icmp eq ptr %168, %145
  br i1 %169, label %170, label %159

170:                                              ; preds = %159, %153, %151
  %171 = phi i32 [ %148, %151 ], [ %155, %153 ], [ %166, %159 ]
  %172 = phi i32 [ %152, %151 ], [ %156, %153 ], [ %167, %159 ]
  %173 = add i32 %172, %171
  %174 = add i32 %173, 1
  %175 = sdiv i32 %174, 2
  %176 = add i32 %173, 2
  %177 = icmp ult i32 %176, 3
  %178 = icmp sgt i32 %175, %9
  %179 = and i1 %83, %178
  %180 = select i1 %177, i1 true, i1 %179
  br i1 %180, label %202, label %181

181:                                              ; preds = %170
  %182 = icmp slt i32 %172, 0
  %183 = and i1 %81, %182
  %184 = zext i1 %183 to i32
  %185 = shl nsw i32 %175, %184
  %186 = sub i32 %148, %185
  store i32 %186, ptr %144, align 4
  br i1 %150, label %193, label %187

187:                                              ; preds = %187, %181
  %188 = phi ptr [ %191, %187 ], [ %149, %181 ]
  %189 = load i32, ptr %188, align 4
  %190 = sub i32 %189, %185
  store i32 %190, ptr %188, align 4
  %191 = getelementptr i32, ptr %188, i32 1
  %192 = icmp eq ptr %191, %145
  br i1 %192, label %193, label %187

193:                                              ; preds = %187, %181
  %194 = icmp slt i32 %185, %172
  %195 = icmp slt i32 %172, 1
  %196 = and i1 %195, %194
  %197 = icmp sgt i32 %171, -1
  %198 = icmp slt i32 %171, %185
  %199 = select i1 %197, i1 %198, i1 false
  %200 = select i1 %196, i1 true, i1 %199
  %201 = zext i1 %200 to i32
  br label %202

202:                                              ; preds = %193, %170, %141
  %203 = phi i32 [ %201, %193 ], [ 0, %141 ], [ 0, %170 ]
  %204 = add i32 %203, %142
  %205 = add i32 %143, %3
  %206 = icmp slt i32 %205, %73
  br i1 %206, label %141, label %207

207:                                              ; preds = %202
  %208 = icmp eq i32 %204, 0
  %209 = add nuw nsw i32 %85, 1
  %210 = icmp eq i32 %209, %73
  %211 = select i1 %208, i1 true, i1 %210
  br i1 %211, label %212, label %84

212:                                              ; preds = %207
  %213 = load ptr, ptr %12, align 4
  br label %214

214:                                              ; preds = %212, %67
  %215 = phi ptr [ %213, %212 ], [ %68, %67 ]
  %216 = shl nuw i32 %3, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %1, i8 -1, i32 %216, i1 false) #8
  %217 = load i32, ptr %16, align 4
  %218 = getelementptr %struct.input_mt_slot, ptr %22, i32 %217
  %219 = icmp eq ptr %22, %218
  br i1 %219, label %222, label %220

220:                                              ; preds = %214
  %221 = ptrtoint ptr %22 to i32
  br label %228

222:                                              ; preds = %253, %214
  %223 = phi i32 [ %217, %214 ], [ %255, %253 ]
  %224 = getelementptr %struct.input_mt_slot, ptr %22, i32 %223
  %225 = icmp eq ptr %22, %224
  br i1 %225, label %285, label %226

226:                                              ; preds = %222
  %227 = ptrtoint ptr %22 to i32
  br label %260

228:                                              ; preds = %253, %220
  %229 = phi i32 [ %217, %220 ], [ %254, %253 ]
  %230 = phi i32 [ %217, %220 ], [ %255, %253 ]
  %231 = phi ptr [ %215, %220 ], [ %256, %253 ]
  %232 = phi ptr [ %22, %220 ], [ %257, %253 ]
  %233 = getelementptr [14 x i32], ptr %232, i32 0, i32 9
  %234 = load i32, ptr %233, align 4
  %235 = icmp sgt i32 %234, -1
  br i1 %235, label %236, label %253

236:                                              ; preds = %247, %228
  %237 = phi i32 [ %248, %247 ], [ 0, %228 ]
  %238 = getelementptr i32, ptr %231, i32 %237
  %239 = load i32, ptr %238, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = ptrtoint ptr %232 to i32
  %243 = sub i32 %242, %221
  %244 = ashr exact i32 %243, 6
  %245 = getelementptr i32, ptr %1, i32 %237
  store i32 %244, ptr %245, align 4
  %246 = load i32, ptr %16, align 4
  br label %250

247:                                              ; preds = %236
  %248 = add nuw i32 %237, 1
  %249 = icmp eq i32 %248, %3
  br i1 %249, label %250, label %236

250:                                              ; preds = %247, %241
  %251 = phi i32 [ %246, %241 ], [ %229, %247 ]
  %252 = getelementptr i32, ptr %231, i32 %3
  br label %253

253:                                              ; preds = %250, %228
  %254 = phi i32 [ %251, %250 ], [ %229, %228 ]
  %255 = phi i32 [ %251, %250 ], [ %230, %228 ]
  %256 = phi ptr [ %252, %250 ], [ %231, %228 ]
  %257 = getelementptr %struct.input_mt_slot, ptr %232, i32 1
  %258 = getelementptr %struct.input_mt_slot, ptr %22, i32 %255
  %259 = icmp eq ptr %257, %258
  br i1 %259, label %222, label %228

260:                                              ; preds = %280, %226
  %261 = phi i32 [ %223, %226 ], [ %281, %280 ]
  %262 = phi ptr [ %22, %226 ], [ %282, %280 ]
  %263 = getelementptr [14 x i32], ptr %262, i32 0, i32 9
  %264 = load i32, ptr %263, align 4
  %265 = icmp sgt i32 %264, -1
  br i1 %265, label %280, label %266

266:                                              ; preds = %277, %260
  %267 = phi i32 [ %278, %277 ], [ 0, %260 ]
  %268 = getelementptr i32, ptr %1, i32 %267
  %269 = load i32, ptr %268, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = getelementptr i32, ptr %1, i32 %267
  %273 = ptrtoint ptr %262 to i32
  %274 = sub i32 %273, %227
  %275 = ashr exact i32 %274, 6
  store i32 %275, ptr %272, align 4
  %276 = load i32, ptr %16, align 4
  br label %280

277:                                              ; preds = %266
  %278 = add nuw i32 %267, 1
  %279 = icmp eq i32 %278, %3
  br i1 %279, label %280, label %266

280:                                              ; preds = %277, %271, %260
  %281 = phi i32 [ %261, %260 ], [ %276, %271 ], [ %261, %277 ]
  %282 = getelementptr %struct.input_mt_slot, ptr %262, i32 1
  %283 = getelementptr %struct.input_mt_slot, ptr %22, i32 %281
  %284 = icmp eq ptr %282, %283
  br i1 %284, label %285, label %260

285:                                              ; preds = %280, %222, %19, %15, %11, %5
  %286 = phi i32 [ -6, %11 ], [ -6, %5 ], [ -22, %15 ], [ 0, %19 ], [ 0, %222 ], [ 0, %280 ]
  ret i32 %286
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_mt_get_slot_by_key(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 6
  %8 = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.input_mt_slot, ptr %7, i32 %9
  %11 = icmp eq ptr %7, %10
  br i1 %11, label %51, label %15

12:                                               ; preds = %29
  br i1 %11, label %51, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.input_mt, ptr %4, i32 0, i32 4
  br label %32

15:                                               ; preds = %29, %6
  %16 = phi ptr [ %30, %29 ], [ %7, %6 ]
  %17 = getelementptr [14 x i32], ptr %16, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.input_mt_slot, ptr %16, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = ptrtoint ptr %16 to i32
  %26 = ptrtoint ptr %7 to i32
  %27 = sub i32 %25, %26
  %28 = ashr exact i32 %27, 6
  br label %51

29:                                               ; preds = %20, %15
  %30 = getelementptr %struct.input_mt_slot, ptr %16, i32 1
  %31 = icmp eq ptr %30, %10
  br i1 %31, label %12, label %15

32:                                               ; preds = %48, %13
  %33 = phi ptr [ %7, %13 ], [ %49, %48 ]
  %34 = getelementptr [14 x i32], ptr %33, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.input_mt_slot, ptr %33, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %14, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.input_mt_slot, ptr %33, i32 0, i32 2
  store i32 %1, ptr %43, align 4
  %44 = ptrtoint ptr %33 to i32
  %45 = ptrtoint ptr %7 to i32
  %46 = sub i32 %44, %45
  %47 = ashr exact i32 %46, 6
  br label %51

48:                                               ; preds = %37, %32
  %49 = getelementptr %struct.input_mt_slot, ptr %33, i32 1
  %50 = icmp eq ptr %49, %10
  br i1 %50, label %51, label %32

51:                                               ; preds = %48, %42, %24, %12, %6, %2
  %52 = phi i32 [ %28, %24 ], [ %47, %42 ], [ -1, %2 ], [ -1, %12 ], [ -1, %6 ], [ -1, %48 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
