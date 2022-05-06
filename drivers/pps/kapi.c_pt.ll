; ModuleID = '/llk/IR/drivers/pps/kapi.c_pt.bc'
source_filename = "../drivers/pps/kapi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_register_source:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_register_source\22\09\09\09\09\09"
module asm "__kstrtabns_pps_register_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_unregister_source:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_unregister_source\22\09\09\09\09\09"
module asm "__kstrtabns_pps_unregister_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_event:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_event\22\09\09\09\09\09"
module asm "__kstrtabns_pps_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"\013pps_core: %s: unsupported default parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013pps_core: %s: unspecified time format\0A\00", align 1
@pps_register_source.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&pps->queue\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\013pps_core: %s: unable to create char device\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"new PPS source %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\013pps_core: %s: unable to register source\0A\00", align 1
@__kstrtab_pps_register_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_register_source = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_register_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_register_source to i32), ptr @__kstrtab_pps_register_source, ptr @__kstrtabns_pps_register_source }, section "___ksymtab+pps_register_source", align 4
@__kstrtab_pps_unregister_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_unregister_source = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_unregister_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_unregister_source to i32), ptr @__kstrtab_pps_unregister_source, ptr @__kstrtabns_pps_unregister_source }, section "___ksymtab+pps_unregister_source", align 4
@__kstrtab_pps_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_event = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_event to i32), ptr @__kstrtab_pps_event, ptr @__kstrtabns_pps_event }, section "___ksymtab+pps_event", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"echo %s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_pps_event, ptr @__ksymtab_pps_register_source, ptr @__ksymtab_pps_unregister_source], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pps_register_source(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pps_source_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, %1
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #6
  br label %41

9:                                                ; preds = %2
  %10 = and i32 %4, 12288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #6
  br label %41

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 264) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 1
  store i32 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 1, i32 1
  store i32 %1, ptr %20, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef align 4 dereferenceable(80) %0, i32 80, i1 false)
  %21 = getelementptr inbounds %struct.pps_source_info, ptr %16, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 192
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.pps_source_info, ptr %16, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store ptr @pps_echo_client_default, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %25, %18
  %31 = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @pps_register_source.__key) #8
  %32 = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 14
  store i32 0, ptr %32, align 8
  %33 = tail call i32 @pps_register_cdev(ptr noundef nonnull %16) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #6
  tail call void @kfree(ptr noundef nonnull %16) #8
  %37 = inttoptr i32 %33 to ptr
  br label %41

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 12
  %40 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %0) #6
  br label %44

41:                                               ; preds = %35, %14, %12, %7
  %42 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %12 ], [ %37, %35 ], [ inttoptr (i32 -12 to ptr), %14 ]
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #6
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi ptr [ %42, %41 ], [ %16, %38 ]
  ret ptr %45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pps_echo_client_default(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @.str.8, ptr @.str.7
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %8, ptr noundef nonnull %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pps_register_cdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pps_unregister_source(ptr noundef %0) #0 {
  tail call void @pps_unregister_cdev(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_unregister_cdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pps_event(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = and i32 %2, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pps/kapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

8:                                                ; preds = %4
  %9 = load i64, ptr %1, align 8
  %10 = getelementptr inbounds [2 x i64], ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 14
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 192
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.pps_source_info, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0, i32 noundef %2, ptr noundef %3) #8
  %22 = load i32, ptr %15, align 4
  br label %23

23:                                               ; preds = %19, %8
  %24 = phi i32 [ %22, %19 ], [ %16, %8 ]
  %25 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 6
  store i32 %24, ptr %25, align 8
  %26 = and i32 %24, %2
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %23
  %30 = and i32 %24, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 1, i32 2
  %34 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 1, i32 2, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %12
  %37 = icmp sgt i32 %36, 999999999
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = add nuw i32 %36, 999999999
  %40 = tail call i32 @llvm.smin.i32(i32 %36, i32 1999999999) #8
  %41 = sub nuw i32 %39, %40
  %42 = freeze i32 %41
  %43 = udiv i32 %42, 1000000000
  %44 = mul i32 %43, 1000000000
  %45 = sub i32 %42, %44
  %46 = zext i32 %43 to i64
  %47 = add nsw i32 %36, -1000000000
  %48 = sub nsw i32 %47, %41
  %49 = add nsw i32 %48, %45
  %50 = add i64 %9, 1
  %51 = add i64 %50, %46
  br label %52

52:                                               ; preds = %38, %32
  %53 = phi i32 [ %49, %38 ], [ %36, %32 ]
  %54 = phi i64 [ %51, %38 ], [ %9, %32 ]
  %55 = icmp slt i32 %53, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = tail call i32 @llvm.smax.i32(i32 %53, i32 -1000000000) #8
  %58 = icmp ult i32 %53, -1000000000
  %59 = sext i1 %58 to i32
  %60 = zext i1 %58 to i32
  %61 = sub nsw i32 %57, %53
  %62 = add nsw i32 %61, %59
  %63 = udiv i32 %62, 1000000000
  %64 = add nuw nsw i32 %63, %60
  %65 = mul i32 %64, 1000000000
  %66 = add nsw i32 %53, 1000000000
  %67 = add i32 %66, %65
  %68 = zext i32 %64 to i64
  %69 = xor i64 %68, -1
  %70 = add i64 %54, %69
  br label %71

71:                                               ; preds = %56, %52
  %72 = phi i32 [ %67, %56 ], [ %53, %52 ]
  %73 = phi i64 [ %70, %56 ], [ %54, %52 ]
  %74 = load i64, ptr %33, align 8
  %75 = add i64 %74, %73
  br label %79

76:                                               ; preds = %23
  %77 = and i32 %26, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %154, label %90

79:                                               ; preds = %71, %29
  %80 = phi i32 [ %12, %29 ], [ %72, %71 ]
  %81 = phi i64 [ %9, %29 ], [ %75, %71 ]
  %82 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 4
  store i64 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 4, i32 1
  store i32 %80, ptr %83, align 8
  %84 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 4, i32 2
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 8
  %88 = and i32 %26, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %148, label %90

90:                                               ; preds = %79, %76
  %91 = phi i64 [ %81, %79 ], [ %9, %76 ]
  %92 = phi i32 [ %80, %79 ], [ %12, %76 ]
  %93 = and i32 %24, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %139, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 1, i32 3
  %97 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 1, i32 3, i32 1
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, %92
  %100 = icmp sgt i32 %99, 999999999
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = add nuw i32 %99, 999999999
  %103 = tail call i32 @llvm.smin.i32(i32 %99, i32 1999999999) #8
  %104 = sub nuw i32 %102, %103
  %105 = freeze i32 %104
  %106 = udiv i32 %105, 1000000000
  %107 = mul i32 %106, 1000000000
  %108 = sub i32 %105, %107
  %109 = zext i32 %106 to i64
  %110 = add nsw i32 %99, -1000000000
  %111 = sub nsw i32 %110, %104
  %112 = add nsw i32 %111, %108
  %113 = add i64 %91, 1
  %114 = add i64 %113, %109
  br label %115

115:                                              ; preds = %101, %95
  %116 = phi i32 [ %112, %101 ], [ %99, %95 ]
  %117 = phi i64 [ %114, %101 ], [ %91, %95 ]
  %118 = icmp slt i32 %116, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  %120 = tail call i32 @llvm.smax.i32(i32 %116, i32 -1000000000) #8
  %121 = icmp ult i32 %116, -1000000000
  %122 = sext i1 %121 to i32
  %123 = zext i1 %121 to i32
  %124 = sub nsw i32 %120, %116
  %125 = add nsw i32 %124, %122
  %126 = udiv i32 %125, 1000000000
  %127 = add nuw nsw i32 %126, %123
  %128 = mul i32 %127, 1000000000
  %129 = add nsw i32 %116, 1000000000
  %130 = add i32 %129, %128
  %131 = zext i32 %127 to i64
  %132 = xor i64 %131, -1
  %133 = add i64 %117, %132
  br label %134

134:                                              ; preds = %119, %115
  %135 = phi i32 [ %130, %119 ], [ %116, %115 ]
  %136 = phi i64 [ %133, %119 ], [ %117, %115 ]
  %137 = load i64, ptr %96, align 8
  %138 = add i64 %137, %136
  br label %139

139:                                              ; preds = %134, %90
  %140 = phi i32 [ %92, %90 ], [ %135, %134 ]
  %141 = phi i64 [ %91, %90 ], [ %138, %134 ]
  %142 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 5
  store i64 %141, ptr %142, align 8
  %143 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 5, i32 1
  store i32 %140, ptr %143, align 8
  %144 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 5, i32 2
  store i32 0, ptr %144, align 4
  %145 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 4
  br label %148

148:                                              ; preds = %139, %79
  %149 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, 1
  store i32 %151, ptr %149, align 4
  %152 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %152, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  %153 = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 13
  tail call void @kill_fasync(ptr noundef %153, i32 noundef 29, i32 noundef 1) #8
  br label %154

154:                                              ; preds = %148, %76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }

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
!9 = !{i64 2151921728, i64 2151922211, i64 2151921765, i64 2151921821, i64 2151921855, i64 2151921879, i64 2151921920, i64 2151921941, i64 2151921969, i64 2151922003}
