; ModuleID = '/llk/IR/drivers/scsi/scsi_bsg.c_pt.bc'
source_filename = "../drivers/scsi/scsi_bsg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.65, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.71, %union.anon.72, %union.anon.73, %union.anon.78, ptr, ptr }
%union.anon.65 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.rb_node }
%union.anon.73 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, %struct.list_head, ptr }
%union.anon.78 = type { i64, [8 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@scsi_bsg_sg_io_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [41 x i8] c"\014BIDI support in bsg has been removed.\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_bsg_register_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  %5 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %6, %1 ]
  %12 = tail call ptr @bsg_register_queue(ptr noundef %3, ptr noundef %4, ptr noundef %11, ptr noundef nonnull @scsi_bsg_sg_io_fn) #7
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsg_register_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bsg_sg_io_fn(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %185

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %185

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i1, ptr @scsi_bsg_sg_io_fn.__already_done, align 1
  br i1 %21, label %185, label %22, !prof !8

22:                                               ; preds = %20
  store i1 true, ptr @scsi_bsg_sg_io_fn.__already_done, align 1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %185

24:                                               ; preds = %16, %12
  %25 = phi i32 [ 35, %16 ], [ 34, %12 ]
  %26 = tail call ptr @scsi_alloc_request(ptr noundef %0, i32 noundef %25, i32 noundef 0) #7
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %26 to i32
  br label %185

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.request, ptr %26, i32 0, i32 7
  store i32 %3, ptr %31, align 4
  %32 = getelementptr %struct.request, ptr %26, i32 1
  %33 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = trunc i32 %34 to i16
  %36 = getelementptr %struct.request, ptr %26, i32 1, i32 5
  store i16 %35, ptr %36, align 4
  %37 = and i32 %34, 65535
  %38 = icmp ugt i32 %37, 16
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = getelementptr %struct.request, ptr %26, i32 1, i32 4
  %41 = load ptr, ptr %40, align 4
  br label %48

42:                                               ; preds = %30
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #9
  %44 = getelementptr %struct.request, ptr %26, i32 1, i32 4
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %183, label %46

46:                                               ; preds = %42
  %47 = load i16, ptr %36, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i16 [ %35, %39 ], [ %47, %46 ]
  %50 = phi ptr [ %41, %39 ], [ %43, %46 ]
  %51 = getelementptr %struct.request, ptr %26, i32 1, i32 4
  %52 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 4
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = inttoptr i32 %54 to ptr
  %56 = zext i16 %49 to i32
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %55, i32 %56, i32 -1090519040) #10, !srcloc !9
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67, !prof !8

60:                                               ; preds = %48
  %61 = tail call ptr @llvm.thread.pointer() #7
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #11, !srcloc !10
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %66 = tail call i32 @arm_copy_from_user(ptr noundef %50, ptr noundef %55, i32 noundef %56) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %67

67:                                               ; preds = %60, %48
  %68 = phi i32 [ %66, %60 ], [ %56, %48 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70, !prof !8

70:                                               ; preds = %67
  %71 = sub i32 %56, %68
  %72 = getelementptr i8, ptr %50, i32 %71
  tail call void @llvm.memset.p0.i32(ptr align 1 %72, i8 0, i32 %68, i1 false) #7
  br label %178

73:                                               ; preds = %67
  %74 = load ptr, ptr %51, align 4
  %75 = tail call zeroext i1 @scsi_cmd_allowed(ptr noundef %74, i32 noundef %2) #7
  br i1 %75, label %76, label %178

76:                                               ; preds = %73
  %77 = load i32, ptr %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %26, align 8
  %81 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 15
  %82 = load i64, ptr %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = inttoptr i32 %83 to ptr
  %85 = tail call i32 @blk_rq_map_user(ptr noundef %80, ptr noundef %26, ptr noundef null, ptr noundef %84, i32 noundef %77, i32 noundef 3264) #7
  br label %97

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 14
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %26, align 8
  %92 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 16
  %93 = load i64, ptr %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = inttoptr i32 %94 to ptr
  %96 = tail call i32 @blk_rq_map_user(ptr noundef %91, ptr noundef %26, ptr noundef null, ptr noundef %95, i32 noundef %88, i32 noundef 3264) #7
  br label %97

97:                                               ; preds = %90, %79
  %98 = phi i32 [ %85, %79 ], [ %96, %90 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %178

100:                                              ; preds = %97, %86
  %101 = getelementptr inbounds %struct.request, ptr %26, i32 0, i32 10
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 18
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  %107 = tail call zeroext i8 @blk_execute_rq(ptr noundef %26, i1 noundef zeroext %106) #7
  %108 = getelementptr %struct.request, ptr %26, i32 1, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 255
  %111 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 23
  store i32 %110, ptr %111, align 4
  %112 = load i32, ptr %108, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  %115 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 22
  store i32 %114, ptr %115, align 8
  %116 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 21
  store i32 0, ptr %116, align 4
  %117 = load i32, ptr %108, align 4
  %118 = and i32 %117, -2147483394
  %119 = icmp eq i32 %118, 2
  %120 = select i1 %119, i32 8, i32 0
  store i32 %120, ptr %116, align 4
  %121 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 25
  %122 = icmp ne i32 %110, 0
  %123 = icmp ne i32 %114, 0
  %124 = select i1 %122, i1 true, i1 %123
  %125 = select i1 %124, i1 true, i1 %119
  %126 = zext i1 %125 to i32
  store i32 %126, ptr %121, align 4
  %127 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 27
  store i32 0, ptr %127, align 4
  %128 = getelementptr %struct.request, ptr %26, i32 1, i32 7
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %164, label %131

131:                                              ; preds = %100
  %132 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 10
  %133 = load i64, ptr %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %164, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 9
  %137 = load i32, ptr %136, align 4
  %138 = tail call i32 @llvm.umin.i32(i32 %137, i32 %129)
  %139 = trunc i64 %133 to i32
  %140 = inttoptr i32 %139 to ptr
  %141 = getelementptr %struct.request, ptr %26, i32 1, i32 9
  %142 = load ptr, ptr %141, align 4
  %143 = icmp slt i32 %138, 0
  %144 = load i1, ptr @check_copy_size.__already_done, align 1
  %145 = xor i1 %144, true
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %148, !prof !13

147:                                              ; preds = %135
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %148

148:                                              ; preds = %147, %135
  br i1 %143, label %164, label %149, !prof !13

149:                                              ; preds = %148
  %150 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %140, i32 %138, i32 -1090519040) #10, !srcloc !14
  %151 = extractvalue { i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = tail call ptr @llvm.thread.pointer() #7
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 3
  %156 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %155) #11, !srcloc !10
  %157 = and i32 %156, -13
  %158 = or i32 %157, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %159 = tail call i32 @arm_copy_to_user(ptr noundef %140, ptr noundef %142, i32 noundef %138) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %160

160:                                              ; preds = %153, %149
  %161 = phi i32 [ %159, %153 ], [ %138, %149 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 %138, ptr %127, align 4
  br label %164

164:                                              ; preds = %163, %160, %148, %131, %100
  %165 = phi i32 [ 0, %131 ], [ 0, %100 ], [ 0, %163 ], [ -14, %160 ], [ -14, %148 ]
  %166 = getelementptr inbounds %struct.request, ptr %26, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  %170 = getelementptr %struct.request, ptr %26, i32 1, i32 8
  %171 = load i32, ptr %170, align 4
  br i1 %169, label %172, label %174

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 28
  store i32 %171, ptr %173, align 8
  br label %176

174:                                              ; preds = %164
  %175 = getelementptr inbounds %struct.sg_io_v4, ptr %1, i32 0, i32 29
  store i32 %171, ptr %175, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = tail call i32 @blk_rq_unmap_user(ptr noundef %102) #7
  br label %178

178:                                              ; preds = %176, %97, %73, %70
  %179 = phi i32 [ %98, %97 ], [ %165, %176 ], [ -1, %73 ], [ -14, %70 ]
  %180 = load ptr, ptr %51, align 4
  %181 = icmp eq ptr %180, %32
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  tail call void @kfree(ptr noundef %180) #7
  br label %183

183:                                              ; preds = %182, %178, %42
  %184 = phi i32 [ -12, %42 ], [ %179, %178 ], [ %179, %182 ]
  tail call void @blk_mq_free_request(ptr noundef %26) #7
  br label %185

185:                                              ; preds = %183, %28, %22, %20, %8, %4
  %186 = phi i32 [ %29, %28 ], [ %184, %183 ], [ -22, %8 ], [ -22, %4 ], [ -95, %22 ], [ -95, %20 ]
  ret i32 %186
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_cmd_allowed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2151529568, i64 2151529593}
!10 = !{i64 4025680}
!11 = !{i64 4025877}
!12 = !{i64 2151511156}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2151530146, i64 2151530171}
