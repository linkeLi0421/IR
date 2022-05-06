; ModuleID = '/llk/IR/block/bounce.c_pt.bc'
source_filename = "../block/bounce.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.40 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.68, %struct.atomic_t }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_bounce__320_69_init_emergency_pool6 = internal global ptr @init_emergency_pool, section ".initcall6.init", align 4
@bounce_bio_split = internal global %struct.bio_set zeroinitializer, align 4
@page_pool = internal global %struct.mempool_s zeroinitializer, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"\016bounce: pool size: %d pages\0A\00", align 1
@init_bounce_bioset.bounce_bs_setup = internal unnamed_addr global i1 false, align 1
@bounce_bio_set = internal global %struct.bio_set zeroinitializer, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_block_bio_bounce = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_bounce__320_69_init_emergency_pool6], section "llvm.metadata"
@switch.table.__blk_queue_bounce = private unnamed_addr constant [7 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0], align 2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_emergency_pool() #0 section ".init.text" {
  %1 = load i32, ptr @max_pfn, align 4
  %2 = load i32, ptr @max_low_pfn, align 4
  %3 = icmp ugt i32 %1, %2
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = tail call i32 @mempool_init(ptr noundef nonnull @page_pool, i32 noundef 64, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bounce.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 64) #8
  %10 = load i1, ptr @init_bounce_bioset.bounce_bs_setup, align 1
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @bioset_init(ptr noundef nonnull @bounce_bio_set, i32 noundef 2, i32 noundef 0, i32 noundef 1) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bounce.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

15:                                               ; preds = %11
  %16 = tail call i32 @bioset_init(ptr noundef nonnull @bounce_bio_split, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bounce.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

19:                                               ; preds = %15
  store i1 true, ptr @init_bounce_bioset.bounce_bs_setup, align 1
  br label %20

20:                                               ; preds = %19, %8, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__blk_queue_bounce(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %302, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %5, 255
  %17 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr @movable_zone, align 4
  %20 = icmp eq i32 %19, 2
  %21 = add nsw i32 %16, -3
  %22 = and i32 %21, -7
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %65, %11
  %25 = phi i32 [ 0, %11 ], [ %45, %65 ]
  %26 = phi i1 [ false, %11 ], [ %58, %65 ]
  %27 = phi i32 [ 0, %11 ], [ %49, %65 ]
  %28 = phi i32 [ %13, %11 ], [ %67, %65 ]
  %29 = phi i32 [ %15, %11 ], [ %66, %65 ]
  %30 = phi i32 [ %9, %11 ], [ %68, %65 ]
  %31 = getelementptr %struct.bio_vec, ptr %18, i32 %29
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.bio_vec, ptr %18, i32 %29, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %28
  %36 = lshr i32 %35, 12
  %37 = getelementptr %struct.page, ptr %32, i32 %36
  %38 = getelementptr %struct.bio_vec, ptr %18, i32 %29, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %39, %28
  %41 = tail call i32 @llvm.umin.i32(i32 %30, i32 %40)
  %42 = and i32 %35, 4095
  %43 = sub nuw nsw i32 4096, %42
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 %43)
  %45 = add i32 %25, 1
  %46 = icmp ult i32 %25, 256
  %47 = lshr i32 %44, 9
  %48 = select i1 %46, i32 %47, i32 0
  %49 = add i32 %48, %27
  %50 = load i32, ptr %37, align 4
  %51 = lshr i32 %50, 30
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %57, label %53

53:                                               ; preds = %24
  %54 = icmp eq i32 %51, 3
  %55 = select i1 %54, i1 %20, i1 false
  %56 = select i1 %55, i1 true, i1 %26
  br label %57

57:                                               ; preds = %53, %24
  %58 = phi i1 [ true, %24 ], [ %56, %53 ]
  br i1 %23, label %65, label %59

59:                                               ; preds = %57
  %60 = add i32 %44, %28
  %61 = icmp eq i32 %60, %39
  %62 = zext i1 %61 to i32
  %63 = add i32 %29, %62
  %64 = select i1 %61, i32 0, i32 %60
  br label %65

65:                                               ; preds = %59, %57
  %66 = phi i32 [ %29, %57 ], [ %63, %59 ]
  %67 = phi i32 [ %28, %57 ], [ %64, %59 ]
  %68 = sub i32 %30, %44
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %24

70:                                               ; preds = %65
  br i1 %58, label %71, label %302

71:                                               ; preds = %70
  %72 = lshr i32 %9, 9
  %73 = icmp ult i32 %49, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = tail call ptr @bio_split(ptr noundef %3, i32 noundef %49, i32 noundef 3072, ptr noundef nonnull @bounce_bio_split) #7
  %76 = load ptr, ptr %1, align 4
  tail call void @bio_chain(ptr noundef %75, ptr noundef %76) #7
  %77 = load ptr, ptr %1, align 4
  tail call void @submit_bio_noacct(ptr noundef %77) #7
  store ptr %75, ptr %1, align 4
  %78 = getelementptr inbounds %struct.bio, ptr %75, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i32 [ %79, %74 ], [ %5, %71 ]
  %82 = phi ptr [ %75, %74 ], [ %3, %71 ]
  %83 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 2
  %84 = trunc i32 %81 to i8
  %85 = add i8 %84, -3
  %86 = icmp ult i8 %85, 7
  br i1 %86, label %131, label %87

87:                                               ; preds = %131, %80
  %88 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 8, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %139, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 8, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 8, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 16
  %97 = load ptr, ptr %96, align 4
  %98 = and i32 %81, 255
  %99 = add nsw i32 %98, -3
  %100 = and i32 %99, -7
  %101 = icmp eq i32 %100, 0
  br label %102

102:                                              ; preds = %124, %91
  %103 = phi i32 [ 0, %91 ], [ %117, %124 ]
  %104 = phi i32 [ %93, %91 ], [ %126, %124 ]
  %105 = phi i32 [ %95, %91 ], [ %125, %124 ]
  %106 = phi i32 [ %89, %91 ], [ %127, %124 ]
  %107 = getelementptr %struct.bio_vec, ptr %97, i32 %105, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, %104
  %110 = getelementptr %struct.bio_vec, ptr %97, i32 %105, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = sub i32 %111, %104
  %113 = tail call i32 @llvm.umin.i32(i32 %106, i32 %112) #7
  %114 = and i32 %109, 4095
  %115 = sub nuw nsw i32 4096, %114
  %116 = tail call i32 @llvm.umin.i32(i32 %113, i32 %115) #7
  %117 = add i32 %103, 1
  br i1 %101, label %124, label %118

118:                                              ; preds = %102
  %119 = add i32 %116, %104
  %120 = icmp eq i32 %119, %111
  %121 = zext i1 %120 to i32
  %122 = add i32 %105, %121
  %123 = select i1 %120, i32 0, i32 %119
  br label %124

124:                                              ; preds = %118, %102
  %125 = phi i32 [ %105, %102 ], [ %122, %118 ]
  %126 = phi i32 [ %104, %102 ], [ %123, %118 ]
  %127 = sub i32 %106, %116
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %102

129:                                              ; preds = %124
  %130 = trunc i32 %117 to i16
  br label %139

131:                                              ; preds = %80
  %132 = lshr i8 85, %85
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %87, label %135

135:                                              ; preds = %131
  %136 = sext i8 %85 to i32
  %137 = getelementptr inbounds [7 x i16], ptr @switch.table.__blk_queue_bounce, i32 0, i32 %136
  %138 = load i16, ptr %137, align 2
  br label %139

139:                                              ; preds = %135, %129, %87
  %140 = phi i16 [ 0, %87 ], [ %130, %129 ], [ %138, %135 ]
  %141 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %140, ptr noundef nonnull @bounce_bio_set) #7
  %142 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 1
  store ptr %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 3
  %146 = load i16, ptr %145, align 4
  %147 = and i16 %146, 2048
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 3
  %151 = load i16, ptr %150, align 4
  %152 = or i16 %151, 2048
  store i16 %152, ptr %150, align 4
  br label %153

153:                                              ; preds = %149, %139
  %154 = load i32, ptr %83, align 4
  %155 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 2
  store i32 %154, ptr %155, align 4
  %156 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 4
  %157 = load i16, ptr %156, align 2
  %158 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 4
  store i16 %157, ptr %158, align 2
  %159 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 5
  %160 = load i16, ptr %159, align 4
  %161 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 5
  store i16 %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 8
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 8
  store i64 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 8, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 8, i32 1
  store i32 %166, ptr %167, align 4
  %168 = trunc i32 %154 to i8
  switch i8 %168, label %179 [
    i8 3, label %235
    i8 5, label %235
    i8 9, label %235
    i8 7, label %169
  ]

169:                                              ; preds = %153
  %170 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 16
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 13
  %173 = load i16, ptr %172, align 4
  %174 = add i16 %173, 1
  store i16 %174, ptr %172, align 4
  %175 = zext i16 %173 to i32
  %176 = getelementptr %struct.bio_vec, ptr %171, i32 %175
  %177 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 16
  %178 = load ptr, ptr %177, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %176, ptr noundef align 4 dereferenceable(12) %178, i32 12, i1 false) #7
  br label %235

179:                                              ; preds = %153
  %180 = load i32, ptr %165, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %235, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 8, i32 3
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 8, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.bio, ptr %82, i32 0, i32 16
  %188 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 16
  %189 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 13
  br label %190

190:                                              ; preds = %230, %182
  %191 = phi i32 [ %184, %182 ], [ %232, %230 ]
  %192 = phi i32 [ %186, %182 ], [ %231, %230 ]
  %193 = phi i32 [ %180, %182 ], [ %233, %230 ]
  %194 = load ptr, ptr %187, align 4
  %195 = getelementptr %struct.bio_vec, ptr %194, i32 %192
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr %struct.bio_vec, ptr %194, i32 %192, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %191
  %200 = lshr i32 %199, 12
  %201 = getelementptr %struct.page, ptr %196, i32 %200
  %202 = getelementptr %struct.bio_vec, ptr %194, i32 %192, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = sub i32 %203, %191
  %205 = tail call i32 @llvm.umin.i32(i32 %193, i32 %204) #7
  %206 = and i32 %199, 4095
  %207 = sub nuw nsw i32 4096, %206
  %208 = tail call i32 @llvm.umin.i32(i32 %205, i32 %207) #7
  %209 = load ptr, ptr %188, align 4
  %210 = load i16, ptr %189, align 4
  %211 = add i16 %210, 1
  store i16 %211, ptr %189, align 4
  %212 = zext i16 %210 to i32
  %213 = getelementptr %struct.bio_vec, ptr %209, i32 %212
  store ptr %201, ptr %213, align 4
  %214 = getelementptr inbounds i8, ptr %213, i32 4
  store i32 %208, ptr %214, align 4
  %215 = getelementptr inbounds i8, ptr %213, i32 8
  store i32 %206, ptr %215, align 4
  %216 = load i32, ptr %83, align 4
  %217 = and i32 %216, 255
  %218 = add nsw i32 %217, -3
  %219 = and i32 %218, -7
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %190
  %222 = load ptr, ptr %187, align 4
  %223 = add i32 %208, %191
  %224 = getelementptr %struct.bio_vec, ptr %222, i32 %192, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %223, %225
  %227 = zext i1 %226 to i32
  %228 = add i32 %192, %227
  %229 = select i1 %226, i32 0, i32 %223
  br label %230

230:                                              ; preds = %221, %190
  %231 = phi i32 [ %192, %190 ], [ %228, %221 ]
  %232 = phi i32 [ %191, %190 ], [ %229, %221 ]
  %233 = sub i32 %193, %208
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %190

235:                                              ; preds = %230, %179, %169, %153, %153, %153
  %236 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 13
  %237 = load i16, ptr %236, align 4
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %277, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 16
  %241 = load ptr, ptr %240, align 4
  br label %242

242:                                              ; preds = %271, %239
  %243 = phi i16 [ %272, %271 ], [ %237, %239 ]
  %244 = phi ptr [ %273, %271 ], [ %241, %239 ]
  %245 = phi i32 [ %274, %271 ], [ 0, %239 ]
  %246 = load ptr, ptr %244, align 4
  %247 = load i32, ptr %246, align 4
  %248 = lshr i32 %247, 30
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %255, label %250

250:                                              ; preds = %242
  %251 = icmp ne i32 %248, 3
  %252 = load i32, ptr @movable_zone, align 4
  %253 = icmp ne i32 %252, 2
  %254 = select i1 %251, i1 true, i1 %253
  br i1 %254, label %271, label %255

255:                                              ; preds = %250, %242
  %256 = tail call noalias ptr @mempool_alloc(ptr noundef nonnull @page_pool, i32 noundef 3072) #7
  tail call void @inc_zone_page_state(ptr noundef %256, i32 noundef 8) #7
  br i1 %7, label %269, label %257

257:                                              ; preds = %255
  %258 = load ptr, ptr %244, align 4
  tail call void @flush_dcache_page(ptr noundef %258) #7
  %259 = tail call ptr @page_address(ptr noundef %256) #7
  %260 = load ptr, ptr %244, align 4
  %261 = getelementptr inbounds %struct.bio_vec, ptr %244, i32 0, i32 2
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr inbounds %struct.bio_vec, ptr %244, i32 0, i32 1
  %264 = load i32, ptr %263, align 4
  %265 = load i32, ptr @pgprot_kernel, align 4
  %266 = or i32 %265, 512
  %267 = tail call ptr @__kmap_local_page_prot(ptr noundef %260, i32 noundef %266) #7
  %268 = getelementptr i8, ptr %267, i32 %262
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %259, ptr align 1 %268, i32 %264, i1 false) #7
  tail call void @kunmap_local_indexed(ptr noundef %267) #7
  br label %269

269:                                              ; preds = %257, %255
  store ptr %256, ptr %244, align 4
  %270 = load i16, ptr %236, align 4
  br label %271

271:                                              ; preds = %269, %250
  %272 = phi i16 [ %243, %250 ], [ %270, %269 ]
  %273 = getelementptr %struct.bio_vec, ptr %244, i32 1
  %274 = add nuw nsw i32 %245, 1
  %275 = zext i16 %272 to i32
  %276 = icmp ult i32 %274, %275
  br i1 %276, label %242, label %277

277:                                              ; preds = %271, %235
  %278 = load ptr, ptr %1, align 4
  %279 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_bounce, i32 0, i32 1), align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %277
  %282 = tail call ptr @llvm.thread.pointer() #7
  %283 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 2
  %284 = load i32, ptr %283, align 8
  %285 = lshr i32 %284, 5
  %286 = getelementptr i32, ptr @__cpu_online_mask, i32 %285
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %284, 31
  %289 = shl nuw i32 1, %288
  %290 = and i32 %289, %287
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %281
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %293 = tail call i32 @__traceiter_block_bio_bounce(ptr noundef null, ptr noundef %278) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %294

294:                                              ; preds = %292, %281, %277
  %295 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 3
  %296 = load i16, ptr %295, align 4
  %297 = or i16 %296, 4
  store i16 %297, ptr %295, align 4
  %298 = select i1 %7, ptr @bounce_end_io_read, ptr @bounce_end_io_write
  %299 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 10
  store ptr %298, ptr %299, align 4
  %300 = load ptr, ptr %1, align 4
  %301 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 11
  store ptr %300, ptr %301, align 4
  store ptr %141, ptr %1, align 4
  br label %302

302:                                              ; preds = %294, %70, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_zone_page_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bounce_end_io_read(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %111

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 8, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %111, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 8, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 8, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 16
  %17 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %18 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 2
  br label %20

20:                                               ; preds = %106, %11
  %21 = phi i32 [ -1, %11 ], [ %91, %106 ]
  %22 = phi i32 [ 0, %11 ], [ %90, %106 ]
  %23 = phi i32 [ 0, %11 ], [ %89, %106 ]
  %24 = phi i32 [ %13, %11 ], [ %108, %106 ]
  %25 = phi i32 [ %15, %11 ], [ %107, %106 ]
  %26 = phi i32 [ %9, %11 ], [ %109, %106 ]
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr %struct.bio_vec, ptr %27, i32 %25
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.bio_vec, ptr %27, i32 %25, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %24
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %29, i32 %33
  %35 = getelementptr %struct.bio_vec, ptr %27, i32 %25, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %36, %24
  %38 = tail call i32 @llvm.umin.i32(i32 %26, i32 %37) #7
  %39 = and i32 %32, 4095
  %40 = sub nuw nsw i32 4096, %39
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %40) #7
  %42 = load ptr, ptr %17, align 4
  %43 = getelementptr %struct.bio_vec, ptr %42, i32 %22
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.bio_vec, ptr %42, i32 %22, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %23
  %48 = lshr i32 %47, 12
  %49 = getelementptr %struct.page, ptr %44, i32 %48
  %50 = icmp eq ptr %34, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %20
  %52 = tail call ptr @page_address(ptr noundef %49) #7
  %53 = getelementptr i8, ptr %52, i32 %39
  %54 = load i32, ptr @pgprot_kernel, align 4
  %55 = or i32 %54, 512
  %56 = tail call ptr @__kmap_local_page_prot(ptr noundef %34, i32 noundef %55) #7
  %57 = getelementptr i8, ptr %56, i32 %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %57, ptr align 1 %53, i32 %41, i1 false) #7
  tail call void @flush_dcache_page(ptr noundef %34) #7
  tail call void @kunmap_local_indexed(ptr noundef %56) #7
  br label %58

58:                                               ; preds = %51, %20
  %59 = load i32, ptr %18, align 4
  %60 = and i32 %59, 255
  %61 = add nsw i32 %60, -3
  %62 = and i32 %61, -7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = sub i32 %21, %41
  br label %88

66:                                               ; preds = %58
  %67 = load ptr, ptr %17, align 4
  %68 = icmp ult i32 %21, %41
  %69 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  %70 = xor i1 %69, true
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73, !prof !14

72:                                               ; preds = %66
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.3) #7
  br label %73

73:                                               ; preds = %72, %66
  br i1 %68, label %88, label %74

74:                                               ; preds = %73
  %75 = sub i32 %21, %41
  %76 = add i32 %41, %23
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %84, %74
  %79 = phi i32 [ %85, %84 ], [ %76, %74 ]
  %80 = phi i32 [ %86, %84 ], [ %22, %74 ]
  %81 = getelementptr %struct.bio_vec, ptr %67, i32 %80, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = sub i32 %79, %82
  %86 = add i32 %80, 1
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %78

88:                                               ; preds = %84, %78, %74, %73, %64
  %89 = phi i32 [ %23, %64 ], [ %23, %73 ], [ 0, %74 ], [ %79, %78 ], [ 0, %84 ]
  %90 = phi i32 [ %22, %64 ], [ %22, %73 ], [ %22, %74 ], [ %80, %78 ], [ %86, %84 ]
  %91 = phi i32 [ %65, %64 ], [ 0, %73 ], [ %75, %74 ], [ %75, %78 ], [ %75, %84 ]
  %92 = load i32, ptr %19, align 4
  %93 = and i32 %92, 255
  %94 = add nsw i32 %93, -3
  %95 = and i32 %94, -7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %88
  %98 = load ptr, ptr %16, align 4
  %99 = add i32 %41, %24
  %100 = getelementptr %struct.bio_vec, ptr %98, i32 %25, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %99, %101
  %103 = zext i1 %102 to i32
  %104 = add i32 %25, %103
  %105 = select i1 %102, i32 0, i32 %99
  br label %106

106:                                              ; preds = %97, %88
  %107 = phi i32 [ %25, %88 ], [ %104, %97 ]
  %108 = phi i32 [ %24, %88 ], [ %105, %97 ]
  %109 = sub i32 %26, %41
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %20

111:                                              ; preds = %106, %5, %1
  tail call fastcc void @bounce_end_io(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bounce_end_io_write(ptr noundef %0) #1 {
  tail call fastcc void @bounce_end_io(ptr noundef %0)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_bounce(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bounce_end_io(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %93, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %15 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 16
  %16 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  br label %17

17:                                               ; preds = %86, %7
  %18 = phi i32 [ 0, %7 ], [ %48, %86 ]
  %19 = phi i32 [ 0, %7 ], [ %47, %86 ]
  %20 = phi ptr [ null, %7 ], [ %37, %86 ]
  %21 = phi i32 [ %9, %7 ], [ %88, %86 ]
  %22 = phi i32 [ %11, %7 ], [ %87, %86 ]
  %23 = phi i32 [ %13, %7 ], [ %89, %86 ]
  %24 = load ptr, ptr %14, align 4
  %25 = icmp eq i32 %18, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = getelementptr %struct.page, ptr %20, i32 1
  br label %36

28:                                               ; preds = %17
  %29 = getelementptr %struct.bio_vec, ptr %24, i32 %19
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.bio_vec, ptr %24, i32 %19, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %30, i32 %33
  %35 = and i32 %32, 4095
  br label %36

36:                                               ; preds = %28, %26
  %37 = phi ptr [ %34, %28 ], [ %27, %26 ]
  %38 = phi i32 [ %35, %28 ], [ 0, %26 ]
  %39 = sub nuw nsw i32 4096, %38
  %40 = getelementptr %struct.bio_vec, ptr %24, i32 %19, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %41, %18
  %43 = tail call i32 @llvm.umin.i32(i32 %39, i32 %42) #7
  %44 = add i32 %43, %18
  %45 = icmp eq i32 %44, %41
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %19, %46
  %48 = select i1 %45, i32 0, i32 %44
  %49 = load ptr, ptr %15, align 4
  %50 = getelementptr %struct.bio_vec, ptr %49, i32 %22
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr %struct.bio_vec, ptr %49, i32 %22, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %21
  %55 = lshr i32 %54, 12
  %56 = getelementptr %struct.page, ptr %51, i32 %55
  %57 = getelementptr %struct.bio_vec, ptr %49, i32 %22, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %58, %21
  %60 = tail call i32 @llvm.umin.i32(i32 %23, i32 %59)
  %61 = and i32 %54, 4095
  %62 = sub nuw nsw i32 4096, %61
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %62)
  %64 = icmp eq ptr %37, %56
  br i1 %64, label %66, label %65

65:                                               ; preds = %36
  tail call void @dec_zone_page_state(ptr noundef %37, i32 noundef 8) #7
  tail call void @mempool_free(ptr noundef %37, ptr noundef nonnull @page_pool) #7
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i32, ptr %16, align 4
  %68 = and i32 %67, 255
  %69 = add nsw i32 %68, -3
  %70 = and i32 %69, -7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %15, align 4
  %74 = add i32 %63, %21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %82, %72
  %77 = phi i32 [ %83, %82 ], [ %74, %72 ]
  %78 = phi i32 [ %84, %82 ], [ %22, %72 ]
  %79 = getelementptr %struct.bio_vec, ptr %73, i32 %78, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = sub i32 %77, %80
  %84 = add i32 %78, 1
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %76

86:                                               ; preds = %82, %76, %72, %66
  %87 = phi i32 [ %22, %72 ], [ %22, %66 ], [ %84, %82 ], [ %78, %76 ]
  %88 = phi i32 [ 0, %72 ], [ %21, %66 ], [ 0, %82 ], [ %77, %76 ]
  %89 = sub i32 %23, %63
  %90 = load i16, ptr %4, align 4
  %91 = zext i16 %90 to i32
  %92 = icmp ult i32 %47, %91
  br i1 %92, label %17, label %93

93:                                               ; preds = %86, %1
  %94 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %95 = load i8, ptr %94, align 2
  %96 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 6
  store i8 %95, ptr %96, align 2
  tail call void @bio_endio(ptr noundef %3) #7
  tail call void @bio_put(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_zone_page_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2154350591, i64 2154351069, i64 2154350628, i64 2154350684, i64 2154350718, i64 2154350742, i64 2154350783, i64 2154350804, i64 2154350832, i64 2154350866}
!10 = !{i64 2154347456, i64 2154347934, i64 2154347493, i64 2154347549, i64 2154347583, i64 2154347607, i64 2154347648, i64 2154347669, i64 2154347697, i64 2154347731}
!11 = !{i64 2154349416, i64 2154349894, i64 2154349453, i64 2154349509, i64 2154349543, i64 2154349567, i64 2154349608, i64 2154349629, i64 2154349657, i64 2154349691}
!12 = !{i64 2154102045}
!13 = !{i64 2154102195}
!14 = !{!"branch_weights", i32 1, i32 2000}
