; ModuleID = '/llk/IR/drivers/input/ff-core.c_pt.bc'
source_filename = "../drivers/input/ff-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_upload:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_upload\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_upload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_erase\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_flush\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_event:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_event\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_create:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_create\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }

@__kstrtab_input_ff_upload = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_upload = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_upload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_upload to i32), ptr @__kstrtab_input_ff_upload, ptr @__kstrtabns_input_ff_upload }, section "___ksymtab_gpl+input_ff_upload", align 4
@__kstrtab_input_ff_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_erase to i32), ptr @__kstrtab_input_ff_erase, ptr @__kstrtabns_input_ff_erase }, section "___ksymtab_gpl+input_ff_erase", align 4
@__kstrtab_input_ff_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_flush to i32), ptr @__kstrtab_input_ff_flush, ptr @__kstrtabns_input_ff_flush }, section "___ksymtab_gpl+input_ff_flush", align 4
@__kstrtab_input_ff_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_event = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_event to i32), ptr @__kstrtab_input_ff_event, ptr @__kstrtabns_input_ff_event }, section "___ksymtab_gpl+input_ff_event", align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot allocate device without any effects\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot allocate more than FF_MAX_EFFECTS effects\0A\00", align 1
@input_ff_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&ff->mutex\00", align 1
@__kstrtab_input_ff_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_create = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_create to i32), ptr @__kstrtab_input_ff_create, ptr @__kstrtabns_input_ff_create }, section "___ksymtab_gpl+input_ff_create", align 4
@__kstrtab_input_ff_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_destroy to i32), ptr @__kstrtab_input_ff_destroy, ptr @__kstrtabns_input_ff_destroy }, section "___ksymtab_gpl+input_ff_destroy", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_input_ff_create, ptr @__ksymtab_input_ff_destroy, ptr @__ksymtab_input_ff_erase, ptr @__ksymtab_input_ff_event, ptr @__ksymtab_input_ff_flush, ptr @__ksymtab_input_ff_upload], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_ff_upload(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %132, label %10

10:                                               ; preds = %3
  %11 = load i16, ptr %1, align 4
  %12 = add i16 %11, -88
  %13 = icmp ult i16 %12, -8
  br i1 %13, label %132, label %14

14:                                               ; preds = %10
  %15 = zext i16 %11 to i32
  %16 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 12
  %17 = lshr i32 %15, 5
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %15, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %132, label %24

24:                                               ; preds = %14
  %25 = icmp eq i16 %11, 81
  br i1 %25, label %26, label %40

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 5
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, -94
  %30 = icmp ult i16 %29, -6
  br i1 %30, label %132, label %31

31:                                               ; preds = %26
  %32 = zext i16 %28 to i32
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr %16, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %132, label %48

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 7
  %42 = getelementptr i32, ptr %41, i32 %17
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, %21
  %45 = icmp eq i32 %44, 0
  %46 = icmp eq i16 %11, 80
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %52, label %67

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 7
  %50 = getelementptr i32, ptr %49, i32 %17
  %51 = load volatile i32, ptr %50, align 4
  br label %67

52:                                               ; preds = %40
  %53 = getelementptr %struct.ff_device, ptr %5, i32 0, i32 7, i32 2
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 131072
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %132, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 5
  %59 = load i16, ptr %58, align 4
  %60 = udiv i16 %59, 3
  %61 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 5, i32 0, i32 1
  %62 = load i16, ptr %61, align 2
  %63 = udiv i16 %62, 6
  %64 = add nuw nsw i16 %63, %60
  store i16 81, ptr %1, align 4
  store i16 90, ptr %58, align 4
  store i16 50, ptr %61, align 2
  %65 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i16 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 5, i32 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(12) %66, i8 0, i64 12, i1 false) #6
  br label %67

67:                                               ; preds = %57, %48, %40
  %68 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %68) #6
  %69 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp eq i16 %70, -1
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 9
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %130

77:                                               ; preds = %82, %73
  %78 = phi i32 [ %83, %82 ], [ 0, %73 ]
  %79 = getelementptr %struct.ff_device, ptr %5, i32 0, i32 11, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = add nuw nsw i32 %78, 1
  %84 = icmp eq i32 %83, %75
  br i1 %84, label %130, label %77

85:                                               ; preds = %77
  %86 = trunc i32 %78 to i16
  store i16 %86, ptr %69, align 2
  br label %116

87:                                               ; preds = %67
  %88 = icmp slt i16 %70, 0
  br i1 %88, label %130, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 9
  %91 = load i32, ptr %90, align 4
  %92 = icmp sgt i32 %91, %71
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = getelementptr %struct.ff_device, ptr %5, i32 0, i32 11, i32 %71
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %130, label %97

97:                                               ; preds = %93
  %98 = icmp eq ptr %2, null
  %99 = icmp eq ptr %95, %2
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 10
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr %struct.ff_effect, ptr %103, i32 %71
  %105 = load i16, ptr %1, align 4
  %106 = load i16, ptr %104, align 4
  %107 = icmp eq i16 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %101
  %109 = icmp eq i16 %105, 81
  br i1 %109, label %110, label %116

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 5
  %112 = load i16, ptr %111, align 4
  %113 = getelementptr %struct.ff_effect, ptr %103, i32 %71, i32 5
  %114 = load i16, ptr %113, align 4
  %115 = icmp eq i16 %112, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %110, %108, %85
  %117 = phi ptr [ null, %85 ], [ %104, %110 ], [ %104, %108 ]
  %118 = phi i32 [ %78, %85 ], [ %71, %110 ], [ %71, %108 ]
  %119 = load ptr, ptr %5, align 4
  %120 = tail call i32 %119(ptr noundef %0, ptr noundef %1, ptr noundef %117) #6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %123) #6
  %124 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 10
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr %struct.ff_effect, ptr %125, i32 %118
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %126, ptr noundef align 4 dereferenceable(44) %1, i32 44, i1 false)
  %127 = getelementptr %struct.ff_device, ptr %5, i32 0, i32 11, i32 %118
  store ptr %2, ptr %127, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %128 = load i16, ptr %123, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %123, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %130

130:                                              ; preds = %122, %116, %110, %101, %97, %93, %89, %87, %82, %73
  %131 = phi i32 [ %120, %116 ], [ 0, %122 ], [ -22, %110 ], [ -13, %97 ], [ -22, %87 ], [ -22, %89 ], [ -22, %93 ], [ -22, %101 ], [ -28, %73 ], [ -28, %82 ]
  tail call void @mutex_unlock(ptr noundef %68) #6
  br label %132

132:                                              ; preds = %130, %52, %31, %26, %14, %10, %3
  %133 = phi i32 [ %131, %130 ], [ -38, %3 ], [ -22, %14 ], [ -22, %10 ], [ -22, %31 ], [ -22, %26 ], [ -22, %52 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_ff_erase(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = tail call fastcc i32 @erase_effect(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef %11) #6
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ -38, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @erase_effect(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = getelementptr %struct.ff_device, ptr %5, i32 0, i32 11, i32 %1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %2, null
  %17 = icmp eq ptr %13, %2
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #6
  %21 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, i32 noundef %1, i32 noundef 0) #6
  store ptr null, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %24 = load i16, ptr %20, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %26 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef %1) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #6
  store ptr %2, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %33 = load i16, ptr %20, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %35

35:                                               ; preds = %32, %29, %19, %15, %11, %7, %3
  %36 = phi i32 [ %30, %32 ], [ 0, %29 ], [ 0, %19 ], [ -13, %15 ], [ -22, %3 ], [ -22, %7 ], [ -22, %11 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_ff_flush(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ff_device, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.ff_device, ptr %4, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %12, %9 ], [ 0, %2 ]
  %11 = tail call fastcc i32 @erase_effect(ptr noundef %0, i32 noundef %10, ptr noundef %1)
  %12 = add nuw nsw i32 %10, 1
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %9, label %15

15:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_ff_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 21
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  switch i32 %2, label %31 [
    i32 96, label %9
    i32 97, label %20
  ]

9:                                                ; preds = %8
  %10 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 12, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = icmp ugt i32 %3, 65535
  %15 = or i1 %14, %13
  br i1 %15, label %45, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = trunc i32 %3 to i16
  tail call void %18(ptr noundef %0, i16 noundef zeroext %19) #6
  br label %45

20:                                               ; preds = %8
  %21 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 12, i32 3
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp ugt i32 %3, 65535
  %26 = or i1 %25, %24
  br i1 %26, label %45, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = trunc i32 %3 to i16
  tail call void %29(ptr noundef %0, i16 noundef zeroext %30) #6
  br label %45

31:                                               ; preds = %8
  %32 = icmp slt i32 %2, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, %2
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = getelementptr %struct.ff_device, ptr %6, i32 0, i32 11, i32 %2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0, i32 noundef %2, i32 noundef %3) #6
  br label %45

45:                                               ; preds = %41, %37, %33, %31, %27, %20, %16, %9, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_ff_create(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #7
  br label %57

6:                                                ; preds = %2
  %7 = icmp ugt i32 %1, 96
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #7
  br label %57

10:                                               ; preds = %6
  %11 = shl nuw nsw i32 %1, 2
  %12 = add nuw nsw i32 %11, 72
  %13 = icmp ult i32 %12, %1
  br i1 %13, label %57, label %14

14:                                               ; preds = %10
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %14
  %18 = mul nuw nsw i32 %1, 44
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #8
  %20 = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 10
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %15) #6
  br label %57

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 9
  store i32 %1, ptr %24, align 64
  %25 = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull @input_ff_create.__key) #6
  %26 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  store ptr %15, ptr %26, align 8
  %27 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 33
  store ptr @input_ff_flush, ptr %27, align 4
  %28 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 34
  store ptr @input_ff_event, ptr %28, align 8
  %29 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 2097152
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 12
  %33 = tail call i32 @_find_next_bit_le(ptr noundef %32, i32 noundef 128, i32 noundef 0) #6
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.ff_device, ptr %15, i32 0, i32 7
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %33, %35 ], [ %46, %37 ]
  %39 = and i32 %38, 31
  %40 = shl nuw i32 1, %39
  %41 = lshr i32 %38, 5
  %42 = getelementptr i32, ptr %36, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, ptr %42, align 4
  %45 = add nsw i32 %38, 1
  %46 = tail call i32 @_find_next_bit_le(ptr noundef %32, i32 noundef 128, i32 noundef %45) #6
  %47 = icmp slt i32 %46, 128
  br i1 %47, label %37, label %48

48:                                               ; preds = %37, %23
  %49 = getelementptr %struct.ff_device, ptr %15, i32 0, i32 7, i32 2
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 131072
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 12, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 65536
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %48, %22, %14, %10, %8, %4
  %58 = phi i32 [ -22, %8 ], [ -12, %22 ], [ -22, %4 ], [ -22, %10 ], [ -12, %14 ], [ 0, %53 ], [ 0, %48 ]
  ret i32 %58
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_ff_destroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -2097153
  store i32 %6, ptr %4, align 4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ff_device, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef nonnull %3) #6
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.ff_device, ptr %3, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.ff_device, ptr %3, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #6
  tail call void @kfree(ptr noundef nonnull %3) #6
  store ptr null, ptr %2, align 8
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{i64 2149305482}
!9 = !{i64 2149301306}
!10 = !{i64 2149301381, i64 2149301408, i64 2149301455, i64 2149301477, i64 2149301505, i64 2149301525}
!11 = !{i64 324186}
!12 = !{i64 2149329626}
