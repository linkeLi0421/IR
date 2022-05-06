; ModuleID = '/llk/IR/kernel/sched/pelt.c_pt.bc'
source_filename = "../kernel/sched/pelt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.1, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.1 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.2, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.2 = type { i64, i64 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }

@runnable_avg_yN_inv = internal unnamed_addr constant [32 x i32] [i32 -1, i32 -92032294, i32 -182092524, i32 -270222950, i32 -356464922, i32 -440858906, i32 -523444501, i32 -604260458, i32 -683344695, i32 -760734319, i32 -836465644, i32 -910574203, i32 -983094768, i32 -1054061367, i32 -1123507298, i32 -1191465146, i32 -1257966797, i32 -1323043455, i32 -1386725655, i32 -1449043276, i32 -1510025559, i32 -1569701118, i32 -1628097953, i32 -1685243463, i32 -1741164464, i32 -1795887192, i32 -1849437325, i32 -1901839990, i32 -1953119773, i32 -2003300736, i32 -2052406425, i32 -2100459880], align 4
@__tracepoint_pelt_se_tp = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@sysctl_sched_features = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__tracepoint_pelt_cfs_tp = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pelt_rt_tp = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pelt_dl_tp = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pelt_thermal_tp = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__update_load_avg_blocked_se(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10
  %4 = load i64, ptr %3, align 64
  %5 = sub i64 %0, %4
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i64 %0, ptr %3, align 64
  br label %150

8:                                                ; preds = %2
  %9 = icmp ult i64 %5, 1024
  br i1 %9, label %150, label %10

10:                                               ; preds = %8
  %11 = lshr i64 %5, 10
  %12 = and i64 %5, -1024
  %13 = add i64 %12, %4
  store i64 %13, ptr %3, align 64
  %14 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %11, %16
  %18 = lshr i64 %17, 10
  %19 = icmp ult i64 %17, 1024
  br i1 %19, label %94, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = icmp ugt i64 %17, 2065407
  br i1 %23, label %79, label %24, !prof !8

24:                                               ; preds = %20
  %25 = trunc i64 %18 to i32
  %26 = icmp ugt i32 %25, 31
  br i1 %26, label %27, label %32, !prof !8

27:                                               ; preds = %24
  %28 = lshr i32 %25, 5
  %29 = zext i32 %28 to i64
  %30 = lshr i64 %22, %29
  %31 = and i32 %25, 31
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i64 [ %30, %27 ], [ %22, %24 ]
  %34 = phi i32 [ %31, %27 ], [ %25, %24 ]
  %35 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i64 %33, 4294967295
  %38 = zext i32 %36 to i64
  %39 = mul nuw i64 %37, %38
  %40 = lshr i64 %39, 32
  %41 = icmp ult i64 %33, 4294967296
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = lshr i64 %33, 32
  %44 = mul nuw i64 %43, %38
  %45 = add nuw i64 %40, %44
  br label %46

46:                                               ; preds = %42, %32
  %47 = phi i64 [ %40, %32 ], [ %45, %42 ]
  store i64 %47, ptr %21, align 8
  %48 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 2
  %49 = load i64, ptr %48, align 16
  br i1 %26, label %50, label %55, !prof !8

50:                                               ; preds = %46
  %51 = lshr i32 %25, 5
  %52 = zext i32 %51 to i64
  %53 = lshr i64 %49, %52
  %54 = and i32 %25, 31
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i64 [ %53, %50 ], [ %49, %46 ]
  %57 = phi i32 [ %54, %50 ], [ %25, %46 ]
  %58 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = and i64 %56, 4294967295
  %61 = zext i32 %59 to i64
  %62 = mul nuw i64 %60, %61
  %63 = lshr i64 %62, 32
  %64 = icmp ult i64 %56, 4294967296
  br i1 %64, label %69, label %65

65:                                               ; preds = %55
  %66 = lshr i64 %56, 32
  %67 = mul nuw i64 %66, %61
  %68 = add nuw i64 %63, %67
  br label %69

69:                                               ; preds = %65, %55
  %70 = phi i64 [ %63, %55 ], [ %68, %65 ]
  store i64 %70, ptr %48, align 16
  %71 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 3
  %72 = load i32, ptr %71, align 8
  %73 = zext i32 %72 to i64
  br i1 %26, label %74, label %81, !prof !8

74:                                               ; preds = %69
  %75 = lshr i32 %25, 5
  %76 = zext i32 %75 to i64
  %77 = lshr i64 %73, %76
  %78 = and i32 %25, 31
  br label %81

79:                                               ; preds = %20
  %80 = trunc i64 %17 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %21, i8 0, i64 20, i1 false) #4
  br label %91

81:                                               ; preds = %74, %69
  %82 = phi i64 [ %77, %74 ], [ %73, %69 ]
  %83 = phi i32 [ %78, %74 ], [ %25, %69 ]
  %84 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = zext i32 %85 to i64
  %87 = mul nuw i64 %82, %86
  %88 = lshr i64 %87, 32
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %71, align 8
  %90 = trunc i64 %17 to i32
  br label %91

91:                                               ; preds = %81, %79
  %92 = phi i32 [ %90, %81 ], [ %80, %79 ]
  %93 = and i32 %92, 1023
  br label %96

94:                                               ; preds = %10
  %95 = trunc i64 %17 to i32
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i32 [ %93, %91 ], [ %95, %94 ]
  store i32 %97, ptr %14, align 4
  %98 = trunc i64 %18 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %150, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %1, align 64
  %102 = add nuw nsw i32 %97, 46718
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 1
  %105 = load i64, ptr %104, align 8
  %106 = mul i64 %105, %103
  %107 = icmp ult i64 %106, 4294967296
  br i1 %107, label %108, label %111, !prof !9

108:                                              ; preds = %100
  %109 = trunc i64 %106 to i32
  %110 = udiv i32 %109, %102
  br label %115

111:                                              ; preds = %100
  %112 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %102, i64 %106) #5, !srcloc !10
  %113 = extractvalue { i64, i64 } %112, 1
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i32 [ %110, %108 ], [ %114, %111 ]
  %117 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 5
  store i32 %116, ptr %117, align 32
  %118 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 2
  %119 = load i64, ptr %118, align 16
  %120 = icmp ult i64 %119, 4294967296
  br i1 %120, label %121, label %124, !prof !9

121:                                              ; preds = %115
  %122 = trunc i64 %119 to i32
  %123 = udiv i32 %122, %102
  br label %128

124:                                              ; preds = %115
  %125 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %102, i64 %119) #5, !srcloc !10
  %126 = extractvalue { i64, i64 } %125, 1
  %127 = trunc i64 %126 to i32
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i32 [ %123, %121 ], [ %127, %124 ]
  %130 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 6
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 3
  %132 = load i32, ptr %131, align 8
  %133 = udiv i32 %132, %102
  %134 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 7
  store volatile i32 %133, ptr %134, align 8
  %135 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_se_tp, i32 0, i32 1), align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %128
  %138 = tail call ptr @llvm.thread.pointer() #4
  %139 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %140 = load i32, ptr %139, align 8
  %141 = lshr i32 %140, 5
  %142 = getelementptr i32, ptr @__cpu_online_mask, i32 %141
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %140, 31
  %145 = shl nuw i32 1, %144
  %146 = and i32 %145, %143
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %137
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  %149 = tail call i32 @__traceiter_pelt_se_tp(ptr noundef null, ptr noundef %1) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  br label %150

150:                                              ; preds = %148, %137, %128, %96, %8, %7
  %151 = phi i32 [ 0, %96 ], [ 1, %128 ], [ 1, %137 ], [ 1, %148 ], [ 0, %7 ], [ 0, %8 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__update_load_avg_se(i64 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10
  %5 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, %2
  %11 = load i64, ptr %4, align 64
  %12 = sub i64 %0, %11
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 %0, ptr %4, align 64
  br label %229

15:                                               ; preds = %3
  %16 = icmp ult i64 %12, 1024
  br i1 %16, label %229, label %17

17:                                               ; preds = %15
  %18 = lshr i64 %12, 10
  %19 = and i64 %12, -1024
  %20 = add i64 %19, %11
  store i64 %20, ptr %4, align 64
  %21 = trunc i64 %18 to i32
  %22 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %18, %24
  %26 = lshr i64 %25, 10
  %27 = icmp ult i64 %25, 1024
  br i1 %27, label %140, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = icmp ugt i64 %25, 2065407
  br i1 %31, label %87, label %32, !prof !8

32:                                               ; preds = %28
  %33 = trunc i64 %26 to i32
  %34 = icmp ugt i32 %33, 31
  br i1 %34, label %35, label %40, !prof !8

35:                                               ; preds = %32
  %36 = lshr i32 %33, 5
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %30, %37
  %39 = and i32 %33, 31
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i64 [ %38, %35 ], [ %30, %32 ]
  %42 = phi i32 [ %39, %35 ], [ %33, %32 ]
  %43 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = and i64 %41, 4294967295
  %46 = zext i32 %44 to i64
  %47 = mul nuw i64 %45, %46
  %48 = lshr i64 %47, 32
  %49 = icmp ult i64 %41, 4294967296
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = lshr i64 %41, 32
  %52 = mul nuw i64 %51, %46
  %53 = add nuw i64 %48, %52
  br label %54

54:                                               ; preds = %50, %40
  %55 = phi i64 [ %48, %40 ], [ %53, %50 ]
  store i64 %55, ptr %29, align 8
  %56 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 2
  %57 = load i64, ptr %56, align 16
  br i1 %34, label %58, label %63, !prof !8

58:                                               ; preds = %54
  %59 = lshr i32 %33, 5
  %60 = zext i32 %59 to i64
  %61 = lshr i64 %57, %60
  %62 = and i32 %33, 31
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i64 [ %61, %58 ], [ %57, %54 ]
  %65 = phi i32 [ %62, %58 ], [ %33, %54 ]
  %66 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = and i64 %64, 4294967295
  %69 = zext i32 %67 to i64
  %70 = mul nuw i64 %68, %69
  %71 = lshr i64 %70, 32
  %72 = icmp ult i64 %64, 4294967296
  br i1 %72, label %77, label %73

73:                                               ; preds = %63
  %74 = lshr i64 %64, 32
  %75 = mul nuw i64 %74, %69
  %76 = add nuw i64 %71, %75
  br label %77

77:                                               ; preds = %73, %63
  %78 = phi i64 [ %71, %63 ], [ %76, %73 ]
  store i64 %78, ptr %56, align 16
  %79 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 3
  %80 = load i32, ptr %79, align 8
  %81 = zext i32 %80 to i64
  br i1 %34, label %82, label %90, !prof !8

82:                                               ; preds = %77
  %83 = lshr i32 %33, 5
  %84 = zext i32 %83 to i64
  %85 = lshr i64 %81, %84
  %86 = and i32 %33, 31
  br label %90

87:                                               ; preds = %28
  %88 = trunc i64 %25 to i32
  %89 = and i32 %88, 1023
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %29, i8 0, i64 20, i1 false) #4
  br i1 %7, label %138, label %132

90:                                               ; preds = %82, %77
  %91 = phi i64 [ %85, %82 ], [ %81, %77 ]
  %92 = phi i32 [ %86, %82 ], [ %33, %77 ]
  %93 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = zext i32 %94 to i64
  %96 = mul nuw i64 %91, %95
  %97 = lshr i64 %96, 32
  %98 = trunc i64 %97 to i32
  store i32 %98, ptr %79, align 8
  %99 = trunc i64 %25 to i32
  %100 = and i32 %99, 1023
  br i1 %7, label %138, label %101

101:                                              ; preds = %90
  %102 = sub i32 1024, %23
  %103 = zext i32 %102 to i64
  br i1 %34, label %111, label %104, !prof !8

104:                                              ; preds = %101
  %105 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %33
  %106 = load i32, ptr %105, align 4
  %107 = zext i32 %106 to i64
  %108 = mul nuw i64 %107, %103
  %109 = lshr i64 %108, 32
  %110 = trunc i64 %109 to i32
  br label %123

111:                                              ; preds = %101
  %112 = lshr i32 %33, 5
  %113 = zext i32 %112 to i64
  %114 = lshr i64 %103, %113
  %115 = and i32 %33, 31
  %116 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  %119 = mul nuw nsw i64 %114, %118
  %120 = lshr i64 %119, 32
  %121 = trunc i64 %120 to i32
  %122 = lshr i64 47742, %113
  br label %123

123:                                              ; preds = %111, %104
  %124 = phi i64 [ %118, %111 ], [ %107, %104 ]
  %125 = phi i32 [ %121, %111 ], [ %110, %104 ]
  %126 = phi i64 [ %122, %111 ], [ 47742, %104 ]
  %127 = mul nuw nsw i64 %126, %124
  %128 = lshr i64 %127, 32
  %129 = trunc i64 %128 to i32
  %130 = add i32 %125, 46718
  %131 = sub i32 %130, %129
  br label %132

132:                                              ; preds = %123, %87
  %133 = phi i64 [ %78, %123 ], [ 0, %87 ]
  %134 = phi i64 [ %55, %123 ], [ 0, %87 ]
  %135 = phi i32 [ %100, %123 ], [ %89, %87 ]
  %136 = phi i32 [ %131, %123 ], [ 46718, %87 ]
  %137 = add i32 %136, %135
  store i32 %135, ptr %22, align 4
  br label %147

138:                                              ; preds = %90, %87
  %139 = phi i32 [ %100, %90 ], [ %89, %87 ]
  store i32 %139, ptr %22, align 4
  br label %165

140:                                              ; preds = %17
  %141 = trunc i64 %25 to i32
  store i32 %141, ptr %22, align 4
  br i1 %7, label %165, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 1
  %144 = load i64, ptr %143, align 8
  %145 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 2
  %146 = load i64, ptr %145, align 16
  br label %147

147:                                              ; preds = %142, %132
  %148 = phi i32 [ %135, %132 ], [ %141, %142 ]
  %149 = phi i64 [ %133, %132 ], [ %146, %142 ]
  %150 = phi i64 [ %134, %132 ], [ %144, %142 ]
  %151 = phi i32 [ %137, %132 ], [ %21, %142 ]
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 1
  %154 = add i64 %150, %152
  store i64 %154, ptr %153, align 8
  %155 = shl i32 %151, 10
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 2
  %158 = add i64 %149, %156
  store i64 %158, ptr %157, align 16
  %159 = or i1 %7, %10
  br i1 %159, label %165, label %160

160:                                              ; preds = %147
  %161 = shl i32 %151, 10
  %162 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 3
  %163 = load i32, ptr %162, align 8
  %164 = add i32 %163, %161
  store i32 %164, ptr %162, align 8
  br label %165

165:                                              ; preds = %160, %147, %140, %138
  %166 = phi i32 [ %141, %140 ], [ %139, %138 ], [ %148, %147 ], [ %148, %160 ]
  %167 = trunc i64 %26 to i32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %229, label %169

169:                                              ; preds = %165
  %170 = load i32, ptr %2, align 64
  %171 = add nuw nsw i32 %166, 46718
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 1
  %174 = load i64, ptr %173, align 8
  %175 = mul i64 %174, %172
  %176 = icmp ult i64 %175, 4294967296
  br i1 %176, label %177, label %180, !prof !9

177:                                              ; preds = %169
  %178 = trunc i64 %175 to i32
  %179 = udiv i32 %178, %171
  br label %184

180:                                              ; preds = %169
  %181 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %171, i64 %175) #5, !srcloc !10
  %182 = extractvalue { i64, i64 } %181, 1
  %183 = trunc i64 %182 to i32
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i32 [ %179, %177 ], [ %183, %180 ]
  %186 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 5
  store i32 %185, ptr %186, align 32
  %187 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 2
  %188 = load i64, ptr %187, align 16
  %189 = icmp ult i64 %188, 4294967296
  br i1 %189, label %190, label %193, !prof !9

190:                                              ; preds = %184
  %191 = trunc i64 %188 to i32
  %192 = udiv i32 %191, %171
  br label %197

193:                                              ; preds = %184
  %194 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %171, i64 %188) #5, !srcloc !10
  %195 = extractvalue { i64, i64 } %194, 1
  %196 = trunc i64 %195 to i32
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i32 [ %192, %190 ], [ %196, %193 ]
  %199 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 6
  store i32 %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 3
  %201 = load i32, ptr %200, align 8
  %202 = udiv i32 %201, %171
  %203 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 7
  store volatile i32 %202, ptr %203, align 8
  %204 = load i32, ptr @sysctl_sched_features, align 4
  %205 = and i32 %204, 1048576
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %197
  %208 = getelementptr inbounds %struct.sched_entity, ptr %2, i32 0, i32 10, i32 9
  %209 = load i32, ptr %208, align 16
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = and i32 %209, 2147483647
  store volatile i32 %212, ptr %208, align 16
  br label %213

213:                                              ; preds = %211, %207, %197
  %214 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_se_tp, i32 0, i32 1), align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %213
  %217 = tail call ptr @llvm.thread.pointer() #4
  %218 = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 2
  %219 = load i32, ptr %218, align 8
  %220 = lshr i32 %219, 5
  %221 = getelementptr i32, ptr @__cpu_online_mask, i32 %220
  %222 = load volatile i32, ptr %221, align 4
  %223 = and i32 %219, 31
  %224 = shl nuw i32 1, %223
  %225 = and i32 %224, %222
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %216
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  %228 = tail call i32 @__traceiter_pelt_se_tp(ptr noundef null, ptr noundef %2) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  br label %229

229:                                              ; preds = %227, %216, %213, %165, %15, %14
  %230 = phi i32 [ 0, %165 ], [ 1, %213 ], [ 1, %216 ], [ 1, %227 ], [ 0, %14 ], [ 0, %15 ]
  ret i32 %230
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__update_load_avg_cfs_rq(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15
  %4 = load i32, ptr %1, align 64
  %5 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = load i64, ptr %3, align 64
  %11 = sub i64 %0, %10
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 %0, ptr %3, align 64
  br label %221

14:                                               ; preds = %2
  %15 = icmp ult i64 %11, 1024
  br i1 %15, label %221, label %16

16:                                               ; preds = %14
  %17 = lshr i64 %11, 10
  %18 = and i64 %11, -1024
  %19 = add i64 %18, %10
  store i64 %19, ptr %3, align 64
  %20 = icmp eq i32 %4, 0
  %21 = select i1 %20, i32 0, i32 %6
  %22 = trunc i64 %17 to i32
  %23 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = add nuw nsw i64 %17, %25
  %27 = lshr i64 %26, 10
  %28 = icmp ult i64 %26, 1024
  br i1 %28, label %140, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = icmp ugt i64 %26, 2065407
  br i1 %32, label %88, label %33, !prof !8

33:                                               ; preds = %29
  %34 = trunc i64 %27 to i32
  %35 = icmp ugt i32 %34, 31
  br i1 %35, label %36, label %41, !prof !8

36:                                               ; preds = %33
  %37 = lshr i32 %34, 5
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %31, %38
  %40 = and i32 %34, 31
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i64 [ %39, %36 ], [ %31, %33 ]
  %43 = phi i32 [ %40, %36 ], [ %34, %33 ]
  %44 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i64 %42, 4294967295
  %47 = zext i32 %45 to i64
  %48 = mul nuw i64 %46, %47
  %49 = lshr i64 %48, 32
  %50 = icmp ult i64 %42, 4294967296
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = lshr i64 %42, 32
  %53 = mul nuw i64 %52, %47
  %54 = add nuw i64 %49, %53
  br label %55

55:                                               ; preds = %51, %41
  %56 = phi i64 [ %49, %41 ], [ %54, %51 ]
  store i64 %56, ptr %30, align 8
  %57 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 2
  %58 = load i64, ptr %57, align 16
  br i1 %35, label %59, label %64, !prof !8

59:                                               ; preds = %55
  %60 = lshr i32 %34, 5
  %61 = zext i32 %60 to i64
  %62 = lshr i64 %58, %61
  %63 = and i32 %34, 31
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i64 [ %62, %59 ], [ %58, %55 ]
  %66 = phi i32 [ %63, %59 ], [ %34, %55 ]
  %67 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = and i64 %65, 4294967295
  %70 = zext i32 %68 to i64
  %71 = mul nuw i64 %69, %70
  %72 = lshr i64 %71, 32
  %73 = icmp ult i64 %65, 4294967296
  br i1 %73, label %78, label %74

74:                                               ; preds = %64
  %75 = lshr i64 %65, 32
  %76 = mul nuw i64 %75, %70
  %77 = add nuw i64 %72, %76
  br label %78

78:                                               ; preds = %74, %64
  %79 = phi i64 [ %72, %64 ], [ %77, %74 ]
  store i64 %79, ptr %57, align 16
  %80 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 3
  %81 = load i32, ptr %80, align 8
  %82 = zext i32 %81 to i64
  br i1 %35, label %83, label %91, !prof !8

83:                                               ; preds = %78
  %84 = lshr i32 %34, 5
  %85 = zext i32 %84 to i64
  %86 = lshr i64 %82, %85
  %87 = and i32 %34, 31
  br label %91

88:                                               ; preds = %29
  %89 = trunc i64 %26 to i32
  %90 = and i32 %89, 1023
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false) #4
  br i1 %20, label %138, label %133

91:                                               ; preds = %83, %78
  %92 = phi i64 [ %86, %83 ], [ %82, %78 ]
  %93 = phi i32 [ %87, %83 ], [ %34, %78 ]
  %94 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = zext i32 %95 to i64
  %97 = mul nuw i64 %92, %96
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  store i32 %99, ptr %80, align 8
  %100 = trunc i64 %26 to i32
  %101 = and i32 %100, 1023
  br i1 %20, label %138, label %102

102:                                              ; preds = %91
  %103 = sub i32 1024, %24
  %104 = zext i32 %103 to i64
  br i1 %35, label %112, label %105, !prof !8

105:                                              ; preds = %102
  %106 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %34
  %107 = load i32, ptr %106, align 4
  %108 = zext i32 %107 to i64
  %109 = mul nuw i64 %108, %104
  %110 = lshr i64 %109, 32
  %111 = trunc i64 %110 to i32
  br label %124

112:                                              ; preds = %102
  %113 = lshr i32 %34, 5
  %114 = zext i32 %113 to i64
  %115 = lshr i64 %104, %114
  %116 = and i32 %34, 31
  %117 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %116
  %118 = load i32, ptr %117, align 4
  %119 = zext i32 %118 to i64
  %120 = mul nuw nsw i64 %115, %119
  %121 = lshr i64 %120, 32
  %122 = trunc i64 %121 to i32
  %123 = lshr i64 47742, %114
  br label %124

124:                                              ; preds = %112, %105
  %125 = phi i64 [ %119, %112 ], [ %108, %105 ]
  %126 = phi i32 [ %122, %112 ], [ %111, %105 ]
  %127 = phi i64 [ %123, %112 ], [ 47742, %105 ]
  %128 = mul nuw nsw i64 %127, %125
  %129 = lshr i64 %128, 32
  %130 = trunc i64 %129 to i32
  %131 = add i32 %126, 46718
  %132 = sub i32 %131, %130
  br label %133

133:                                              ; preds = %124, %88
  %134 = phi i64 [ %56, %124 ], [ 0, %88 ]
  %135 = phi i32 [ %101, %124 ], [ %90, %88 ]
  %136 = phi i32 [ %132, %124 ], [ 46718, %88 ]
  %137 = add i32 %136, %135
  store i32 %135, ptr %23, align 4
  br label %145

138:                                              ; preds = %91, %88
  %139 = phi i32 [ %101, %91 ], [ %90, %88 ]
  store i32 %139, ptr %23, align 4
  br label %153

140:                                              ; preds = %16
  %141 = trunc i64 %26 to i32
  store i32 %141, ptr %23, align 4
  br i1 %20, label %153, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 1
  %144 = load i64, ptr %143, align 8
  br label %145

145:                                              ; preds = %142, %133
  %146 = phi i32 [ %135, %133 ], [ %141, %142 ]
  %147 = phi i64 [ %134, %133 ], [ %144, %142 ]
  %148 = phi i32 [ %137, %133 ], [ %22, %142 ]
  %149 = mul i32 %148, %4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 1
  %152 = add i64 %147, %150
  store i64 %152, ptr %151, align 8
  br label %153

153:                                              ; preds = %145, %140, %138
  %154 = phi i32 [ %139, %138 ], [ %146, %145 ], [ %141, %140 ]
  %155 = phi i32 [ %22, %138 ], [ %148, %145 ], [ %22, %140 ]
  %156 = icmp eq i32 %21, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = shl i32 %21, 10
  %159 = mul i32 %158, %155
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 2
  %162 = load i64, ptr %161, align 16
  %163 = add i64 %162, %160
  store i64 %163, ptr %161, align 16
  br label %164

164:                                              ; preds = %157, %153
  %165 = or i1 %20, %9
  br i1 %165, label %171, label %166

166:                                              ; preds = %164
  %167 = shl i32 %155, 10
  %168 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 3
  %169 = load i32, ptr %168, align 8
  %170 = add i32 %169, %167
  store i32 %170, ptr %168, align 8
  br label %171

171:                                              ; preds = %166, %164
  %172 = trunc i64 %27 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %221, label %174

174:                                              ; preds = %171
  %175 = add nuw nsw i32 %154, 46718
  %176 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 1
  %177 = load i64, ptr %176, align 8
  %178 = icmp ult i64 %177, 4294967296
  br i1 %178, label %179, label %182, !prof !9

179:                                              ; preds = %174
  %180 = trunc i64 %177 to i32
  %181 = udiv i32 %180, %175
  br label %186

182:                                              ; preds = %174
  %183 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %175, i64 %177) #5, !srcloc !10
  %184 = extractvalue { i64, i64 } %183, 1
  %185 = trunc i64 %184 to i32
  br label %186

186:                                              ; preds = %182, %179
  %187 = phi i32 [ %181, %179 ], [ %185, %182 ]
  %188 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 5
  store i32 %187, ptr %188, align 32
  %189 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 2
  %190 = load i64, ptr %189, align 16
  %191 = icmp ult i64 %190, 4294967296
  br i1 %191, label %192, label %195, !prof !9

192:                                              ; preds = %186
  %193 = trunc i64 %190 to i32
  %194 = udiv i32 %193, %175
  br label %199

195:                                              ; preds = %186
  %196 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %175, i64 %190) #5, !srcloc !10
  %197 = extractvalue { i64, i64 } %196, 1
  %198 = trunc i64 %197 to i32
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %194, %192 ], [ %198, %195 ]
  %201 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 6
  store i32 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 3
  %203 = load i32, ptr %202, align 8
  %204 = udiv i32 %203, %175
  %205 = getelementptr inbounds %struct.cfs_rq, ptr %1, i32 0, i32 15, i32 7
  store volatile i32 %204, ptr %205, align 8
  %206 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_cfs_tp, i32 0, i32 1), align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %199
  %209 = tail call ptr @llvm.thread.pointer() #4
  %210 = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 2
  %211 = load i32, ptr %210, align 8
  %212 = lshr i32 %211, 5
  %213 = getelementptr i32, ptr @__cpu_online_mask, i32 %212
  %214 = load volatile i32, ptr %213, align 4
  %215 = and i32 %211, 31
  %216 = shl nuw i32 1, %215
  %217 = and i32 %216, %214
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %208
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  %220 = tail call i32 @__traceiter_pelt_cfs_tp(ptr noundef null, ptr noundef %1) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  br label %221

221:                                              ; preds = %219, %208, %199, %171, %14, %13
  %222 = phi i32 [ 0, %171 ], [ 1, %199 ], [ 1, %208 ], [ 1, %219 ], [ 0, %13 ], [ 0, %14 ]
  ret i32 %222
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @update_rt_rq_load_avg(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44
  %5 = load i64, ptr %4, align 64
  %6 = sub i64 %0, %5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i64 %0, ptr %4, align 64
  br label %214

9:                                                ; preds = %3
  %10 = icmp ult i64 %6, 1024
  br i1 %10, label %214, label %11

11:                                               ; preds = %9
  %12 = lshr i64 %6, 10
  %13 = and i64 %6, -1024
  %14 = add i64 %13, %5
  store i64 %14, ptr %4, align 64
  %15 = icmp eq i32 %2, 0
  %16 = trunc i64 %12 to i32
  %17 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %12, %19
  %21 = lshr i64 %20, 10
  %22 = icmp ult i64 %20, 1024
  br i1 %22, label %136, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %20, 2065407
  br i1 %26, label %82, label %27, !prof !8

27:                                               ; preds = %23
  %28 = trunc i64 %21 to i32
  %29 = icmp ugt i32 %28, 31
  br i1 %29, label %30, label %35, !prof !8

30:                                               ; preds = %27
  %31 = lshr i32 %28, 5
  %32 = zext i32 %31 to i64
  %33 = lshr i64 %25, %32
  %34 = and i32 %28, 31
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i64 [ %33, %30 ], [ %25, %27 ]
  %37 = phi i32 [ %34, %30 ], [ %28, %27 ]
  %38 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = and i64 %36, 4294967295
  %41 = zext i32 %39 to i64
  %42 = mul nuw i64 %40, %41
  %43 = lshr i64 %42, 32
  %44 = icmp ult i64 %36, 4294967296
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = lshr i64 %36, 32
  %47 = mul nuw i64 %46, %41
  %48 = add nuw i64 %43, %47
  br label %49

49:                                               ; preds = %45, %35
  %50 = phi i64 [ %43, %35 ], [ %48, %45 ]
  store i64 %50, ptr %24, align 8
  %51 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 2
  %52 = load i64, ptr %51, align 16
  br i1 %29, label %53, label %58, !prof !8

53:                                               ; preds = %49
  %54 = lshr i32 %28, 5
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %52, %55
  %57 = and i32 %28, 31
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i64 [ %56, %53 ], [ %52, %49 ]
  %60 = phi i32 [ %57, %53 ], [ %28, %49 ]
  %61 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = and i64 %59, 4294967295
  %64 = zext i32 %62 to i64
  %65 = mul nuw i64 %63, %64
  %66 = lshr i64 %65, 32
  %67 = icmp ult i64 %59, 4294967296
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = lshr i64 %59, 32
  %70 = mul nuw i64 %69, %64
  %71 = add nuw i64 %66, %70
  br label %72

72:                                               ; preds = %68, %58
  %73 = phi i64 [ %66, %58 ], [ %71, %68 ]
  store i64 %73, ptr %51, align 16
  %74 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 3
  %75 = load i32, ptr %74, align 8
  %76 = zext i32 %75 to i64
  br i1 %29, label %77, label %85, !prof !8

77:                                               ; preds = %72
  %78 = lshr i32 %28, 5
  %79 = zext i32 %78 to i64
  %80 = lshr i64 %76, %79
  %81 = and i32 %28, 31
  br label %85

82:                                               ; preds = %23
  %83 = trunc i64 %20 to i32
  %84 = and i32 %83, 1023
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %24, i8 0, i64 20, i1 false) #4
  br i1 %15, label %134, label %127

85:                                               ; preds = %77, %72
  %86 = phi i64 [ %80, %77 ], [ %76, %72 ]
  %87 = phi i32 [ %81, %77 ], [ %28, %72 ]
  %88 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = zext i32 %89 to i64
  %91 = mul nuw i64 %86, %90
  %92 = lshr i64 %91, 32
  %93 = trunc i64 %92 to i32
  store i32 %93, ptr %74, align 8
  %94 = trunc i64 %20 to i32
  %95 = and i32 %94, 1023
  br i1 %15, label %134, label %96

96:                                               ; preds = %85
  %97 = sub i32 1024, %18
  %98 = zext i32 %97 to i64
  br i1 %29, label %106, label %99, !prof !8

99:                                               ; preds = %96
  %100 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %28
  %101 = load i32, ptr %100, align 4
  %102 = zext i32 %101 to i64
  %103 = mul nuw i64 %102, %98
  %104 = lshr i64 %103, 32
  %105 = trunc i64 %104 to i32
  br label %118

106:                                              ; preds = %96
  %107 = lshr i32 %28, 5
  %108 = zext i32 %107 to i64
  %109 = lshr i64 %98, %108
  %110 = and i32 %28, 31
  %111 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = zext i32 %112 to i64
  %114 = mul nuw nsw i64 %109, %113
  %115 = lshr i64 %114, 32
  %116 = trunc i64 %115 to i32
  %117 = lshr i64 47742, %108
  br label %118

118:                                              ; preds = %106, %99
  %119 = phi i64 [ %113, %106 ], [ %102, %99 ]
  %120 = phi i32 [ %116, %106 ], [ %105, %99 ]
  %121 = phi i64 [ %117, %106 ], [ 47742, %99 ]
  %122 = mul nuw nsw i64 %121, %119
  %123 = lshr i64 %122, 32
  %124 = trunc i64 %123 to i32
  %125 = add i32 %120, 46718
  %126 = sub i32 %125, %124
  br label %127

127:                                              ; preds = %118, %82
  %128 = phi i32 [ %93, %118 ], [ 0, %82 ]
  %129 = phi i64 [ %73, %118 ], [ 0, %82 ]
  %130 = phi i64 [ %50, %118 ], [ 0, %82 ]
  %131 = phi i32 [ %95, %118 ], [ %84, %82 ]
  %132 = phi i32 [ %126, %118 ], [ 46718, %82 ]
  %133 = add i32 %132, %131
  store i32 %131, ptr %17, align 4
  br label %145

134:                                              ; preds = %85, %82
  %135 = phi i32 [ %95, %85 ], [ %84, %82 ]
  store i32 %135, ptr %17, align 4
  br label %163

136:                                              ; preds = %11
  %137 = trunc i64 %20 to i32
  store i32 %137, ptr %17, align 4
  br i1 %15, label %163, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 1
  %140 = load i64, ptr %139, align 8
  %141 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 2
  %142 = load i64, ptr %141, align 16
  %143 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 3
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %138, %127
  %146 = phi i32 [ %131, %127 ], [ %137, %138 ]
  %147 = phi i32 [ %128, %127 ], [ %144, %138 ]
  %148 = phi i64 [ %129, %127 ], [ %142, %138 ]
  %149 = phi i64 [ %130, %127 ], [ %140, %138 ]
  %150 = phi i32 [ %133, %127 ], [ %16, %138 ]
  %151 = mul i32 %150, %2
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 1
  %154 = add i64 %149, %152
  store i64 %154, ptr %153, align 8
  %155 = shl i32 %2, 10
  %156 = mul i32 %155, %150
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 2
  %159 = add i64 %148, %157
  store i64 %159, ptr %158, align 16
  %160 = shl i32 %150, 10
  %161 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 3
  %162 = add i32 %147, %160
  store i32 %162, ptr %161, align 8
  br label %163

163:                                              ; preds = %145, %136, %134
  %164 = phi i32 [ %137, %136 ], [ %135, %134 ], [ %146, %145 ]
  %165 = trunc i64 %21 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %214, label %167

167:                                              ; preds = %163
  %168 = add nuw nsw i32 %164, 46718
  %169 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 1
  %170 = load i64, ptr %169, align 8
  %171 = icmp ult i64 %170, 4294967296
  br i1 %171, label %172, label %175, !prof !9

172:                                              ; preds = %167
  %173 = trunc i64 %170 to i32
  %174 = udiv i32 %173, %168
  br label %179

175:                                              ; preds = %167
  %176 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %168, i64 %170) #5, !srcloc !10
  %177 = extractvalue { i64, i64 } %176, 1
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i32 [ %174, %172 ], [ %178, %175 ]
  %181 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 5
  store i32 %180, ptr %181, align 32
  %182 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 2
  %183 = load i64, ptr %182, align 16
  %184 = icmp ult i64 %183, 4294967296
  br i1 %184, label %185, label %188, !prof !9

185:                                              ; preds = %179
  %186 = trunc i64 %183 to i32
  %187 = udiv i32 %186, %168
  br label %192

188:                                              ; preds = %179
  %189 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %168, i64 %183) #5, !srcloc !10
  %190 = extractvalue { i64, i64 } %189, 1
  %191 = trunc i64 %190 to i32
  br label %192

192:                                              ; preds = %188, %185
  %193 = phi i32 [ %187, %185 ], [ %191, %188 ]
  %194 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 6
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 3
  %196 = load i32, ptr %195, align 8
  %197 = udiv i32 %196, %168
  %198 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 44, i32 7
  store volatile i32 %197, ptr %198, align 8
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_rt_tp, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %192
  %202 = tail call ptr @llvm.thread.pointer() #4
  %203 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 5
  %206 = getelementptr i32, ptr @__cpu_online_mask, i32 %205
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %204, 31
  %209 = shl nuw i32 1, %208
  %210 = and i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %201
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %213 = tail call i32 @__traceiter_pelt_rt_tp(ptr noundef null, ptr noundef %1) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  br label %214

214:                                              ; preds = %212, %201, %192, %163, %9, %8
  %215 = phi i32 [ 0, %163 ], [ 1, %192 ], [ 1, %201 ], [ 1, %212 ], [ 0, %8 ], [ 0, %9 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @update_dl_rq_load_avg(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45
  %5 = load i64, ptr %4, align 64
  %6 = sub i64 %0, %5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i64 %0, ptr %4, align 64
  br label %214

9:                                                ; preds = %3
  %10 = icmp ult i64 %6, 1024
  br i1 %10, label %214, label %11

11:                                               ; preds = %9
  %12 = lshr i64 %6, 10
  %13 = and i64 %6, -1024
  %14 = add i64 %13, %5
  store i64 %14, ptr %4, align 64
  %15 = icmp eq i32 %2, 0
  %16 = trunc i64 %12 to i32
  %17 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %12, %19
  %21 = lshr i64 %20, 10
  %22 = icmp ult i64 %20, 1024
  br i1 %22, label %136, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %20, 2065407
  br i1 %26, label %82, label %27, !prof !8

27:                                               ; preds = %23
  %28 = trunc i64 %21 to i32
  %29 = icmp ugt i32 %28, 31
  br i1 %29, label %30, label %35, !prof !8

30:                                               ; preds = %27
  %31 = lshr i32 %28, 5
  %32 = zext i32 %31 to i64
  %33 = lshr i64 %25, %32
  %34 = and i32 %28, 31
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i64 [ %33, %30 ], [ %25, %27 ]
  %37 = phi i32 [ %34, %30 ], [ %28, %27 ]
  %38 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = and i64 %36, 4294967295
  %41 = zext i32 %39 to i64
  %42 = mul nuw i64 %40, %41
  %43 = lshr i64 %42, 32
  %44 = icmp ult i64 %36, 4294967296
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = lshr i64 %36, 32
  %47 = mul nuw i64 %46, %41
  %48 = add nuw i64 %43, %47
  br label %49

49:                                               ; preds = %45, %35
  %50 = phi i64 [ %43, %35 ], [ %48, %45 ]
  store i64 %50, ptr %24, align 8
  %51 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 2
  %52 = load i64, ptr %51, align 16
  br i1 %29, label %53, label %58, !prof !8

53:                                               ; preds = %49
  %54 = lshr i32 %28, 5
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %52, %55
  %57 = and i32 %28, 31
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i64 [ %56, %53 ], [ %52, %49 ]
  %60 = phi i32 [ %57, %53 ], [ %28, %49 ]
  %61 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = and i64 %59, 4294967295
  %64 = zext i32 %62 to i64
  %65 = mul nuw i64 %63, %64
  %66 = lshr i64 %65, 32
  %67 = icmp ult i64 %59, 4294967296
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = lshr i64 %59, 32
  %70 = mul nuw i64 %69, %64
  %71 = add nuw i64 %66, %70
  br label %72

72:                                               ; preds = %68, %58
  %73 = phi i64 [ %66, %58 ], [ %71, %68 ]
  store i64 %73, ptr %51, align 16
  %74 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 3
  %75 = load i32, ptr %74, align 8
  %76 = zext i32 %75 to i64
  br i1 %29, label %77, label %85, !prof !8

77:                                               ; preds = %72
  %78 = lshr i32 %28, 5
  %79 = zext i32 %78 to i64
  %80 = lshr i64 %76, %79
  %81 = and i32 %28, 31
  br label %85

82:                                               ; preds = %23
  %83 = trunc i64 %20 to i32
  %84 = and i32 %83, 1023
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %24, i8 0, i64 20, i1 false) #4
  br i1 %15, label %134, label %127

85:                                               ; preds = %77, %72
  %86 = phi i64 [ %80, %77 ], [ %76, %72 ]
  %87 = phi i32 [ %81, %77 ], [ %28, %72 ]
  %88 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = zext i32 %89 to i64
  %91 = mul nuw i64 %86, %90
  %92 = lshr i64 %91, 32
  %93 = trunc i64 %92 to i32
  store i32 %93, ptr %74, align 8
  %94 = trunc i64 %20 to i32
  %95 = and i32 %94, 1023
  br i1 %15, label %134, label %96

96:                                               ; preds = %85
  %97 = sub i32 1024, %18
  %98 = zext i32 %97 to i64
  br i1 %29, label %106, label %99, !prof !8

99:                                               ; preds = %96
  %100 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %28
  %101 = load i32, ptr %100, align 4
  %102 = zext i32 %101 to i64
  %103 = mul nuw i64 %102, %98
  %104 = lshr i64 %103, 32
  %105 = trunc i64 %104 to i32
  br label %118

106:                                              ; preds = %96
  %107 = lshr i32 %28, 5
  %108 = zext i32 %107 to i64
  %109 = lshr i64 %98, %108
  %110 = and i32 %28, 31
  %111 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = zext i32 %112 to i64
  %114 = mul nuw nsw i64 %109, %113
  %115 = lshr i64 %114, 32
  %116 = trunc i64 %115 to i32
  %117 = lshr i64 47742, %108
  br label %118

118:                                              ; preds = %106, %99
  %119 = phi i64 [ %113, %106 ], [ %102, %99 ]
  %120 = phi i32 [ %116, %106 ], [ %105, %99 ]
  %121 = phi i64 [ %117, %106 ], [ 47742, %99 ]
  %122 = mul nuw nsw i64 %121, %119
  %123 = lshr i64 %122, 32
  %124 = trunc i64 %123 to i32
  %125 = add i32 %120, 46718
  %126 = sub i32 %125, %124
  br label %127

127:                                              ; preds = %118, %82
  %128 = phi i32 [ %93, %118 ], [ 0, %82 ]
  %129 = phi i64 [ %73, %118 ], [ 0, %82 ]
  %130 = phi i64 [ %50, %118 ], [ 0, %82 ]
  %131 = phi i32 [ %95, %118 ], [ %84, %82 ]
  %132 = phi i32 [ %126, %118 ], [ 46718, %82 ]
  %133 = add i32 %132, %131
  store i32 %131, ptr %17, align 4
  br label %145

134:                                              ; preds = %85, %82
  %135 = phi i32 [ %95, %85 ], [ %84, %82 ]
  store i32 %135, ptr %17, align 4
  br label %163

136:                                              ; preds = %11
  %137 = trunc i64 %20 to i32
  store i32 %137, ptr %17, align 4
  br i1 %15, label %163, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 1
  %140 = load i64, ptr %139, align 8
  %141 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 2
  %142 = load i64, ptr %141, align 16
  %143 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 3
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %138, %127
  %146 = phi i32 [ %131, %127 ], [ %137, %138 ]
  %147 = phi i32 [ %128, %127 ], [ %144, %138 ]
  %148 = phi i64 [ %129, %127 ], [ %142, %138 ]
  %149 = phi i64 [ %130, %127 ], [ %140, %138 ]
  %150 = phi i32 [ %133, %127 ], [ %16, %138 ]
  %151 = mul i32 %150, %2
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 1
  %154 = add i64 %149, %152
  store i64 %154, ptr %153, align 8
  %155 = shl i32 %2, 10
  %156 = mul i32 %155, %150
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 2
  %159 = add i64 %148, %157
  store i64 %159, ptr %158, align 16
  %160 = shl i32 %150, 10
  %161 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 3
  %162 = add i32 %147, %160
  store i32 %162, ptr %161, align 8
  br label %163

163:                                              ; preds = %145, %136, %134
  %164 = phi i32 [ %137, %136 ], [ %135, %134 ], [ %146, %145 ]
  %165 = trunc i64 %21 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %214, label %167

167:                                              ; preds = %163
  %168 = add nuw nsw i32 %164, 46718
  %169 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 1
  %170 = load i64, ptr %169, align 8
  %171 = icmp ult i64 %170, 4294967296
  br i1 %171, label %172, label %175, !prof !9

172:                                              ; preds = %167
  %173 = trunc i64 %170 to i32
  %174 = udiv i32 %173, %168
  br label %179

175:                                              ; preds = %167
  %176 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %168, i64 %170) #5, !srcloc !10
  %177 = extractvalue { i64, i64 } %176, 1
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i32 [ %174, %172 ], [ %178, %175 ]
  %181 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 5
  store i32 %180, ptr %181, align 32
  %182 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 2
  %183 = load i64, ptr %182, align 16
  %184 = icmp ult i64 %183, 4294967296
  br i1 %184, label %185, label %188, !prof !9

185:                                              ; preds = %179
  %186 = trunc i64 %183 to i32
  %187 = udiv i32 %186, %168
  br label %192

188:                                              ; preds = %179
  %189 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %168, i64 %183) #5, !srcloc !10
  %190 = extractvalue { i64, i64 } %189, 1
  %191 = trunc i64 %190 to i32
  br label %192

192:                                              ; preds = %188, %185
  %193 = phi i32 [ %187, %185 ], [ %191, %188 ]
  %194 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 6
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 3
  %196 = load i32, ptr %195, align 8
  %197 = udiv i32 %196, %168
  %198 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 45, i32 7
  store volatile i32 %197, ptr %198, align 8
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_dl_tp, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %192
  %202 = tail call ptr @llvm.thread.pointer() #4
  %203 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 5
  %206 = getelementptr i32, ptr @__cpu_online_mask, i32 %205
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %204, 31
  %209 = shl nuw i32 1, %208
  %210 = and i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %201
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %213 = tail call i32 @__traceiter_pelt_dl_tp(ptr noundef null, ptr noundef %1) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  br label %214

214:                                              ; preds = %212, %201, %192, %163, %9, %8
  %215 = phi i32 [ 0, %163 ], [ 1, %192 ], [ 1, %201 ], [ 1, %212 ], [ 0, %8 ], [ 0, %9 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @update_thermal_load_avg(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46
  %5 = trunc i64 %2 to i32
  %6 = load i64, ptr %4, align 64
  %7 = sub i64 %0, %6
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i64 %0, ptr %4, align 64
  br label %215

10:                                               ; preds = %3
  %11 = icmp ult i64 %7, 1024
  br i1 %11, label %215, label %12

12:                                               ; preds = %10
  %13 = lshr i64 %7, 10
  %14 = and i64 %7, -1024
  %15 = add i64 %14, %6
  store i64 %15, ptr %4, align 64
  %16 = icmp eq i32 %5, 0
  %17 = trunc i64 %13 to i32
  %18 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = add nuw nsw i64 %13, %20
  %22 = lshr i64 %21, 10
  %23 = icmp ult i64 %21, 1024
  br i1 %23, label %137, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, 2065407
  br i1 %27, label %83, label %28, !prof !8

28:                                               ; preds = %24
  %29 = trunc i64 %22 to i32
  %30 = icmp ugt i32 %29, 31
  br i1 %30, label %31, label %36, !prof !8

31:                                               ; preds = %28
  %32 = lshr i32 %29, 5
  %33 = zext i32 %32 to i64
  %34 = lshr i64 %26, %33
  %35 = and i32 %29, 31
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i64 [ %34, %31 ], [ %26, %28 ]
  %38 = phi i32 [ %35, %31 ], [ %29, %28 ]
  %39 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = and i64 %37, 4294967295
  %42 = zext i32 %40 to i64
  %43 = mul nuw i64 %41, %42
  %44 = lshr i64 %43, 32
  %45 = icmp ult i64 %37, 4294967296
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = lshr i64 %37, 32
  %48 = mul nuw i64 %47, %42
  %49 = add nuw i64 %44, %48
  br label %50

50:                                               ; preds = %46, %36
  %51 = phi i64 [ %44, %36 ], [ %49, %46 ]
  store i64 %51, ptr %25, align 8
  %52 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 2
  %53 = load i64, ptr %52, align 16
  br i1 %30, label %54, label %59, !prof !8

54:                                               ; preds = %50
  %55 = lshr i32 %29, 5
  %56 = zext i32 %55 to i64
  %57 = lshr i64 %53, %56
  %58 = and i32 %29, 31
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i64 [ %57, %54 ], [ %53, %50 ]
  %61 = phi i32 [ %58, %54 ], [ %29, %50 ]
  %62 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = and i64 %60, 4294967295
  %65 = zext i32 %63 to i64
  %66 = mul nuw i64 %64, %65
  %67 = lshr i64 %66, 32
  %68 = icmp ult i64 %60, 4294967296
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = lshr i64 %60, 32
  %71 = mul nuw i64 %70, %65
  %72 = add nuw i64 %67, %71
  br label %73

73:                                               ; preds = %69, %59
  %74 = phi i64 [ %67, %59 ], [ %72, %69 ]
  store i64 %74, ptr %52, align 16
  %75 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 3
  %76 = load i32, ptr %75, align 8
  %77 = zext i32 %76 to i64
  br i1 %30, label %78, label %86, !prof !8

78:                                               ; preds = %73
  %79 = lshr i32 %29, 5
  %80 = zext i32 %79 to i64
  %81 = lshr i64 %77, %80
  %82 = and i32 %29, 31
  br label %86

83:                                               ; preds = %24
  %84 = trunc i64 %21 to i32
  %85 = and i32 %84, 1023
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %25, i8 0, i64 20, i1 false) #4
  br i1 %16, label %135, label %128

86:                                               ; preds = %78, %73
  %87 = phi i64 [ %81, %78 ], [ %77, %73 ]
  %88 = phi i32 [ %82, %78 ], [ %29, %73 ]
  %89 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = zext i32 %90 to i64
  %92 = mul nuw i64 %87, %91
  %93 = lshr i64 %92, 32
  %94 = trunc i64 %93 to i32
  store i32 %94, ptr %75, align 8
  %95 = trunc i64 %21 to i32
  %96 = and i32 %95, 1023
  br i1 %16, label %135, label %97

97:                                               ; preds = %86
  %98 = sub i32 1024, %19
  %99 = zext i32 %98 to i64
  br i1 %30, label %107, label %100, !prof !8

100:                                              ; preds = %97
  %101 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %29
  %102 = load i32, ptr %101, align 4
  %103 = zext i32 %102 to i64
  %104 = mul nuw i64 %103, %99
  %105 = lshr i64 %104, 32
  %106 = trunc i64 %105 to i32
  br label %119

107:                                              ; preds = %97
  %108 = lshr i32 %29, 5
  %109 = zext i32 %108 to i64
  %110 = lshr i64 %99, %109
  %111 = and i32 %29, 31
  %112 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = zext i32 %113 to i64
  %115 = mul nuw nsw i64 %110, %114
  %116 = lshr i64 %115, 32
  %117 = trunc i64 %116 to i32
  %118 = lshr i64 47742, %109
  br label %119

119:                                              ; preds = %107, %100
  %120 = phi i64 [ %114, %107 ], [ %103, %100 ]
  %121 = phi i32 [ %117, %107 ], [ %106, %100 ]
  %122 = phi i64 [ %118, %107 ], [ 47742, %100 ]
  %123 = mul nuw nsw i64 %122, %120
  %124 = lshr i64 %123, 32
  %125 = trunc i64 %124 to i32
  %126 = add i32 %121, 46718
  %127 = sub i32 %126, %125
  br label %128

128:                                              ; preds = %119, %83
  %129 = phi i32 [ %94, %119 ], [ 0, %83 ]
  %130 = phi i64 [ %74, %119 ], [ 0, %83 ]
  %131 = phi i64 [ %51, %119 ], [ 0, %83 ]
  %132 = phi i32 [ %96, %119 ], [ %85, %83 ]
  %133 = phi i32 [ %127, %119 ], [ 46718, %83 ]
  %134 = add i32 %133, %132
  store i32 %132, ptr %18, align 4
  br label %146

135:                                              ; preds = %86, %83
  %136 = phi i32 [ %96, %86 ], [ %85, %83 ]
  store i32 %136, ptr %18, align 4
  br label %164

137:                                              ; preds = %12
  %138 = trunc i64 %21 to i32
  store i32 %138, ptr %18, align 4
  br i1 %16, label %164, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 1
  %141 = load i64, ptr %140, align 8
  %142 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 2
  %143 = load i64, ptr %142, align 16
  %144 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 3
  %145 = load i32, ptr %144, align 8
  br label %146

146:                                              ; preds = %139, %128
  %147 = phi i32 [ %132, %128 ], [ %138, %139 ]
  %148 = phi i32 [ %129, %128 ], [ %145, %139 ]
  %149 = phi i64 [ %130, %128 ], [ %143, %139 ]
  %150 = phi i64 [ %131, %128 ], [ %141, %139 ]
  %151 = phi i32 [ %134, %128 ], [ %17, %139 ]
  %152 = mul i32 %151, %5
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 1
  %155 = add i64 %150, %153
  store i64 %155, ptr %154, align 8
  %156 = shl i32 %5, 10
  %157 = mul i32 %156, %151
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 2
  %160 = add i64 %149, %158
  store i64 %160, ptr %159, align 16
  %161 = shl i32 %151, 10
  %162 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 3
  %163 = add i32 %148, %161
  store i32 %163, ptr %162, align 8
  br label %164

164:                                              ; preds = %146, %137, %135
  %165 = phi i32 [ %138, %137 ], [ %136, %135 ], [ %147, %146 ]
  %166 = trunc i64 %22 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %215, label %168

168:                                              ; preds = %164
  %169 = add nuw nsw i32 %165, 46718
  %170 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 1
  %171 = load i64, ptr %170, align 8
  %172 = icmp ult i64 %171, 4294967296
  br i1 %172, label %173, label %176, !prof !9

173:                                              ; preds = %168
  %174 = trunc i64 %171 to i32
  %175 = udiv i32 %174, %169
  br label %180

176:                                              ; preds = %168
  %177 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %169, i64 %171) #5, !srcloc !10
  %178 = extractvalue { i64, i64 } %177, 1
  %179 = trunc i64 %178 to i32
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi i32 [ %175, %173 ], [ %179, %176 ]
  %182 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 5
  store i32 %181, ptr %182, align 32
  %183 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 2
  %184 = load i64, ptr %183, align 16
  %185 = icmp ult i64 %184, 4294967296
  br i1 %185, label %186, label %189, !prof !9

186:                                              ; preds = %180
  %187 = trunc i64 %184 to i32
  %188 = udiv i32 %187, %169
  br label %193

189:                                              ; preds = %180
  %190 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %169, i64 %184) #5, !srcloc !10
  %191 = extractvalue { i64, i64 } %190, 1
  %192 = trunc i64 %191 to i32
  br label %193

193:                                              ; preds = %189, %186
  %194 = phi i32 [ %188, %186 ], [ %192, %189 ]
  %195 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 6
  store i32 %194, ptr %195, align 4
  %196 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 3
  %197 = load i32, ptr %196, align 8
  %198 = udiv i32 %197, %169
  %199 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46, i32 7
  store volatile i32 %198, ptr %199, align 8
  %200 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_thermal_tp, i32 0, i32 1), align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %193
  %203 = tail call ptr @llvm.thread.pointer() #4
  %204 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 5
  %207 = getelementptr i32, ptr @__cpu_online_mask, i32 %206
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %205, 31
  %210 = shl nuw i32 1, %209
  %211 = and i32 %210, %208
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %202
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  %214 = tail call i32 @__traceiter_pelt_thermal_tp(ptr noundef null, ptr noundef %1) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  br label %215

215:                                              ; preds = %213, %202, %193, %164, %10, %9
  %216 = phi i32 [ 0, %164 ], [ 1, %193 ], [ 1, %202 ], [ 1, %213 ], [ 0, %9 ], [ 0, %10 ]
  ret i32 %216
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_se_tp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_cfs_tp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_rt_tp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_dl_tp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_thermal_tp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148583682, i64 2148583962, i64 2148584296, i64 2148584630}
!11 = !{i64 2156054903}
!12 = !{i64 2156055039}
!13 = !{i64 2155974589}
!14 = !{i64 2155974735}
!15 = !{i64 2155989788}
!16 = !{i64 2155989924}
!17 = !{i64 2156008946}
!18 = !{i64 2156009082}
!19 = !{i64 2156024228}
!20 = !{i64 2156024374}
