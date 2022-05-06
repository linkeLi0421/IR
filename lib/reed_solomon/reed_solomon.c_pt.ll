; ModuleID = '/llk/IR/lib/reed_solomon/reed_solomon.c_pt.bc'
source_filename = "../lib/reed_solomon/reed_solomon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_rs:\09\09\09\09\09"
module asm "\09.asciz \09\22free_rs\22\09\09\09\09\09"
module asm "__kstrtabns_free_rs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_rs_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22init_rs_gfp\22\09\09\09\09\09"
module asm "__kstrtabns_init_rs_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_rs_non_canonical:\09\09\09\09\09"
module asm "\09.asciz \09\22init_rs_non_canonical\22\09\09\09\09\09"
module asm "__kstrtabns_init_rs_non_canonical:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_encode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22encode_rs8\22\09\09\09\09\09"
module asm "__kstrtabns_encode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_decode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22decode_rs8\22\09\09\09\09\09"
module asm "__kstrtabns_decode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rs_codec = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head }
%struct.rs_control = type { ptr, [0 x i16] }

@rslistlock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rslistlock, i64 12), ptr getelementptr (i8, ptr @rslistlock, i64 12) } }, align 4
@__kstrtab_free_rs = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_rs = external dso_local constant [0 x i8], align 1
@__ksymtab_free_rs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_rs to i32), ptr @__kstrtab_free_rs, ptr @__kstrtabns_free_rs }, section "___ksymtab_gpl+free_rs", align 4
@__kstrtab_init_rs_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_rs_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab_init_rs_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_rs_gfp to i32), ptr @__kstrtab_init_rs_gfp, ptr @__kstrtabns_init_rs_gfp }, section "___ksymtab_gpl+init_rs_gfp", align 4
@__kstrtab_init_rs_non_canonical = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_rs_non_canonical = external dso_local constant [0 x i8], align 1
@__ksymtab_init_rs_non_canonical = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_rs_non_canonical to i32), ptr @__kstrtab_init_rs_non_canonical, ptr @__kstrtabns_init_rs_non_canonical }, section "___ksymtab_gpl+init_rs_non_canonical", align 4
@__kstrtab_encode_rs8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_encode_rs8 = external dso_local constant [0 x i8], align 1
@__ksymtab_encode_rs8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @encode_rs8 to i32), ptr @__kstrtab_encode_rs8, ptr @__kstrtabns_encode_rs8 }, section "___ksymtab_gpl+encode_rs8", align 4
@__kstrtab_decode_rs8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_decode_rs8 = external dso_local constant [0 x i8], align 1
@__ksymtab_decode_rs8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @decode_rs8 to i32), ptr @__kstrtab_decode_rs8, ptr @__kstrtabns_decode_rs8 }, section "___ksymtab_gpl+decode_rs8", align 4
@__UNIQUE_ID_file106 = internal constant [48 x i8] c"reed_solomon.file=lib/reed_solomon/reed_solomon\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [25 x i8] c"reed_solomon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [54 x i8] c"reed_solomon.description=Reed Solomon encoder/decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_author109 = internal constant [47 x i8] c"reed_solomon.author=Phil Karn, Thomas Gleixner\00", section ".modinfo", align 1
@codec_list = internal global %struct.list_head { ptr @codec_list, ptr @codec_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author109, ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_decode_rs8, ptr @__ksymtab_encode_rs8, ptr @__ksymtab_free_rs, ptr @__ksymtab_init_rs_gfp, ptr @__ksymtab_init_rs_non_canonical], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_rs(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @mutex_lock(ptr noundef nonnull @rslistlock) #8
  %5 = getelementptr inbounds %struct.rs_codec, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rs_codec, ptr %4, i32 0, i32 12
  %11 = getelementptr inbounds %struct.rs_codec, ptr %4, i32 0, i32 12, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr inbounds %struct.rs_codec, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.rs_codec, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.rs_codec, ptr %4, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #8
  tail call void @kfree(ptr noundef %4) #8
  br label %21

21:                                               ; preds = %9, %3
  tail call void @mutex_unlock(ptr noundef nonnull @rslistlock) #8
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @init_rs_gfp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call fastcc ptr @init_rs_internal(i32 noundef %0, i32 noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @init_rs_internal(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp slt i32 %0, 1
  %9 = icmp slt i32 %3, 0
  %10 = or i1 %8, %9
  br i1 %10, label %291, label %11

11:                                               ; preds = %7
  %12 = shl nuw i32 1, %0
  %13 = icmp sgt i32 %12, %3
  br i1 %13, label %14, label %291

14:                                               ; preds = %11
  %15 = icmp sgt i32 %4, 0
  %16 = icmp sgt i32 %12, %4
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %291

18:                                               ; preds = %14
  %19 = icmp sgt i32 %5, -1
  %20 = icmp sgt i32 %12, %5
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %291

22:                                               ; preds = %18
  %23 = or i32 %6, 256
  %24 = shl i32 %5, 4
  %25 = add i32 %24, 20
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef %23) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %291, label %28

28:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef nonnull @rslistlock) #8
  %29 = load ptr, ptr @codec_list, align 4
  %30 = icmp eq ptr %29, @codec_list
  br i1 %30, label %64, label %31

31:                                               ; preds = %61, %28
  %32 = phi ptr [ %62, %61 ], [ %29, %28 ]
  %33 = getelementptr i8, ptr %32, i32 -48
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %32, i32 -12
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %32, i32 -8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %32, i32 -24
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %3
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %32, i32 -20
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %4
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %32, i32 -28
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %5
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %32, i32 -48
  %58 = getelementptr i8, ptr %32, i32 -4
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  store ptr %57, ptr %26, align 64
  br label %289

61:                                               ; preds = %52, %48, %44, %40, %36, %31
  %62 = load ptr, ptr %32, align 4
  %63 = icmp eq ptr %62, @codec_list
  br i1 %63, label %64, label %31

64:                                               ; preds = %61, %28
  %65 = and i32 %6, 17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !8

67:                                               ; preds = %64
  %68 = and i32 %6, 1
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 1, i32 2
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i32 [ 0, %64 ], [ %70, %67 ]
  %73 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %72, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef %23, i32 noundef 56) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %288, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 12
  store volatile ptr %78, ptr %78, align 8
  %79 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 12, i32 1
  store ptr %78, ptr %79, align 4
  store i32 %0, ptr %75, align 8
  %80 = add i32 %12, -1
  %81 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 1
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 6
  store i32 %3, ptr %82, align 8
  %83 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 7
  store i32 %4, ptr %83, align 4
  %84 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 5
  store i32 %5, ptr %84, align 4
  %85 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 9
  store i32 %1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 10
  store ptr %2, ptr %86, align 8
  %87 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 2) #8
  %88 = extractvalue { i32, i1 } %87, 1
  br i1 %88, label %89, label %91, !prof !9

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 2
  store ptr null, ptr %90, align 8
  br label %277

91:                                               ; preds = %77
  %92 = extractvalue { i32, i1 } %87, 0
  %93 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %92, i32 noundef %6) #9
  %94 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 2
  store ptr %93, ptr %94, align 8
  %95 = icmp eq ptr %93, null
  br i1 %95, label %277, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %81, align 4
  %98 = add i32 %97, 1
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 2) #8
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %101, label %103, !prof !9

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 3
  store ptr null, ptr %102, align 4
  br label %277

103:                                              ; preds = %96
  %104 = extractvalue { i32, i1 } %99, 0
  %105 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %104, i32 noundef %6) #9
  %106 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 3
  store ptr %105, ptr %106, align 4
  %107 = icmp eq ptr %105, null
  br i1 %107, label %277, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %84, align 4
  %110 = add i32 %109, 1
  %111 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %110, i32 2) #8
  %112 = extractvalue { i32, i1 } %111, 1
  br i1 %112, label %113, label %115, !prof !9

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 4
  store ptr null, ptr %114, align 8
  br label %277

115:                                              ; preds = %108
  %116 = extractvalue { i32, i1 } %111, 0
  %117 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %116, i32 noundef %6) #9
  %118 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 4
  store ptr %117, ptr %118, align 8
  %119 = icmp eq ptr %117, null
  br i1 %119, label %277, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %81, align 4
  %122 = trunc i32 %121 to i16
  %123 = load ptr, ptr %106, align 4
  store i16 %122, ptr %123, align 2
  %124 = load ptr, ptr %94, align 8
  %125 = load i32, ptr %81, align 4
  %126 = getelementptr i16, ptr %124, i32 %125
  store i16 0, ptr %126, align 2
  %127 = icmp eq i32 %1, 0
  br i1 %127, label %149, label %128

128:                                              ; preds = %120
  %129 = load i32, ptr %81, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %131, %128
  %132 = phi i32 [ %146, %131 ], [ 1, %128 ]
  %133 = phi i32 [ %147, %131 ], [ 0, %128 ]
  %134 = trunc i32 %133 to i16
  %135 = load ptr, ptr %106, align 4
  %136 = getelementptr i16, ptr %135, i32 %132
  store i16 %134, ptr %136, align 2
  %137 = trunc i32 %132 to i16
  %138 = load ptr, ptr %94, align 8
  %139 = getelementptr i16, ptr %138, i32 %133
  store i16 %137, ptr %139, align 2
  %140 = shl i32 %132, 1
  %141 = and i32 %140, %12
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 0, i32 %1
  %144 = xor i32 %143, %140
  %145 = load i32, ptr %81, align 4
  %146 = and i32 %145, %144
  %147 = add nuw nsw i32 %133, 1
  %148 = icmp slt i32 %147, %145
  br i1 %148, label %131, label %166

149:                                              ; preds = %120
  %150 = tail call i32 %2(i32 noundef 0) #8
  %151 = load i32, ptr %81, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %153, %149
  %154 = phi i32 [ %162, %153 ], [ %150, %149 ]
  %155 = phi i32 [ %163, %153 ], [ 0, %149 ]
  %156 = trunc i32 %155 to i16
  %157 = load ptr, ptr %106, align 4
  %158 = getelementptr i16, ptr %157, i32 %154
  store i16 %156, ptr %158, align 2
  %159 = trunc i32 %154 to i16
  %160 = load ptr, ptr %94, align 8
  %161 = getelementptr i16, ptr %160, i32 %155
  store i16 %159, ptr %161, align 2
  %162 = tail call i32 %2(i32 noundef %154) #8
  %163 = add nuw nsw i32 %155, 1
  %164 = load i32, ptr %81, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %153, label %166

166:                                              ; preds = %153, %149, %131, %128
  %167 = phi i32 [ %151, %149 ], [ %129, %128 ], [ %164, %153 ], [ %145, %131 ]
  %168 = phi i32 [ %150, %149 ], [ 1, %128 ], [ %162, %153 ], [ %146, %131 ]
  %169 = load ptr, ptr %94, align 8
  %170 = load i16, ptr %169, align 2
  %171 = zext i16 %170 to i32
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %277

173:                                              ; preds = %166
  %174 = srem i32 1, %4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %176, %173
  %177 = phi i32 [ %178, %176 ], [ 1, %173 ]
  %178 = add i32 %177, %167
  %179 = srem i32 %178, %4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %176

181:                                              ; preds = %176, %173
  %182 = phi i32 [ 1, %173 ], [ %178, %176 ]
  %183 = sdiv i32 %182, %4
  %184 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 8
  store i32 %183, ptr %184, align 8
  %185 = load ptr, ptr %118, align 8
  store i16 1, ptr %185, align 2
  %186 = icmp sgt i32 %5, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = mul i32 %4, %3
  br label %191

189:                                              ; preds = %260, %181
  %190 = icmp slt i32 %5, 0
  br i1 %190, label %284, label %266

191:                                              ; preds = %260, %187
  %192 = phi i32 [ %264, %260 ], [ %188, %187 ]
  %193 = phi i32 [ %195, %260 ], [ 0, %187 ]
  %194 = load ptr, ptr %118, align 8
  %195 = add nuw nsw i32 %193, 1
  %196 = getelementptr i16, ptr %194, i32 %195
  store i16 1, ptr %196, align 2
  %197 = icmp eq i32 %193, 0
  br i1 %197, label %239, label %198

198:                                              ; preds = %235, %191
  %199 = phi i32 [ %236, %235 ], [ %193, %191 ]
  %200 = load ptr, ptr %118, align 8
  %201 = getelementptr i16, ptr %200, i32 %199
  %202 = load i16, ptr %201, align 2
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %231, label %204

204:                                              ; preds = %198
  %205 = zext i16 %202 to i32
  %206 = add nsw i32 %199, -1
  %207 = getelementptr i16, ptr %200, i32 %206
  %208 = load i16, ptr %207, align 2
  %209 = load ptr, ptr %94, align 8
  %210 = load ptr, ptr %106, align 4
  %211 = getelementptr i16, ptr %210, i32 %205
  %212 = load i16, ptr %211, align 2
  %213 = zext i16 %212 to i32
  %214 = add i32 %192, %213
  %215 = load i32, ptr %81, align 4
  %216 = icmp sgt i32 %215, %214
  br i1 %216, label %226, label %217

217:                                              ; preds = %204
  %218 = load i32, ptr %75, align 8
  br label %219

219:                                              ; preds = %219, %217
  %220 = phi i32 [ %214, %217 ], [ %224, %219 ]
  %221 = sub i32 %220, %215
  %222 = ashr i32 %221, %218
  %223 = and i32 %221, %215
  %224 = add i32 %222, %223
  %225 = icmp slt i32 %224, %215
  br i1 %225, label %226, label %219

226:                                              ; preds = %219, %204
  %227 = phi i32 [ %214, %204 ], [ %224, %219 ]
  %228 = getelementptr i16, ptr %209, i32 %227
  %229 = load i16, ptr %228, align 2
  %230 = xor i16 %229, %208
  br label %235

231:                                              ; preds = %198
  %232 = add nsw i32 %199, -1
  %233 = getelementptr i16, ptr %200, i32 %232
  %234 = load i16, ptr %233, align 2
  br label %235

235:                                              ; preds = %231, %226
  %236 = phi i32 [ %206, %226 ], [ %232, %231 ]
  %237 = phi i16 [ %230, %226 ], [ %234, %231 ]
  store i16 %237, ptr %201, align 2
  %238 = icmp sgt i32 %236, 0
  br i1 %238, label %198, label %239

239:                                              ; preds = %235, %191
  %240 = load ptr, ptr %94, align 8
  %241 = load ptr, ptr %106, align 4
  %242 = load ptr, ptr %118, align 8
  %243 = load i16, ptr %242, align 2
  %244 = zext i16 %243 to i32
  %245 = getelementptr i16, ptr %241, i32 %244
  %246 = load i16, ptr %245, align 2
  %247 = zext i16 %246 to i32
  %248 = add i32 %192, %247
  %249 = load i32, ptr %81, align 4
  %250 = icmp sgt i32 %249, %248
  br i1 %250, label %260, label %251

251:                                              ; preds = %239
  %252 = load i32, ptr %75, align 8
  br label %253

253:                                              ; preds = %253, %251
  %254 = phi i32 [ %248, %251 ], [ %258, %253 ]
  %255 = sub i32 %254, %249
  %256 = ashr i32 %255, %252
  %257 = and i32 %255, %249
  %258 = add i32 %256, %257
  %259 = icmp slt i32 %258, %249
  br i1 %259, label %260, label %253

260:                                              ; preds = %253, %239
  %261 = phi i32 [ %248, %239 ], [ %258, %253 ]
  %262 = getelementptr i16, ptr %240, i32 %261
  %263 = load i16, ptr %262, align 2
  store i16 %263, ptr %242, align 2
  %264 = add i32 %192, %4
  %265 = icmp eq i32 %195, %5
  br i1 %265, label %189, label %191

266:                                              ; preds = %266, %189
  %267 = phi i32 [ %275, %266 ], [ 0, %189 ]
  %268 = load ptr, ptr %106, align 4
  %269 = load ptr, ptr %118, align 8
  %270 = getelementptr i16, ptr %269, i32 %267
  %271 = load i16, ptr %270, align 2
  %272 = zext i16 %271 to i32
  %273 = getelementptr i16, ptr %268, i32 %272
  %274 = load i16, ptr %273, align 2
  store i16 %274, ptr %270, align 2
  %275 = add i32 %267, 1
  %276 = icmp sgt i32 %275, %5
  br i1 %276, label %284, label %266

277:                                              ; preds = %166, %115, %113, %103, %101, %91, %89
  %278 = phi ptr [ %90, %89 ], [ %94, %166 ], [ %94, %115 ], [ %94, %103 ], [ %94, %91 ], [ %94, %101 ], [ %94, %113 ]
  %279 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 4
  %280 = load ptr, ptr %279, align 8
  tail call void @kfree(ptr noundef %280) #8
  %281 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 3
  %282 = load ptr, ptr %281, align 4
  tail call void @kfree(ptr noundef %282) #8
  %283 = load ptr, ptr %278, align 4
  tail call void @kfree(ptr noundef %283) #8
  tail call void @kfree(ptr noundef nonnull %75) #8
  br label %288

284:                                              ; preds = %266, %189
  %285 = getelementptr inbounds %struct.rs_codec, ptr %75, i32 0, i32 11
  store i32 1, ptr %285, align 4
  %286 = load ptr, ptr @codec_list, align 4
  %287 = getelementptr inbounds %struct.list_head, ptr %286, i32 0, i32 1
  store ptr %78, ptr %287, align 4
  store ptr %286, ptr %78, align 8
  store ptr @codec_list, ptr %79, align 4
  store volatile ptr %78, ptr @codec_list, align 4
  store ptr %75, ptr %26, align 64
  br label %289

288:                                              ; preds = %277, %71
  store ptr null, ptr %26, align 64
  tail call void @kfree(ptr noundef nonnull %26) #8
  br label %289

289:                                              ; preds = %288, %284, %56
  %290 = phi ptr [ %26, %284 ], [ null, %288 ], [ %26, %56 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rslistlock) #8
  br label %291

291:                                              ; preds = %289, %22, %18, %14, %11, %7
  %292 = phi ptr [ %290, %289 ], [ null, %7 ], [ null, %11 ], [ null, %14 ], [ null, %18 ], [ null, %22 ]
  ret ptr %292
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @init_rs_non_canonical(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc ptr @init_rs_internal(i32 noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 3264)
  ret ptr %6
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @encode_rs8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, i16 noundef zeroext %4) #2 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rs_codec, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rs_codec, ptr %6, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rs_codec, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rs_codec, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rs_codec, ptr %6, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = add i32 %10, %2
  %18 = sub i32 %8, %17
  %19 = icmp sgt i32 %18, -1
  %20 = icmp slt i32 %18, %8
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %97

22:                                               ; preds = %5
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %97

24:                                               ; preds = %22
  %25 = zext i16 %4 to i32
  %26 = icmp sgt i32 %10, 1
  %27 = getelementptr i16, ptr %3, i32 1
  %28 = add i32 %10, -1
  %29 = shl i32 %28, 1
  %30 = getelementptr i16, ptr %3, i32 %28
  br label %31

31:                                               ; preds = %93, %24
  %32 = phi i32 [ 0, %24 ], [ %95, %93 ]
  %33 = getelementptr i8, ptr %1, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %35, %25
  %37 = and i32 %8, %36
  %38 = load i16, ptr %3, align 2
  %39 = zext i16 %38 to i32
  %40 = xor i32 %37, %39
  %41 = getelementptr i16, ptr %14, i32 %40
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %8, %43
  br i1 %44, label %92, label %45

45:                                               ; preds = %31
  br i1 %26, label %46, label %73

46:                                               ; preds = %64, %45
  %47 = phi i32 [ %71, %64 ], [ 1, %45 ]
  %48 = sub i32 %10, %47
  %49 = getelementptr i16, ptr %16, i32 %48
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = add nuw nsw i32 %51, %43
  %53 = load i32, ptr %7, align 4
  %54 = icmp sgt i32 %53, %52
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = load i32, ptr %6, align 4
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ %52, %55 ], [ %62, %57 ]
  %59 = sub i32 %58, %53
  %60 = ashr i32 %59, %56
  %61 = and i32 %59, %53
  %62 = add i32 %60, %61
  %63 = icmp slt i32 %62, %53
  br i1 %63, label %64, label %57

64:                                               ; preds = %57, %46
  %65 = phi i32 [ %52, %46 ], [ %62, %57 ]
  %66 = getelementptr i16, ptr %12, i32 %65
  %67 = load i16, ptr %66, align 2
  %68 = getelementptr i16, ptr %3, i32 %47
  %69 = load i16, ptr %68, align 2
  %70 = xor i16 %69, %67
  store i16 %70, ptr %68, align 2
  %71 = add nuw nsw i32 %47, 1
  %72 = icmp eq i32 %71, %10
  br i1 %72, label %73, label %46

73:                                               ; preds = %64, %45
  tail call void @llvm.memmove.p0.p0.i32(ptr align 2 %3, ptr align 2 %27, i32 %29, i1 false)
  %74 = load i16, ptr %16, align 2
  %75 = zext i16 %74 to i32
  %76 = add nuw nsw i32 %75, %43
  %77 = load i32, ptr %7, align 4
  %78 = icmp sgt i32 %77, %76
  br i1 %78, label %88, label %79

79:                                               ; preds = %73
  %80 = load i32, ptr %6, align 4
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i32 [ %76, %79 ], [ %86, %81 ]
  %83 = sub i32 %82, %77
  %84 = ashr i32 %83, %80
  %85 = and i32 %83, %77
  %86 = add i32 %84, %85
  %87 = icmp slt i32 %86, %77
  br i1 %87, label %88, label %81

88:                                               ; preds = %81, %73
  %89 = phi i32 [ %76, %73 ], [ %86, %81 ]
  %90 = getelementptr i16, ptr %12, i32 %89
  %91 = load i16, ptr %90, align 2
  br label %93

92:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i32(ptr align 2 %3, ptr align 2 %27, i32 %29, i1 false)
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i16 [ %91, %88 ], [ 0, %92 ]
  store i16 %94, ptr %30, align 2
  %95 = add nuw nsw i32 %32, 1
  %96 = icmp eq i32 %95, %2
  br i1 %96, label %97, label %31

97:                                               ; preds = %93, %22, %5
  %98 = phi i32 [ -34, %5 ], [ 0, %22 ], [ 0, %93 ]
  ret i32 %98
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @decode_rs8(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5, ptr noundef %6, i16 noundef zeroext %7, ptr noundef writeonly %8) #0 {
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.rs_codec, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rs_codec, ptr %10, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rs_codec, ptr %10, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rs_codec, ptr %10, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rs_codec, ptr %10, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rs_codec, ptr %10, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rs_codec, ptr %10, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = trunc i32 %12 to i16
  %26 = getelementptr inbounds %struct.rs_control, ptr %0, i32 0, i32 1
  %27 = add i32 %14, 1
  %28 = getelementptr i16, ptr %26, i32 %27
  %29 = shl i32 %27, 1
  %30 = getelementptr i16, ptr %26, i32 %29
  %31 = mul i32 %27, 3
  %32 = getelementptr i16, ptr %26, i32 %31
  %33 = shl i32 %27, 2
  %34 = getelementptr i16, ptr %26, i32 %33
  %35 = mul i32 %27, 5
  %36 = getelementptr i16, ptr %26, i32 %35
  %37 = mul i32 %27, 6
  %38 = getelementptr i16, ptr %26, i32 %37
  %39 = mul i32 %27, 7
  %40 = getelementptr i16, ptr %26, i32 %39
  %41 = sub i32 %12, %14
  %42 = sub i32 %41, %3
  %43 = icmp slt i32 %42, 0
  %44 = icmp sge i32 %42, %41
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %47, !prof !9

46:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/reed_solomon/decode_rs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

47:                                               ; preds = %9
  %48 = icmp eq ptr %4, null
  %49 = icmp sgt i32 %14, 0
  br i1 %48, label %51, label %50

50:                                               ; preds = %47
  br i1 %49, label %57, label %801

51:                                               ; preds = %47
  br i1 %49, label %52, label %63

52:                                               ; preds = %51
  %53 = zext i16 %7 to i32
  br label %67

54:                                               ; preds = %57
  %55 = add nuw nsw i32 %58, 1
  %56 = icmp eq i32 %55, %14
  br i1 %56, label %801, label %57

57:                                               ; preds = %54, %50
  %58 = phi i32 [ %55, %54 ], [ 0, %50 ]
  %59 = getelementptr i16, ptr %4, i32 %58
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %12, %61
  br i1 %62, label %54, label %187

63:                                               ; preds = %67, %51
  %64 = icmp sgt i32 %3, 1
  br i1 %64, label %65, label %81

65:                                               ; preds = %63
  %66 = zext i16 %7 to i32
  br label %77

67:                                               ; preds = %67, %52
  %68 = phi i32 [ 0, %52 ], [ %75, %67 ]
  %69 = load i8, ptr %1, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, %53
  %72 = and i32 %71, %12
  %73 = trunc i32 %72 to i16
  %74 = getelementptr i16, ptr %28, i32 %68
  store i16 %73, ptr %74, align 2
  %75 = add nuw nsw i32 %68, 1
  %76 = icmp eq i32 %75, %14
  br i1 %76, label %63, label %67

77:                                               ; preds = %126, %65
  %78 = phi i32 [ 1, %65 ], [ %127, %126 ]
  br i1 %49, label %79, label %126

79:                                               ; preds = %77
  %80 = getelementptr i8, ptr %1, i32 %78
  br label %82

81:                                               ; preds = %126, %63
  br i1 %49, label %129, label %801

82:                                               ; preds = %122, %79
  %83 = phi i32 [ 0, %79 ], [ %124, %122 ]
  %84 = getelementptr i16, ptr %28, i32 %83
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8, ptr %80, align 1
  %89 = zext i8 %88 to i32
  %90 = xor i32 %89, %66
  %91 = and i32 %90, %12
  %92 = trunc i32 %91 to i16
  br label %122

93:                                               ; preds = %82
  %94 = zext i16 %85 to i32
  %95 = load i8, ptr %80, align 1
  %96 = zext i8 %95 to i32
  %97 = xor i32 %96, %66
  %98 = and i32 %97, %12
  %99 = getelementptr i16, ptr %24, i32 %94
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = add i32 %83, %16
  %103 = mul i32 %102, %18
  %104 = add i32 %103, %101
  %105 = load i32, ptr %11, align 4
  %106 = icmp sgt i32 %105, %104
  br i1 %106, label %116, label %107

107:                                              ; preds = %93
  %108 = load i32, ptr %10, align 4
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi i32 [ %104, %107 ], [ %114, %109 ]
  %111 = sub i32 %110, %105
  %112 = ashr i32 %111, %108
  %113 = and i32 %111, %105
  %114 = add i32 %112, %113
  %115 = icmp slt i32 %114, %105
  br i1 %115, label %116, label %109

116:                                              ; preds = %109, %93
  %117 = phi i32 [ %104, %93 ], [ %114, %109 ]
  %118 = getelementptr i16, ptr %22, i32 %117
  %119 = load i16, ptr %118, align 2
  %120 = trunc i32 %98 to i16
  %121 = xor i16 %119, %120
  br label %122

122:                                              ; preds = %116, %87
  %123 = phi i16 [ %121, %116 ], [ %92, %87 ]
  store i16 %123, ptr %84, align 2
  %124 = add nuw nsw i32 %83, 1
  %125 = icmp eq i32 %124, %14
  br i1 %125, label %126, label %82

126:                                              ; preds = %122, %77
  %127 = add nuw nsw i32 %78, 1
  %128 = icmp eq i32 %127, %3
  br i1 %128, label %81, label %77

129:                                              ; preds = %171, %81
  %130 = phi i32 [ %172, %171 ], [ 0, %81 ]
  %131 = getelementptr i16, ptr %2, i32 %130
  br label %133

132:                                              ; preds = %171
  br i1 %49, label %174, label %801

133:                                              ; preds = %167, %129
  %134 = phi i32 [ 0, %129 ], [ %169, %167 ]
  %135 = getelementptr i16, ptr %28, i32 %134
  %136 = load i16, ptr %135, align 2
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i16, ptr %131, align 2
  %140 = and i16 %139, %25
  br label %167

141:                                              ; preds = %133
  %142 = zext i16 %136 to i32
  %143 = load i16, ptr %131, align 2
  %144 = getelementptr i16, ptr %24, i32 %142
  %145 = load i16, ptr %144, align 2
  %146 = zext i16 %145 to i32
  %147 = add i32 %134, %16
  %148 = mul i32 %147, %18
  %149 = add i32 %148, %146
  %150 = load i32, ptr %11, align 4
  %151 = icmp sgt i32 %150, %149
  br i1 %151, label %161, label %152

152:                                              ; preds = %141
  %153 = load i32, ptr %10, align 4
  br label %154

154:                                              ; preds = %154, %152
  %155 = phi i32 [ %149, %152 ], [ %159, %154 ]
  %156 = sub i32 %155, %150
  %157 = ashr i32 %156, %153
  %158 = and i32 %156, %150
  %159 = add i32 %157, %158
  %160 = icmp slt i32 %159, %150
  br i1 %160, label %161, label %154

161:                                              ; preds = %154, %141
  %162 = phi i32 [ %149, %141 ], [ %159, %154 ]
  %163 = getelementptr i16, ptr %22, i32 %162
  %164 = load i16, ptr %163, align 2
  %165 = and i16 %143, %25
  %166 = xor i16 %164, %165
  br label %167

167:                                              ; preds = %161, %138
  %168 = phi i16 [ %166, %161 ], [ %140, %138 ]
  store i16 %168, ptr %135, align 2
  %169 = add nuw nsw i32 %134, 1
  %170 = icmp eq i32 %169, %14
  br i1 %170, label %171, label %133

171:                                              ; preds = %167
  %172 = add nuw nsw i32 %130, 1
  %173 = icmp eq i32 %172, %14
  br i1 %173, label %132, label %129

174:                                              ; preds = %174, %132
  %175 = phi i16 [ %180, %174 ], [ 0, %132 ]
  %176 = phi i32 [ %183, %174 ], [ 0, %132 ]
  %177 = getelementptr i16, ptr %28, i32 %176
  %178 = load i16, ptr %177, align 2
  %179 = zext i16 %178 to i32
  %180 = or i16 %178, %175
  %181 = getelementptr i16, ptr %24, i32 %179
  %182 = load i16, ptr %181, align 2
  store i16 %182, ptr %177, align 2
  %183 = add nuw nsw i32 %176, 1
  %184 = icmp eq i32 %183, %14
  br i1 %184, label %185, label %174

185:                                              ; preds = %174
  %186 = icmp eq i16 %180, 0
  br i1 %186, label %801, label %187

187:                                              ; preds = %185, %57
  %188 = phi ptr [ %28, %185 ], [ %4, %57 ]
  %189 = getelementptr i16, ptr %26, i32 1
  %190 = shl i32 %14, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %189, i8 0, i32 %190, i1 false)
  store i16 1, ptr %26, align 2
  %191 = icmp sgt i32 %5, 0
  br i1 %191, label %192, label %270

192:                                              ; preds = %187
  %193 = add i32 %12, -1
  %194 = load i32, ptr %6, align 4
  %195 = add i32 %42, %194
  %196 = sub i32 %193, %195
  %197 = mul i32 %196, %18
  %198 = load i32, ptr %11, align 4
  %199 = icmp sgt i32 %198, %197
  br i1 %199, label %209, label %200

200:                                              ; preds = %192
  %201 = load i32, ptr %10, align 4
  br label %202

202:                                              ; preds = %202, %200
  %203 = phi i32 [ %197, %200 ], [ %207, %202 ]
  %204 = sub i32 %203, %198
  %205 = ashr i32 %204, %201
  %206 = and i32 %204, %198
  %207 = add i32 %205, %206
  %208 = icmp slt i32 %207, %198
  br i1 %208, label %209, label %202

209:                                              ; preds = %202, %192
  %210 = phi i32 [ %197, %192 ], [ %207, %202 ]
  %211 = getelementptr i16, ptr %22, i32 %210
  %212 = load i16, ptr %211, align 2
  store i16 %212, ptr %189, align 2
  %213 = icmp sgt i32 %5, 1
  br i1 %213, label %216, label %270

214:                                              ; preds = %268
  %215 = icmp eq i32 %236, %5
  br i1 %215, label %270, label %216

216:                                              ; preds = %214, %209
  %217 = phi i32 [ %236, %214 ], [ 1, %209 ]
  %218 = getelementptr i32, ptr %6, i32 %217
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %42, %219
  %221 = sub i32 %193, %220
  %222 = mul i32 %221, %18
  %223 = load i32, ptr %11, align 4
  %224 = icmp sgt i32 %223, %222
  br i1 %224, label %234, label %225

225:                                              ; preds = %216
  %226 = load i32, ptr %10, align 4
  br label %227

227:                                              ; preds = %227, %225
  %228 = phi i32 [ %222, %225 ], [ %232, %227 ]
  %229 = sub i32 %228, %223
  %230 = ashr i32 %229, %226
  %231 = and i32 %229, %223
  %232 = add i32 %230, %231
  %233 = icmp slt i32 %232, %223
  br i1 %233, label %234, label %227

234:                                              ; preds = %227, %216
  %235 = phi i32 [ %222, %216 ], [ %232, %227 ]
  %236 = add nuw nsw i32 %217, 1
  %237 = and i32 %235, 65535
  br label %238

238:                                              ; preds = %268, %234
  %239 = phi i32 [ %236, %234 ], [ %240, %268 ]
  %240 = add nsw i32 %239, -1
  %241 = getelementptr i16, ptr %26, i32 %240
  %242 = load i16, ptr %241, align 2
  %243 = zext i16 %242 to i32
  %244 = getelementptr i16, ptr %24, i32 %243
  %245 = load i16, ptr %244, align 2
  %246 = zext i16 %245 to i32
  %247 = icmp eq i32 %12, %246
  br i1 %247, label %268, label %248

248:                                              ; preds = %238
  %249 = add nuw nsw i32 %237, %246
  %250 = load i32, ptr %11, align 4
  %251 = icmp sgt i32 %250, %249
  br i1 %251, label %261, label %252

252:                                              ; preds = %248
  %253 = load i32, ptr %10, align 4
  br label %254

254:                                              ; preds = %254, %252
  %255 = phi i32 [ %249, %252 ], [ %259, %254 ]
  %256 = sub i32 %255, %250
  %257 = ashr i32 %256, %253
  %258 = and i32 %256, %250
  %259 = add i32 %257, %258
  %260 = icmp slt i32 %259, %250
  br i1 %260, label %261, label %254

261:                                              ; preds = %254, %248
  %262 = phi i32 [ %249, %248 ], [ %259, %254 ]
  %263 = getelementptr i16, ptr %22, i32 %262
  %264 = load i16, ptr %263, align 2
  %265 = getelementptr i16, ptr %26, i32 %239
  %266 = load i16, ptr %265, align 2
  %267 = xor i16 %266, %264
  store i16 %267, ptr %265, align 2
  br label %268

268:                                              ; preds = %261, %238
  %269 = icmp sgt i32 %239, 1
  br i1 %269, label %238, label %214

270:                                              ; preds = %214, %209, %187
  %271 = icmp ult i32 %14, 2147483647
  br i1 %271, label %279, label %272

272:                                              ; preds = %279, %270
  %273 = add i32 %5, 1
  %274 = icmp sgt i32 %273, %14
  br i1 %274, label %294, label %275

275:                                              ; preds = %272
  %276 = icmp sgt i32 %14, 0
  %277 = icmp slt i32 %14, 0
  %278 = getelementptr i16, ptr %30, i32 1
  br label %289

279:                                              ; preds = %279, %270
  %280 = phi i32 [ %287, %279 ], [ 0, %270 ]
  %281 = getelementptr i16, ptr %26, i32 %280
  %282 = load i16, ptr %281, align 2
  %283 = zext i16 %282 to i32
  %284 = getelementptr i16, ptr %24, i32 %283
  %285 = load i16, ptr %284, align 2
  %286 = getelementptr i16, ptr %30, i32 %280
  store i16 %285, ptr %286, align 2
  %287 = add nuw nsw i32 %280, 1
  %288 = icmp eq i32 %280, %14
  br i1 %288, label %272, label %279

289:                                              ; preds = %413, %275
  %290 = phi i32 [ %273, %275 ], [ %415, %413 ]
  %291 = phi i32 [ %5, %275 ], [ %290, %413 ]
  %292 = phi i32 [ %5, %275 ], [ %414, %413 ]
  %293 = icmp sgt i32 %290, 0
  br i1 %293, label %295, label %333

294:                                              ; preds = %413, %272
  br i1 %271, label %417, label %801

295:                                              ; preds = %329, %289
  %296 = phi i16 [ %330, %329 ], [ 0, %289 ]
  %297 = phi i32 [ %331, %329 ], [ 0, %289 ]
  %298 = getelementptr i16, ptr %26, i32 %297
  %299 = load i16, ptr %298, align 2
  %300 = zext i16 %299 to i32
  %301 = icmp eq i16 %299, 0
  br i1 %301, label %329, label %302

302:                                              ; preds = %295
  %303 = sub i32 %291, %297
  %304 = getelementptr i16, ptr %188, i32 %303
  %305 = load i16, ptr %304, align 2
  %306 = zext i16 %305 to i32
  %307 = icmp eq i32 %12, %306
  br i1 %307, label %329, label %308

308:                                              ; preds = %302
  %309 = getelementptr i16, ptr %24, i32 %300
  %310 = load i16, ptr %309, align 2
  %311 = zext i16 %310 to i32
  %312 = add nuw nsw i32 %311, %306
  %313 = load i32, ptr %11, align 4
  %314 = icmp sgt i32 %313, %312
  br i1 %314, label %324, label %315

315:                                              ; preds = %308
  %316 = load i32, ptr %10, align 4
  br label %317

317:                                              ; preds = %317, %315
  %318 = phi i32 [ %312, %315 ], [ %322, %317 ]
  %319 = sub i32 %318, %313
  %320 = ashr i32 %319, %316
  %321 = and i32 %319, %313
  %322 = add i32 %320, %321
  %323 = icmp slt i32 %322, %313
  br i1 %323, label %324, label %317

324:                                              ; preds = %317, %308
  %325 = phi i32 [ %312, %308 ], [ %322, %317 ]
  %326 = getelementptr i16, ptr %22, i32 %325
  %327 = load i16, ptr %326, align 2
  %328 = xor i16 %327, %296
  br label %329

329:                                              ; preds = %324, %302, %295
  %330 = phi i16 [ %328, %324 ], [ %296, %302 ], [ %296, %295 ]
  %331 = add nuw nsw i32 %297, 1
  %332 = icmp eq i32 %331, %290
  br i1 %332, label %333, label %295

333:                                              ; preds = %329, %289
  %334 = phi i16 [ 0, %289 ], [ %330, %329 ]
  %335 = zext i16 %334 to i32
  %336 = getelementptr i16, ptr %24, i32 %335
  %337 = load i16, ptr %336, align 2
  %338 = zext i16 %337 to i32
  %339 = icmp eq i32 %12, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %333
  tail call void @llvm.memmove.p0.p0.i32(ptr align 2 %278, ptr align 2 %30, i32 %190, i1 false)
  store i16 %25, ptr %30, align 2
  br label %413

341:                                              ; preds = %333
  %342 = load i16, ptr %26, align 2
  store i16 %342, ptr %32, align 2
  br i1 %276, label %343, label %374

343:                                              ; preds = %370, %341
  %344 = phi i32 [ %349, %370 ], [ 0, %341 ]
  %345 = getelementptr i16, ptr %30, i32 %344
  %346 = load i16, ptr %345, align 2
  %347 = zext i16 %346 to i32
  %348 = icmp eq i32 %12, %347
  %349 = add nuw nsw i32 %344, 1
  %350 = getelementptr i16, ptr %26, i32 %349
  %351 = load i16, ptr %350, align 2
  br i1 %348, label %370, label %352

352:                                              ; preds = %343
  %353 = add nuw nsw i32 %347, %338
  %354 = load i32, ptr %11, align 4
  %355 = icmp sgt i32 %354, %353
  br i1 %355, label %365, label %356

356:                                              ; preds = %352
  %357 = load i32, ptr %10, align 4
  br label %358

358:                                              ; preds = %358, %356
  %359 = phi i32 [ %353, %356 ], [ %363, %358 ]
  %360 = sub i32 %359, %354
  %361 = ashr i32 %360, %357
  %362 = and i32 %360, %354
  %363 = add i32 %361, %362
  %364 = icmp slt i32 %363, %354
  br i1 %364, label %365, label %358

365:                                              ; preds = %358, %352
  %366 = phi i32 [ %353, %352 ], [ %363, %358 ]
  %367 = getelementptr i16, ptr %22, i32 %366
  %368 = load i16, ptr %367, align 2
  %369 = xor i16 %368, %351
  br label %370

370:                                              ; preds = %365, %343
  %371 = phi i16 [ %369, %365 ], [ %351, %343 ]
  %372 = getelementptr i16, ptr %32, i32 %349
  store i16 %371, ptr %372, align 2
  %373 = icmp eq i32 %349, %14
  br i1 %373, label %374, label %343

374:                                              ; preds = %370, %341
  %375 = shl i32 %292, 1
  %376 = add i32 %291, %5
  %377 = icmp sgt i32 %375, %376
  br i1 %377, label %410, label %378

378:                                              ; preds = %374
  %379 = sub i32 %5, %292
  %380 = add i32 %379, %290
  br i1 %277, label %411, label %381

381:                                              ; preds = %404, %378
  %382 = phi i32 [ %408, %404 ], [ 0, %378 ]
  %383 = getelementptr i16, ptr %26, i32 %382
  %384 = load i16, ptr %383, align 2
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %404, label %386

386:                                              ; preds = %381
  %387 = zext i16 %384 to i32
  %388 = getelementptr i16, ptr %24, i32 %387
  %389 = load i16, ptr %388, align 2
  %390 = zext i16 %389 to i32
  %391 = sub nsw i32 %390, %338
  %392 = add i32 %391, %12
  %393 = load i32, ptr %11, align 4
  %394 = icmp sgt i32 %393, %392
  br i1 %394, label %404, label %395

395:                                              ; preds = %386
  %396 = load i32, ptr %10, align 4
  br label %397

397:                                              ; preds = %397, %395
  %398 = phi i32 [ %392, %395 ], [ %402, %397 ]
  %399 = sub i32 %398, %393
  %400 = ashr i32 %399, %396
  %401 = and i32 %399, %393
  %402 = add i32 %400, %401
  %403 = icmp slt i32 %402, %393
  br i1 %403, label %404, label %397

404:                                              ; preds = %397, %386, %381
  %405 = phi i32 [ %12, %381 ], [ %392, %386 ], [ %402, %397 ]
  %406 = trunc i32 %405 to i16
  %407 = getelementptr i16, ptr %30, i32 %382
  store i16 %406, ptr %407, align 2
  %408 = add i32 %382, 1
  %409 = icmp sgt i32 %408, %14
  br i1 %409, label %411, label %381

410:                                              ; preds = %374
  tail call void @llvm.memmove.p0.p0.i32(ptr align 2 %278, ptr align 2 %30, i32 %190, i1 false)
  store i16 %25, ptr %30, align 2
  br label %411

411:                                              ; preds = %410, %404, %378
  %412 = phi i32 [ %292, %410 ], [ %380, %378 ], [ %380, %404 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %26, ptr align 2 %32, i32 %29, i1 false)
  br label %413

413:                                              ; preds = %411, %340
  %414 = phi i32 [ %292, %340 ], [ %412, %411 ]
  %415 = add i32 %290, 1
  %416 = icmp sgt i32 %415, %14
  br i1 %416, label %294, label %289

417:                                              ; preds = %417, %294
  %418 = phi i32 [ %428, %417 ], [ 0, %294 ]
  %419 = phi i32 [ %427, %417 ], [ 0, %294 ]
  %420 = getelementptr i16, ptr %26, i32 %418
  %421 = load i16, ptr %420, align 2
  %422 = zext i16 %421 to i32
  %423 = getelementptr i16, ptr %24, i32 %422
  %424 = load i16, ptr %423, align 2
  store i16 %424, ptr %420, align 2
  %425 = zext i16 %424 to i32
  %426 = icmp eq i32 %12, %425
  %427 = select i1 %426, i32 %419, i32 %418
  %428 = add nuw nsw i32 %418, 1
  %429 = icmp eq i32 %418, %14
  br i1 %429, label %430, label %417

430:                                              ; preds = %417
  %431 = icmp eq i32 %427, 0
  br i1 %431, label %801, label %432

432:                                              ; preds = %430
  %433 = getelementptr i16, ptr %38, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %433, ptr align 2 %189, i32 %190, i1 false)
  %434 = icmp slt i32 %12, 1
  br i1 %434, label %502, label %435

435:                                              ; preds = %432
  %436 = add i32 %20, -1
  %437 = icmp sgt i32 %427, 0
  br label %438

438:                                              ; preds = %499, %435
  %439 = phi i32 [ 0, %435 ], [ %485, %499 ]
  %440 = phi i32 [ %436, %435 ], [ %500, %499 ]
  %441 = phi i32 [ 1, %435 ], [ %486, %499 ]
  br i1 %437, label %442, label %484

442:                                              ; preds = %469, %438
  %443 = phi i16 [ %470, %469 ], [ 1, %438 ]
  %444 = phi i32 [ %471, %469 ], [ %427, %438 ]
  %445 = getelementptr i16, ptr %38, i32 %444
  %446 = load i16, ptr %445, align 2
  %447 = zext i16 %446 to i32
  %448 = icmp eq i32 %12, %447
  br i1 %448, label %469, label %449

449:                                              ; preds = %442
  %450 = add nuw i32 %444, %447
  %451 = load i32, ptr %11, align 4
  %452 = icmp sgt i32 %451, %450
  br i1 %452, label %462, label %453

453:                                              ; preds = %449
  %454 = load i32, ptr %10, align 4
  br label %455

455:                                              ; preds = %455, %453
  %456 = phi i32 [ %450, %453 ], [ %460, %455 ]
  %457 = sub i32 %456, %451
  %458 = ashr i32 %457, %454
  %459 = and i32 %457, %451
  %460 = add i32 %458, %459
  %461 = icmp slt i32 %460, %451
  br i1 %461, label %462, label %455

462:                                              ; preds = %455, %449
  %463 = phi i32 [ %450, %449 ], [ %460, %455 ]
  %464 = trunc i32 %463 to i16
  store i16 %464, ptr %445, align 2
  %465 = and i32 %463, 65535
  %466 = getelementptr i16, ptr %22, i32 %465
  %467 = load i16, ptr %466, align 2
  %468 = xor i16 %467, %443
  br label %469

469:                                              ; preds = %462, %442
  %470 = phi i16 [ %468, %462 ], [ %443, %442 ]
  %471 = add nsw i32 %444, -1
  %472 = icmp sgt i32 %444, 1
  br i1 %472, label %442, label %473

473:                                              ; preds = %469
  %474 = icmp eq i16 %470, 0
  br i1 %474, label %475, label %484

475:                                              ; preds = %473
  %476 = icmp slt i32 %440, %42
  br i1 %476, label %801, label %477

477:                                              ; preds = %475
  %478 = trunc i32 %441 to i16
  %479 = getelementptr i16, ptr %36, i32 %439
  store i16 %478, ptr %479, align 2
  %480 = trunc i32 %440 to i16
  %481 = getelementptr i16, ptr %40, i32 %439
  store i16 %480, ptr %481, align 2
  %482 = add i32 %439, 1
  %483 = icmp eq i32 %482, %427
  br i1 %483, label %502, label %484

484:                                              ; preds = %477, %473, %438
  %485 = phi i32 [ %439, %473 ], [ %482, %477 ], [ %439, %438 ]
  %486 = add i32 %441, 1
  %487 = add i32 %440, %20
  %488 = load i32, ptr %11, align 4
  %489 = icmp sgt i32 %488, %487
  br i1 %489, label %499, label %490

490:                                              ; preds = %484
  %491 = load i32, ptr %10, align 4
  br label %492

492:                                              ; preds = %492, %490
  %493 = phi i32 [ %487, %490 ], [ %497, %492 ]
  %494 = sub i32 %493, %488
  %495 = ashr i32 %494, %491
  %496 = and i32 %494, %488
  %497 = add i32 %495, %496
  %498 = icmp slt i32 %497, %488
  br i1 %498, label %499, label %492

499:                                              ; preds = %492, %484
  %500 = phi i32 [ %487, %484 ], [ %497, %492 ]
  %501 = icmp sgt i32 %486, %12
  br i1 %501, label %502, label %438

502:                                              ; preds = %499, %477, %432
  %503 = phi i32 [ 0, %432 ], [ %427, %477 ], [ %485, %499 ]
  %504 = icmp eq i32 %427, %503
  br i1 %504, label %505, label %801

505:                                              ; preds = %502
  %506 = add i32 %427, -1
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %566, label %508

508:                                              ; preds = %554, %505
  %509 = phi i32 [ %560, %554 ], [ 0, %505 ]
  %510 = icmp sgt i32 %509, -1
  br i1 %510, label %519, label %554

511:                                              ; preds = %554
  %512 = icmp sgt i32 %506, -1
  br i1 %512, label %513, label %566

513:                                              ; preds = %511
  %514 = add i32 %16, -1
  %515 = add i32 %14, -1
  %516 = tail call i32 @llvm.smin.i32(i32 %427, i32 %515)
  %517 = and i32 %516, -2
  %518 = icmp sgt i32 %517, -1
  br label %562

519:                                              ; preds = %550, %508
  %520 = phi i16 [ %551, %550 ], [ 0, %508 ]
  %521 = phi i32 [ %552, %550 ], [ %509, %508 ]
  %522 = sub i32 %509, %521
  %523 = getelementptr i16, ptr %188, i32 %522
  %524 = load i16, ptr %523, align 2
  %525 = zext i16 %524 to i32
  %526 = icmp eq i32 %12, %525
  br i1 %526, label %550, label %527

527:                                              ; preds = %519
  %528 = getelementptr i16, ptr %26, i32 %521
  %529 = load i16, ptr %528, align 2
  %530 = zext i16 %529 to i32
  %531 = icmp eq i32 %12, %530
  br i1 %531, label %550, label %532

532:                                              ; preds = %527
  %533 = add nuw nsw i32 %530, %525
  %534 = load i32, ptr %11, align 4
  %535 = icmp sgt i32 %534, %533
  br i1 %535, label %545, label %536

536:                                              ; preds = %532
  %537 = load i32, ptr %10, align 4
  br label %538

538:                                              ; preds = %538, %536
  %539 = phi i32 [ %533, %536 ], [ %543, %538 ]
  %540 = sub i32 %539, %534
  %541 = ashr i32 %540, %537
  %542 = and i32 %540, %534
  %543 = add i32 %541, %542
  %544 = icmp slt i32 %543, %534
  br i1 %544, label %545, label %538

545:                                              ; preds = %538, %532
  %546 = phi i32 [ %533, %532 ], [ %543, %538 ]
  %547 = getelementptr i16, ptr %22, i32 %546
  %548 = load i16, ptr %547, align 2
  %549 = xor i16 %548, %520
  br label %550

550:                                              ; preds = %545, %527, %519
  %551 = phi i16 [ %549, %545 ], [ %520, %527 ], [ %520, %519 ]
  %552 = add i32 %521, -1
  %553 = icmp sgt i32 %552, -1
  br i1 %553, label %519, label %554

554:                                              ; preds = %550, %508
  %555 = phi i16 [ 0, %508 ], [ %551, %550 ]
  %556 = zext i16 %555 to i32
  %557 = getelementptr i16, ptr %24, i32 %556
  %558 = load i16, ptr %557, align 2
  %559 = getelementptr i16, ptr %34, i32 %509
  store i16 %558, ptr %559, align 2
  %560 = add i32 %509, 1
  %561 = icmp sgt i32 %560, %506
  br i1 %561, label %511, label %508

562:                                              ; preds = %691, %513
  %563 = phi i32 [ %506, %513 ], [ %693, %691 ]
  %564 = phi i32 [ 0, %513 ], [ %692, %691 ]
  %565 = getelementptr i16, ptr %36, i32 %563
  br label %571

566:                                              ; preds = %691, %511, %505
  %567 = phi i32 [ 0, %511 ], [ 0, %505 ], [ %692, %691 ]
  %568 = icmp sgt i32 %14, 0
  br i1 %568, label %569, label %749

569:                                              ; preds = %566
  %570 = icmp sgt i32 %427, 0
  br label %698

571:                                              ; preds = %599, %562
  %572 = phi i16 [ 0, %562 ], [ %600, %599 ]
  %573 = phi i32 [ %506, %562 ], [ %601, %599 ]
  %574 = getelementptr i16, ptr %34, i32 %573
  %575 = load i16, ptr %574, align 2
  %576 = zext i16 %575 to i32
  %577 = icmp eq i32 %12, %576
  br i1 %577, label %599, label %578

578:                                              ; preds = %571
  %579 = load i16, ptr %565, align 2
  %580 = zext i16 %579 to i32
  %581 = mul i32 %573, %580
  %582 = add i32 %581, %576
  %583 = load i32, ptr %11, align 4
  %584 = icmp sgt i32 %583, %582
  br i1 %584, label %594, label %585

585:                                              ; preds = %578
  %586 = load i32, ptr %10, align 4
  br label %587

587:                                              ; preds = %587, %585
  %588 = phi i32 [ %582, %585 ], [ %592, %587 ]
  %589 = sub i32 %588, %583
  %590 = ashr i32 %589, %586
  %591 = and i32 %589, %583
  %592 = add i32 %590, %591
  %593 = icmp slt i32 %592, %583
  br i1 %593, label %594, label %587

594:                                              ; preds = %587, %578
  %595 = phi i32 [ %582, %578 ], [ %592, %587 ]
  %596 = getelementptr i16, ptr %22, i32 %595
  %597 = load i16, ptr %596, align 2
  %598 = xor i16 %597, %572
  br label %599

599:                                              ; preds = %594, %571
  %600 = phi i16 [ %598, %594 ], [ %572, %571 ]
  %601 = add i32 %573, -1
  %602 = icmp sgt i32 %601, -1
  br i1 %602, label %571, label %603

603:                                              ; preds = %599
  %604 = zext i16 %600 to i32
  %605 = icmp eq i16 %600, 0
  br i1 %605, label %606, label %608

606:                                              ; preds = %603
  %607 = getelementptr i16, ptr %30, i32 %563
  store i16 0, ptr %607, align 2
  br label %691

608:                                              ; preds = %603
  %609 = getelementptr i16, ptr %36, i32 %563
  %610 = load i16, ptr %609, align 2
  %611 = zext i16 %610 to i32
  %612 = mul i32 %514, %611
  %613 = add i32 %612, %12
  %614 = load i32, ptr %11, align 4
  %615 = icmp sgt i32 %614, %613
  br i1 %615, label %625, label %616

616:                                              ; preds = %608
  %617 = load i32, ptr %10, align 4
  br label %618

618:                                              ; preds = %618, %616
  %619 = phi i32 [ %613, %616 ], [ %623, %618 ]
  %620 = sub i32 %619, %614
  %621 = ashr i32 %620, %617
  %622 = and i32 %620, %614
  %623 = add i32 %621, %622
  %624 = icmp slt i32 %623, %614
  br i1 %624, label %625, label %618

625:                                              ; preds = %618, %608
  %626 = phi i32 [ %613, %608 ], [ %623, %618 ]
  %627 = getelementptr i16, ptr %22, i32 %626
  %628 = load i16, ptr %627, align 2
  br i1 %518, label %629, label %659

629:                                              ; preds = %655, %625
  %630 = phi i16 [ %656, %655 ], [ 0, %625 ]
  %631 = phi i32 [ %657, %655 ], [ %517, %625 ]
  %632 = or i32 %631, 1
  %633 = getelementptr i16, ptr %26, i32 %632
  %634 = load i16, ptr %633, align 2
  %635 = zext i16 %634 to i32
  %636 = icmp eq i32 %12, %635
  br i1 %636, label %655, label %637

637:                                              ; preds = %629
  %638 = mul i32 %631, %611
  %639 = add i32 %638, %635
  %640 = icmp sgt i32 %614, %639
  br i1 %640, label %650, label %641

641:                                              ; preds = %637
  %642 = load i32, ptr %10, align 4
  br label %643

643:                                              ; preds = %643, %641
  %644 = phi i32 [ %639, %641 ], [ %648, %643 ]
  %645 = sub i32 %644, %614
  %646 = ashr i32 %645, %642
  %647 = and i32 %645, %614
  %648 = add i32 %646, %647
  %649 = icmp slt i32 %648, %614
  br i1 %649, label %650, label %643

650:                                              ; preds = %643, %637
  %651 = phi i32 [ %639, %637 ], [ %648, %643 ]
  %652 = getelementptr i16, ptr %22, i32 %651
  %653 = load i16, ptr %652, align 2
  %654 = xor i16 %653, %630
  br label %655

655:                                              ; preds = %650, %629
  %656 = phi i16 [ %654, %650 ], [ %630, %629 ]
  %657 = add nsw i32 %631, -2
  %658 = icmp sgt i32 %631, 1
  br i1 %658, label %629, label %659

659:                                              ; preds = %655, %625
  %660 = phi i16 [ 0, %625 ], [ %656, %655 ]
  %661 = getelementptr i16, ptr %24, i32 %604
  %662 = load i16, ptr %661, align 2
  %663 = zext i16 %662 to i32
  %664 = zext i16 %628 to i32
  %665 = getelementptr i16, ptr %24, i32 %664
  %666 = load i16, ptr %665, align 2
  %667 = zext i16 %666 to i32
  %668 = zext i16 %660 to i32
  %669 = getelementptr i16, ptr %24, i32 %668
  %670 = load i16, ptr %669, align 2
  %671 = zext i16 %670 to i32
  %672 = add i32 %12, %663
  %673 = add i32 %672, %667
  %674 = sub i32 %673, %671
  %675 = icmp sgt i32 %614, %674
  br i1 %675, label %685, label %676

676:                                              ; preds = %659
  %677 = load i32, ptr %10, align 4
  br label %678

678:                                              ; preds = %678, %676
  %679 = phi i32 [ %674, %676 ], [ %683, %678 ]
  %680 = sub i32 %679, %614
  %681 = ashr i32 %680, %677
  %682 = and i32 %680, %614
  %683 = add i32 %681, %682
  %684 = icmp slt i32 %683, %614
  br i1 %684, label %685, label %678

685:                                              ; preds = %678, %659
  %686 = phi i32 [ %674, %659 ], [ %683, %678 ]
  %687 = getelementptr i16, ptr %22, i32 %686
  %688 = load i16, ptr %687, align 2
  %689 = getelementptr i16, ptr %30, i32 %563
  store i16 %688, ptr %689, align 2
  %690 = add i32 %564, 1
  br label %691

691:                                              ; preds = %685, %606
  %692 = phi i32 [ %564, %606 ], [ %690, %685 ]
  %693 = add i32 %563, -1
  %694 = icmp sgt i32 %693, -1
  br i1 %694, label %562, label %566

695:                                              ; preds = %741
  %696 = add nuw nsw i32 %699, 1
  %697 = icmp eq i32 %696, %14
  br i1 %697, label %749, label %698

698:                                              ; preds = %695, %569
  %699 = phi i32 [ 0, %569 ], [ %696, %695 ]
  br i1 %570, label %700, label %741

700:                                              ; preds = %698
  %701 = add i32 %699, %16
  %702 = mul i32 %701, %18
  br label %703

703:                                              ; preds = %737, %700
  %704 = phi i16 [ 0, %700 ], [ %738, %737 ]
  %705 = phi i32 [ 0, %700 ], [ %739, %737 ]
  %706 = getelementptr i16, ptr %30, i32 %705
  %707 = load i16, ptr %706, align 2
  %708 = icmp eq i16 %707, 0
  br i1 %708, label %737, label %709

709:                                              ; preds = %703
  %710 = zext i16 %707 to i32
  %711 = getelementptr i16, ptr %40, i32 %705
  %712 = load i16, ptr %711, align 2
  %713 = zext i16 %712 to i32
  %714 = xor i32 %713, -1
  %715 = add i32 %12, %714
  %716 = mul i32 %702, %715
  %717 = getelementptr i16, ptr %24, i32 %710
  %718 = load i16, ptr %717, align 2
  %719 = zext i16 %718 to i32
  %720 = add i32 %716, %719
  %721 = load i32, ptr %11, align 4
  %722 = icmp sgt i32 %721, %720
  br i1 %722, label %732, label %723

723:                                              ; preds = %709
  %724 = load i32, ptr %10, align 4
  br label %725

725:                                              ; preds = %725, %723
  %726 = phi i32 [ %720, %723 ], [ %730, %725 ]
  %727 = sub i32 %726, %721
  %728 = ashr i32 %727, %724
  %729 = and i32 %727, %721
  %730 = add i32 %728, %729
  %731 = icmp slt i32 %730, %721
  br i1 %731, label %732, label %725

732:                                              ; preds = %725, %709
  %733 = phi i32 [ %720, %709 ], [ %730, %725 ]
  %734 = getelementptr i16, ptr %22, i32 %733
  %735 = load i16, ptr %734, align 2
  %736 = xor i16 %735, %704
  br label %737

737:                                              ; preds = %732, %703
  %738 = phi i16 [ %704, %703 ], [ %736, %732 ]
  %739 = add nuw nsw i32 %705, 1
  %740 = icmp eq i32 %739, %427
  br i1 %740, label %741, label %703

741:                                              ; preds = %737, %698
  %742 = phi i16 [ 0, %698 ], [ %738, %737 ]
  %743 = getelementptr i16, ptr %188, i32 %699
  %744 = load i16, ptr %743, align 2
  %745 = zext i16 %744 to i32
  %746 = getelementptr i16, ptr %22, i32 %745
  %747 = load i16, ptr %746, align 2
  %748 = icmp eq i16 %742, %747
  br i1 %748, label %695, label %801

749:                                              ; preds = %695, %566
  %750 = icmp ne ptr %8, null
  %751 = icmp ne ptr %6, null
  %752 = and i1 %751, %750
  br i1 %752, label %753, label %773

753:                                              ; preds = %749
  %754 = icmp sgt i32 %427, 0
  br i1 %754, label %755, label %801

755:                                              ; preds = %769, %753
  %756 = phi i32 [ %770, %769 ], [ 0, %753 ]
  %757 = phi i32 [ %771, %769 ], [ 0, %753 ]
  %758 = getelementptr i16, ptr %30, i32 %757
  %759 = load i16, ptr %758, align 2
  %760 = icmp eq i16 %759, 0
  br i1 %760, label %769, label %761

761:                                              ; preds = %755
  %762 = getelementptr i16, ptr %8, i32 %756
  store i16 %759, ptr %762, align 2
  %763 = getelementptr i16, ptr %40, i32 %757
  %764 = load i16, ptr %763, align 2
  %765 = zext i16 %764 to i32
  %766 = sub i32 %765, %42
  %767 = add i32 %756, 1
  %768 = getelementptr i32, ptr %6, i32 %756
  store i32 %766, ptr %768, align 4
  br label %769

769:                                              ; preds = %761, %755
  %770 = phi i32 [ %767, %761 ], [ %756, %755 ]
  %771 = add nuw nsw i32 %757, 1
  %772 = icmp eq i32 %771, %427
  br i1 %772, label %801, label %755

773:                                              ; preds = %749
  %774 = icmp ne ptr %1, null
  %775 = icmp ne ptr %2, null
  %776 = and i1 %774, %775
  %777 = icmp sgt i32 %427, 0
  %778 = select i1 %776, i1 %777, i1 false
  br i1 %778, label %779, label %801

779:                                              ; preds = %798, %773
  %780 = phi i32 [ %799, %798 ], [ 0, %773 ]
  %781 = getelementptr i16, ptr %40, i32 %780
  %782 = load i16, ptr %781, align 2
  %783 = zext i16 %782 to i32
  %784 = icmp sgt i32 %41, %783
  %785 = getelementptr i16, ptr %30, i32 %780
  %786 = load i16, ptr %785, align 2
  br i1 %784, label %787, label %793

787:                                              ; preds = %779
  %788 = trunc i16 %786 to i8
  %789 = sub i32 %783, %42
  %790 = getelementptr i8, ptr %1, i32 %789
  %791 = load i8, ptr %790, align 1
  %792 = xor i8 %791, %788
  store i8 %792, ptr %790, align 1
  br label %798

793:                                              ; preds = %779
  %794 = sub i32 %783, %41
  %795 = getelementptr i16, ptr %2, i32 %794
  %796 = load i16, ptr %795, align 2
  %797 = xor i16 %796, %786
  store i16 %797, ptr %795, align 2
  br label %798

798:                                              ; preds = %793, %787
  %799 = add nuw nsw i32 %780, 1
  %800 = icmp eq i32 %799, %427
  br i1 %800, label %801, label %779

801:                                              ; preds = %798, %773, %769, %753, %741, %502, %475, %430, %294, %185, %132, %81, %54, %50
  %802 = phi i32 [ 0, %185 ], [ -74, %430 ], [ -74, %502 ], [ %567, %773 ], [ %567, %753 ], [ 0, %50 ], [ 0, %132 ], [ 0, %81 ], [ -74, %294 ], [ %567, %769 ], [ %567, %798 ], [ -74, %741 ], [ -74, %475 ], [ 0, %54 ]
  ret i32 %802
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150508413, i64 2150508905, i64 2150508450, i64 2150508506, i64 2150508540, i64 2150508564, i64 2150508605, i64 2150508626, i64 2150508654, i64 2150508688}
