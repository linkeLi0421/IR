; ModuleID = '/llk/IR/arch/arm/kernel/unwind.c_pt.bc'
source_filename = "../arch/arm/kernel/unwind.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_unwind_cpp_pr0:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_unwind_cpp_pr0\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_unwind_cpp_pr0:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_unwind_cpp_pr1:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_unwind_cpp_pr1\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_unwind_cpp_pr1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_unwind_cpp_pr2:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_unwind_cpp_pr2\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_unwind_cpp_pr2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.unwind_idx = type { i32, i32 }
%struct.unwind_ctrl_block = type { [16 x i32], ptr, i32, i32, i32, i32 }
%struct.stackframe = type { i32, i32, i32, i32 }
%struct.unwind_table = type { %struct.list_head, ptr, ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab___aeabi_unwind_cpp_pr0 = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_unwind_cpp_pr0 = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_unwind_cpp_pr0 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_unwind_cpp_pr0 to i32), ptr @__kstrtab___aeabi_unwind_cpp_pr0, ptr @__kstrtabns___aeabi_unwind_cpp_pr0 }, section "___ksymtab+__aeabi_unwind_cpp_pr0", align 4
@__kstrtab___aeabi_unwind_cpp_pr1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_unwind_cpp_pr1 = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_unwind_cpp_pr1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_unwind_cpp_pr1 to i32), ptr @__kstrtab___aeabi_unwind_cpp_pr1, ptr @__kstrtabns___aeabi_unwind_cpp_pr1 }, section "___ksymtab+__aeabi_unwind_cpp_pr1", align 4
@__kstrtab___aeabi_unwind_cpp_pr2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_unwind_cpp_pr2 = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_unwind_cpp_pr2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_unwind_cpp_pr2 to i32), ptr @__kstrtab___aeabi_unwind_cpp_pr2, ptr @__kstrtabns___aeabi_unwind_cpp_pr2 }, section "___ksymtab+__aeabi_unwind_cpp_pr2", align 4
@.str = private unnamed_addr constant [33 x i8] c"\014unwind: Index not found %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"\014unwind: Unsupported personality routine %08lx in the index at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\014unwind: Unsupported personality routine %08lx at %p\0A\00", align 1
@unwind_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@unwind_tables = internal global %struct.list_head { ptr @unwind_tables, ptr @unwind_tables }, align 4
@__origin_unwind_idx = internal unnamed_addr global ptr null, align 4
@__start_unwind_idx = external dso_local constant [0 x %struct.unwind_idx], align 4
@__stop_unwind_idx = external dso_local constant [0 x %struct.unwind_idx], align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"\014unwind: Unknown symbol address %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\014unwind: 'Refuse to unwind' instruction %04lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\014unwind: Spare encoding %04lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\014unwind: Unhandled instruction %02lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\014unwind: Corrupt unwind table\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___aeabi_unwind_cpp_pr0, ptr @__ksymtab___aeabi_unwind_cpp_pr1, ptr @__ksymtab___aeabi_unwind_cpp_pr2], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @__aeabi_unwind_cpp_pr0() #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @__aeabi_unwind_cpp_pr1() #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @__aeabi_unwind_cpp_pr2() #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unwind_frame(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.unwind_ctrl_block, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.stackframe, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 8191
  %6 = and i32 %5, -8192
  %7 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.stackframe, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @kernel_text_address(i32 noundef %9) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %515, label %12

12:                                               ; preds = %1
  %13 = load i32, ptr %8, align 4
  %14 = tail call i32 @core_kernel_text(i32 noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @__origin_unwind_idx, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %36, !prof !10

19:                                               ; preds = %16
  br i1 icmp ult (ptr @__start_unwind_idx, ptr @__stop_unwind_idx), label %20, label %34

20:                                               ; preds = %20, %19
  %21 = phi ptr [ %32, %20 ], [ @__start_unwind_idx, %19 ]
  %22 = phi ptr [ %31, %20 ], [ @__stop_unwind_idx, %19 ]
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %21 to i32
  %25 = sub i32 %23, %24
  %26 = ashr i32 %25, 4
  %27 = getelementptr %struct.unwind_idx, ptr %21, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 1073741823
  %30 = getelementptr %struct.unwind_idx, ptr %27, i32 1
  %31 = select i1 %29, ptr %22, ptr %27
  %32 = select i1 %29, ptr %30, ptr %21
  %33 = icmp ult ptr %32, %31
  br i1 %33, label %20, label %34

34:                                               ; preds = %20, %19
  %35 = phi ptr [ @__stop_unwind_idx, %19 ], [ %31, %20 ]
  store ptr %35, ptr @__origin_unwind_idx, align 4
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi ptr [ %35, %34 ], [ %17, %16 ]
  %38 = icmp ult i32 %13, ptrtoint (ptr @__start_unwind_idx to i32)
  %39 = select i1 %38, ptr %37, ptr @__stop_unwind_idx
  %40 = select i1 %38, ptr @__start_unwind_idx, ptr %37
  %41 = ptrtoint ptr %40 to i32
  %42 = sub i32 %13, %41
  %43 = and i32 %42, 2147483647
  %44 = getelementptr %struct.unwind_idx, ptr %39, i32 -1
  %45 = icmp ult ptr %40, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %46, %36
  %47 = phi ptr [ %61, %46 ], [ %40, %36 ]
  %48 = phi i32 [ %60, %46 ], [ %43, %36 ]
  %49 = phi ptr [ %59, %46 ], [ %39, %36 ]
  %50 = ptrtoint ptr %49 to i32
  %51 = ptrtoint ptr %47 to i32
  %52 = sub i32 %50, %51
  %53 = ashr i32 %52, 4
  %54 = getelementptr %struct.unwind_idx, ptr %47, i32 %53
  %55 = mul nsw i32 %53, -8
  %56 = add i32 %55, %48
  %57 = load i32, ptr %54, align 4
  %58 = icmp ult i32 %56, %57
  %59 = select i1 %58, ptr %54, ptr %49
  %60 = select i1 %58, i32 %48, i32 %56
  %61 = select i1 %58, ptr %47, ptr %54
  %62 = getelementptr %struct.unwind_idx, ptr %59, i32 -1
  %63 = icmp ult ptr %61, %62
  br i1 %63, label %46, label %64

64:                                               ; preds = %46, %36
  %65 = phi i32 [ %43, %36 ], [ %60, %46 ]
  %66 = phi ptr [ %40, %36 ], [ %61, %46 ]
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, %65
  br i1 %68, label %69, label %138, !prof !10

69:                                               ; preds = %64
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %13) #10
  br label %141

71:                                               ; preds = %12
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @unwind_lock) #9
  %73 = load ptr, ptr @unwind_tables, align 4
  %74 = icmp eq ptr %73, @unwind_tables
  br i1 %74, label %136, label %75

75:                                               ; preds = %133, %71
  %76 = phi ptr [ %134, %133 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.unwind_table, ptr %76, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, %13
  br i1 %79, label %133, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.unwind_table, ptr %76, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, %13
  br i1 %83, label %84, label %133

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.unwind_table, ptr %76, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.unwind_table, ptr %76, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.unwind_table, ptr %76, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %86 to i32
  %92 = icmp ult i32 %13, %91
  %93 = select i1 %92, ptr %88, ptr %90
  %94 = select i1 %92, ptr %86, ptr %88
  %95 = ptrtoint ptr %94 to i32
  %96 = sub i32 %13, %95
  %97 = and i32 %96, 2147483647
  %98 = getelementptr %struct.unwind_idx, ptr %93, i32 -1
  %99 = icmp ult ptr %94, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %100, %84
  %101 = phi ptr [ %115, %100 ], [ %94, %84 ]
  %102 = phi i32 [ %114, %100 ], [ %97, %84 ]
  %103 = phi ptr [ %113, %100 ], [ %93, %84 ]
  %104 = ptrtoint ptr %103 to i32
  %105 = ptrtoint ptr %101 to i32
  %106 = sub i32 %104, %105
  %107 = ashr i32 %106, 4
  %108 = getelementptr %struct.unwind_idx, ptr %101, i32 %107
  %109 = mul nsw i32 %107, -8
  %110 = add i32 %109, %102
  %111 = load i32, ptr %108, align 4
  %112 = icmp ult i32 %110, %111
  %113 = select i1 %112, ptr %108, ptr %103
  %114 = select i1 %112, i32 %102, i32 %110
  %115 = select i1 %112, ptr %101, ptr %108
  %116 = getelementptr %struct.unwind_idx, ptr %113, i32 -1
  %117 = icmp ult ptr %115, %116
  br i1 %117, label %100, label %118

118:                                              ; preds = %100, %84
  %119 = phi i32 [ %97, %84 ], [ %114, %100 ]
  %120 = phi ptr [ %94, %84 ], [ %115, %100 ]
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, %119
  br i1 %122, label %123, label %125, !prof !10

123:                                              ; preds = %118
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %13) #10
  br label %125

125:                                              ; preds = %123, %118
  %126 = phi ptr [ null, %123 ], [ %120, %118 ]
  %127 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %76, align 4
  %130 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  store ptr %128, ptr %130, align 4
  store volatile ptr %129, ptr %128, align 4
  %131 = load ptr, ptr @unwind_tables, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %76, ptr %132, align 4
  store ptr %131, ptr %76, align 4
  store ptr @unwind_tables, ptr %127, align 4
  store volatile ptr %76, ptr @unwind_tables, align 4
  br label %136

133:                                              ; preds = %80, %75
  %134 = load ptr, ptr %76, align 4
  %135 = icmp eq ptr %134, @unwind_tables
  br i1 %135, label %136, label %75

136:                                              ; preds = %133, %125, %71
  %137 = phi ptr [ %126, %125 ], [ null, %71 ], [ null, %133 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @unwind_lock, i32 noundef %72) #9
  br label %138

138:                                              ; preds = %136, %64
  %139 = phi ptr [ %137, %136 ], [ %66, %64 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138, %69
  %142 = load i32, ptr %8, align 4
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %142) #10
  br label %515

144:                                              ; preds = %138
  %145 = load i32, ptr %0, align 4
  %146 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 11
  store i32 %145, ptr %146, align 4
  %147 = load i32, ptr %3, align 4
  %148 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 13
  store i32 %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.stackframe, ptr %0, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 14
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 15
  store i32 0, ptr %152, align 4
  %153 = getelementptr inbounds %struct.unwind_idx, ptr %139, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %515, label %156

156:                                              ; preds = %144
  %157 = icmp sgt i32 %154, -1
  br i1 %157, label %158, label %164

158:                                              ; preds = %156
  %159 = shl nuw i32 %154, 1
  %160 = ashr exact i32 %159, 1
  %161 = ptrtoint ptr %153 to i32
  %162 = add i32 %160, %161
  %163 = inttoptr i32 %162 to ptr
  br label %169

164:                                              ; preds = %156
  %165 = and i32 %154, -16777216
  %166 = icmp eq i32 %165, -2147483648
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %154, ptr noundef nonnull %139) #10
  br label %515

169:                                              ; preds = %164, %158
  %170 = phi ptr [ %163, %158 ], [ %153, %164 ]
  %171 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 1
  store ptr %170, ptr %171, align 4
  %172 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 1
  %173 = load i32, ptr %170, align 4
  %174 = and i32 %173, -16777216
  switch i32 %174, label %183 [
    i32 -2147483648, label %175
    i32 -2130706432, label %177
  ]

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 5
  store i32 2, ptr %176, align 4
  br label %185

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 5
  store i32 1, ptr %178, align 4
  %179 = load i32, ptr %170, align 4
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  %182 = add nuw nsw i32 %181, 1
  br label %185

183:                                              ; preds = %169
  %184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %173, ptr noundef %170) #10
  br label %515

185:                                              ; preds = %177, %175
  %186 = phi i32 [ %182, %177 ], [ 1, %175 ]
  %187 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 4
  store i32 %186, ptr %187, align 4
  %188 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 3
  store i32 0, ptr %188, align 4
  %189 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 4
  %190 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %2, i32 0, i32 5
  %191 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 4
  %192 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 5
  %193 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 6
  %194 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 7
  %195 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 8
  %196 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 9
  %197 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 10
  %198 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 11
  br label %199

199:                                              ; preds = %497, %185
  %200 = phi i32 [ %186, %185 ], [ %498, %497 ]
  %201 = phi i32 [ %147, %185 ], [ %492, %497 ]
  %202 = load i32, ptr %7, align 4
  %203 = sub i32 %202, %201
  %204 = icmp ult i32 %203, 64
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store i32 1, ptr %188, align 4
  br label %206

206:                                              ; preds = %205, %199
  %207 = load ptr, ptr %172, align 4
  %208 = load i32, ptr %207, align 4
  %209 = load i32, ptr %190, align 4
  %210 = shl i32 %209, 3
  %211 = lshr i32 %208, %210
  %212 = and i32 %211, 255
  %213 = icmp eq i32 %209, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = getelementptr i32, ptr %207, i32 1
  store ptr %215, ptr %172, align 4
  %216 = add nsw i32 %200, -1
  store i32 %216, ptr %189, align 4
  br label %219

217:                                              ; preds = %206
  %218 = add i32 %209, -1
  br label %219

219:                                              ; preds = %217, %214
  %220 = phi ptr [ %207, %217 ], [ %215, %214 ]
  %221 = phi i32 [ %200, %217 ], [ %216, %214 ]
  %222 = phi i32 [ %218, %217 ], [ 3, %214 ]
  store i32 %222, ptr %190, align 4
  %223 = trunc i32 %211 to i8
  %224 = and i8 %223, -64
  switch i8 %224, label %235 [
    i8 0, label %225
    i8 64, label %230
  ]

225:                                              ; preds = %219
  %226 = shl nuw nsw i32 %212, 2
  %227 = and i32 %226, 252
  %228 = add nuw nsw i32 %227, 4
  %229 = add i32 %228, %201
  store i32 %229, ptr %148, align 4
  br label %491

230:                                              ; preds = %219
  %231 = shl nuw nsw i32 %212, 2
  %232 = and i32 %231, 252
  %233 = add i32 %201, -4
  %234 = sub i32 %233, %232
  store i32 %234, ptr %148, align 4
  br label %491

235:                                              ; preds = %219
  %236 = and i8 %223, -16
  switch i8 %236, label %408 [
    i8 -128, label %237
    i8 -112, label %293
    i8 -96, label %300
  ]

237:                                              ; preds = %235
  %238 = shl nuw nsw i32 %212, 8
  %239 = icmp eq i32 %221, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %255

242:                                              ; preds = %237
  %243 = load i32, ptr %220, align 4
  %244 = shl i32 %222, 3
  %245 = lshr i32 %243, %244
  %246 = and i32 %245, 255
  %247 = icmp eq i32 %222, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = getelementptr i32, ptr %220, i32 1
  store ptr %249, ptr %172, align 4
  %250 = add nsw i32 %221, -1
  store i32 %250, ptr %189, align 4
  br label %253

251:                                              ; preds = %242
  %252 = add i32 %222, -1
  br label %253

253:                                              ; preds = %251, %248
  %254 = phi i32 [ %252, %251 ], [ 3, %248 ]
  store i32 %254, ptr %190, align 4
  br label %255

255:                                              ; preds = %253, %240
  %256 = phi i32 [ 0, %240 ], [ %246, %253 ]
  %257 = or i32 %256, %238
  %258 = and i32 %257, 4095
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %257) #10
  br label %515

262:                                              ; preds = %255
  %263 = inttoptr i32 %201 to ptr
  br label %264

264:                                              ; preds = %281, %262
  %265 = phi i32 [ 4, %262 ], [ %284, %281 ]
  %266 = phi i32 [ %258, %262 ], [ %283, %281 ]
  %267 = phi ptr [ %263, %262 ], [ %282, %281 ]
  %268 = and i32 %266, 1
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %281, label %270

270:                                              ; preds = %264
  %271 = load i32, ptr %188, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %277, label %273, !prof !11

273:                                              ; preds = %270
  %274 = load i32, ptr %7, align 4
  %275 = inttoptr i32 %274 to ptr
  %276 = icmp ult ptr %267, %275
  br i1 %276, label %277, label %515

277:                                              ; preds = %273, %270
  %278 = load volatile i32, ptr %267, align 4
  %279 = getelementptr [16 x i32], ptr %2, i32 0, i32 %265
  store i32 %278, ptr %279, align 4
  %280 = getelementptr i32, ptr %267, i32 1
  br label %281

281:                                              ; preds = %277, %264
  %282 = phi ptr [ %267, %264 ], [ %280, %277 ]
  %283 = lshr i32 %266, 1
  %284 = add nuw nsw i32 %265, 1
  %285 = icmp ult i32 %266, 2
  br i1 %285, label %286, label %264

286:                                              ; preds = %281
  %287 = and i32 %211, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %286
  %290 = load i32, ptr %148, align 4
  br label %491

291:                                              ; preds = %286
  %292 = ptrtoint ptr %282 to i32
  store i32 %292, ptr %148, align 4
  br label %491

293:                                              ; preds = %235
  %294 = and i32 %211, 13
  %295 = icmp eq i32 %294, 13
  br i1 %295, label %408, label %296

296:                                              ; preds = %293
  %297 = and i32 %211, 15
  %298 = getelementptr [16 x i32], ptr %2, i32 0, i32 %297
  %299 = load i32, ptr %298, align 4
  store i32 %299, ptr %148, align 4
  br label %491

300:                                              ; preds = %235
  %301 = inttoptr i32 %201 to ptr
  %302 = and i32 %211, 7
  %303 = add nuw nsw i32 %302, 4
  %304 = load i32, ptr %188, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %310, label %306, !prof !11

306:                                              ; preds = %300
  %307 = load i32, ptr %7, align 4
  %308 = inttoptr i32 %307 to ptr
  %309 = icmp ult ptr %301, %308
  br i1 %309, label %310, label %515

310:                                              ; preds = %306, %300
  %311 = load volatile i32, ptr %301, align 4
  store i32 %311, ptr %191, align 4
  %312 = getelementptr i32, ptr %301, i32 1
  %313 = icmp eq i32 %302, 0
  br i1 %313, label %390, label %314

314:                                              ; preds = %310
  %315 = load i32, ptr %188, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %321, label %317, !prof !11

317:                                              ; preds = %314
  %318 = load i32, ptr %7, align 4
  %319 = inttoptr i32 %318 to ptr
  %320 = icmp ult ptr %312, %319
  br i1 %320, label %321, label %515

321:                                              ; preds = %317, %314
  %322 = load volatile i32, ptr %312, align 4
  store i32 %322, ptr %192, align 4
  %323 = getelementptr i32, ptr %301, i32 2
  %324 = icmp eq i32 %303, 5
  br i1 %324, label %390, label %325

325:                                              ; preds = %321
  %326 = load i32, ptr %188, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %332, label %328, !prof !11

328:                                              ; preds = %325
  %329 = load i32, ptr %7, align 4
  %330 = inttoptr i32 %329 to ptr
  %331 = icmp ult ptr %323, %330
  br i1 %331, label %332, label %515

332:                                              ; preds = %328, %325
  %333 = load volatile i32, ptr %323, align 4
  store i32 %333, ptr %193, align 4
  %334 = getelementptr i32, ptr %301, i32 3
  %335 = icmp eq i32 %303, 6
  br i1 %335, label %390, label %336

336:                                              ; preds = %332
  %337 = load i32, ptr %188, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %343, label %339, !prof !11

339:                                              ; preds = %336
  %340 = load i32, ptr %7, align 4
  %341 = inttoptr i32 %340 to ptr
  %342 = icmp ult ptr %334, %341
  br i1 %342, label %343, label %515

343:                                              ; preds = %339, %336
  %344 = load volatile i32, ptr %334, align 4
  store i32 %344, ptr %194, align 4
  %345 = getelementptr i32, ptr %301, i32 4
  %346 = icmp eq i32 %303, 7
  br i1 %346, label %390, label %347

347:                                              ; preds = %343
  %348 = load i32, ptr %188, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %354, label %350, !prof !11

350:                                              ; preds = %347
  %351 = load i32, ptr %7, align 4
  %352 = inttoptr i32 %351 to ptr
  %353 = icmp ult ptr %345, %352
  br i1 %353, label %354, label %515

354:                                              ; preds = %350, %347
  %355 = load volatile i32, ptr %345, align 4
  store i32 %355, ptr %195, align 4
  %356 = getelementptr i32, ptr %301, i32 5
  %357 = icmp eq i32 %303, 8
  br i1 %357, label %390, label %358

358:                                              ; preds = %354
  %359 = load i32, ptr %188, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %365, label %361, !prof !11

361:                                              ; preds = %358
  %362 = load i32, ptr %7, align 4
  %363 = inttoptr i32 %362 to ptr
  %364 = icmp ult ptr %356, %363
  br i1 %364, label %365, label %515

365:                                              ; preds = %361, %358
  %366 = load volatile i32, ptr %356, align 4
  store i32 %366, ptr %196, align 4
  %367 = getelementptr i32, ptr %301, i32 6
  %368 = icmp eq i32 %303, 9
  br i1 %368, label %390, label %369

369:                                              ; preds = %365
  %370 = load i32, ptr %188, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %376, label %372, !prof !11

372:                                              ; preds = %369
  %373 = load i32, ptr %7, align 4
  %374 = inttoptr i32 %373 to ptr
  %375 = icmp ult ptr %367, %374
  br i1 %375, label %376, label %515

376:                                              ; preds = %372, %369
  %377 = load volatile i32, ptr %367, align 4
  store i32 %377, ptr %197, align 4
  %378 = getelementptr i32, ptr %301, i32 7
  %379 = icmp eq i32 %303, 10
  br i1 %379, label %390, label %380

380:                                              ; preds = %376
  %381 = load i32, ptr %188, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %387, label %383, !prof !11

383:                                              ; preds = %380
  %384 = load i32, ptr %7, align 4
  %385 = inttoptr i32 %384 to ptr
  %386 = icmp ult ptr %378, %385
  br i1 %386, label %387, label %515

387:                                              ; preds = %383, %380
  %388 = load volatile i32, ptr %378, align 4
  store i32 %388, ptr %198, align 4
  %389 = getelementptr i32, ptr %301, i32 8
  br label %390

390:                                              ; preds = %387, %376, %365, %354, %343, %332, %321, %310
  %391 = phi ptr [ %312, %310 ], [ %323, %321 ], [ %334, %332 ], [ %345, %343 ], [ %356, %354 ], [ %367, %365 ], [ %378, %376 ], [ %389, %387 ]
  %392 = phi ptr [ %301, %310 ], [ %312, %321 ], [ %323, %332 ], [ %334, %343 ], [ %345, %354 ], [ %356, %365 ], [ %367, %376 ], [ %378, %387 ]
  %393 = and i32 %211, 8
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %405, label %395

395:                                              ; preds = %390
  %396 = load i32, ptr %188, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %402, label %398, !prof !11

398:                                              ; preds = %395
  %399 = load i32, ptr %7, align 4
  %400 = inttoptr i32 %399 to ptr
  %401 = icmp ult ptr %391, %400
  br i1 %401, label %402, label %515

402:                                              ; preds = %398, %395
  %403 = load volatile i32, ptr %391, align 4
  store i32 %403, ptr %151, align 4
  %404 = getelementptr i32, ptr %392, i32 2
  br label %405

405:                                              ; preds = %402, %390
  %406 = phi ptr [ %391, %390 ], [ %404, %402 ]
  %407 = ptrtoint ptr %406 to i32
  store i32 %407, ptr %148, align 4
  br label %491

408:                                              ; preds = %293, %235
  switch i8 %223, label %489 [
    i8 -80, label %409
    i8 -79, label %415
    i8 -78, label %467
  ]

409:                                              ; preds = %408
  %410 = load i32, ptr %152, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = load i32, ptr %151, align 4
  store i32 %413, ptr %152, align 4
  br label %414

414:                                              ; preds = %412, %409
  store i32 0, ptr %189, align 4
  br label %491

415:                                              ; preds = %408
  %416 = icmp eq i32 %221, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %415
  %418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %438

419:                                              ; preds = %415
  %420 = load i32, ptr %220, align 4
  %421 = shl i32 %222, 3
  %422 = lshr i32 %420, %421
  %423 = and i32 %422, 255
  %424 = icmp eq i32 %222, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %419
  %426 = getelementptr i32, ptr %220, i32 1
  store ptr %426, ptr %172, align 4
  %427 = add nsw i32 %221, -1
  store i32 %427, ptr %189, align 4
  br label %430

428:                                              ; preds = %419
  %429 = add i32 %222, -1
  br label %430

430:                                              ; preds = %428, %425
  %431 = phi i32 [ %429, %428 ], [ 3, %425 ]
  store i32 %431, ptr %190, align 4
  %432 = icmp ne i32 %423, 0
  %433 = and i32 %422, 240
  %434 = icmp eq i32 %433, 0
  %435 = and i1 %432, %434
  br i1 %435, label %441, label %436

436:                                              ; preds = %430
  %437 = or i32 %423, 45312
  br label %438

438:                                              ; preds = %436, %417
  %439 = phi i32 [ 45312, %417 ], [ %437, %436 ]
  %440 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %439) #10
  br label %515

441:                                              ; preds = %430
  %442 = inttoptr i32 %201 to ptr
  br label %443

443:                                              ; preds = %460, %441
  %444 = phi i32 [ 0, %441 ], [ %463, %460 ]
  %445 = phi i32 [ %423, %441 ], [ %462, %460 ]
  %446 = phi ptr [ %442, %441 ], [ %461, %460 ]
  %447 = and i32 %445, 1
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %460, label %449

449:                                              ; preds = %443
  %450 = load i32, ptr %188, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %456, label %452, !prof !11

452:                                              ; preds = %449
  %453 = load i32, ptr %7, align 4
  %454 = inttoptr i32 %453 to ptr
  %455 = icmp ult ptr %446, %454
  br i1 %455, label %456, label %515

456:                                              ; preds = %452, %449
  %457 = load volatile i32, ptr %446, align 4
  %458 = getelementptr [16 x i32], ptr %2, i32 0, i32 %444
  store i32 %457, ptr %458, align 4
  %459 = getelementptr i32, ptr %446, i32 1
  br label %460

460:                                              ; preds = %456, %443
  %461 = phi ptr [ %446, %443 ], [ %459, %456 ]
  %462 = lshr i32 %445, 1
  %463 = add nuw nsw i32 %444, 1
  %464 = icmp ult i32 %445, 2
  br i1 %464, label %465, label %443

465:                                              ; preds = %460
  %466 = ptrtoint ptr %461 to i32
  store i32 %466, ptr %148, align 4
  br label %491

467:                                              ; preds = %408
  %468 = icmp eq i32 %221, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %467
  %470 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %486

471:                                              ; preds = %467
  %472 = load i32, ptr %220, align 4
  %473 = shl i32 %222, 3
  %474 = lshr i32 %472, %473
  %475 = icmp eq i32 %222, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %471
  %477 = getelementptr i32, ptr %220, i32 1
  store ptr %477, ptr %172, align 4
  %478 = add nsw i32 %221, -1
  store i32 %478, ptr %189, align 4
  br label %481

479:                                              ; preds = %471
  %480 = add i32 %222, -1
  br label %481

481:                                              ; preds = %479, %476
  %482 = phi i32 [ %480, %479 ], [ 3, %476 ]
  store i32 %482, ptr %190, align 4
  %483 = shl i32 %474, 2
  %484 = and i32 %483, 1020
  %485 = add nuw nsw i32 %484, 516
  br label %486

486:                                              ; preds = %481, %469
  %487 = phi i32 [ 516, %469 ], [ %485, %481 ]
  %488 = add i32 %201, %487
  store i32 %488, ptr %148, align 4
  br label %491

489:                                              ; preds = %408
  %490 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %212) #10
  br label %515

491:                                              ; preds = %486, %465, %414, %405, %296, %291, %289, %230, %225
  %492 = phi i32 [ %290, %289 ], [ %292, %291 ], [ %229, %225 ], [ %488, %486 ], [ %201, %414 ], [ %299, %296 ], [ %234, %230 ], [ %407, %405 ], [ %466, %465 ]
  %493 = icmp uge i32 %492, %4
  %494 = load i32, ptr %7, align 4
  %495 = icmp ult i32 %492, %494
  %496 = select i1 %493, i1 %495, i1 false
  br i1 %496, label %497, label %515

497:                                              ; preds = %491
  %498 = load i32, ptr %189, align 4
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %199, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr %152, align 4
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %500
  %504 = load i32, ptr %151, align 4
  store i32 %504, ptr %152, align 4
  br label %505

505:                                              ; preds = %503, %500
  %506 = phi i32 [ %504, %503 ], [ %501, %500 ]
  %507 = load i32, ptr %8, align 4
  %508 = icmp eq i32 %507, %506
  br i1 %508, label %509, label %512

509:                                              ; preds = %505
  %510 = load i32, ptr %3, align 4
  %511 = icmp eq i32 %510, %492
  br i1 %511, label %515, label %512

512:                                              ; preds = %509, %505
  %513 = load i32, ptr %146, align 4
  store i32 %513, ptr %0, align 4
  store i32 %492, ptr %3, align 4
  %514 = load i32, ptr %151, align 4
  store i32 %514, ptr %149, align 4
  store i32 %506, ptr %8, align 4
  br label %515

515:                                              ; preds = %512, %509, %491, %489, %452, %438, %398, %383, %372, %361, %350, %339, %328, %317, %306, %273, %260, %183, %167, %144, %141, %1
  %516 = phi i32 [ 0, %512 ], [ -9, %183 ], [ -9, %167 ], [ -9, %141 ], [ -9, %1 ], [ -9, %144 ], [ -9, %509 ], [ -9, %260 ], [ -9, %438 ], [ -9, %489 ], [ -9, %452 ], [ -9, %273 ], [ -9, %383 ], [ -9, %372 ], [ -9, %361 ], [ -9, %350 ], [ -9, %339 ], [ -9, %328 ], [ -9, %317 ], [ -9, %306 ], [ -9, %491 ], [ -9, %398 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #9
  ret i32 %516
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_text_address(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unwind_backtrace(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca %struct.stackframe, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #9
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %1, %3 ], [ %7, %6 ]
  %10 = icmp eq ptr %0, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = getelementptr [18 x i32], ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %4, align 4
  %14 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr [18 x i32], ptr %0, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = tail call i32 @kernel_text_address(i32 noundef %21) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %11
  %26 = load i32, ptr %17, align 4
  store i32 %26, ptr %22, align 4
  br label %48

27:                                               ; preds = %8
  %28 = tail call ptr @llvm.thread.pointer() #9
  %29 = icmp eq ptr %9, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.frameaddress.p0(i32 0)
  %32 = ptrtoint ptr %31 to i32
  store i32 %32, ptr %4, align 4
  %33 = tail call i32 @llvm.read_register.i32(metadata !0)
  %34 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = tail call ptr @llvm.returnaddress(i32 0)
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 3
  store i32 ptrtoint (ptr @unwind_backtrace to i32), ptr %38, align 4
  br label %48

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4, i32 7
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %4, align 4
  %42 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4, i32 8
  %43 = load i32, ptr %42, align 16
  %44 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %39, %30, %25, %11
  %49 = phi i32 [ ptrtoint (ptr @unwind_backtrace to i32), %30 ], [ %46, %39 ], [ %21, %11 ], [ %26, %25 ]
  %50 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 3
  %51 = call i32 @unwind_frame(ptr noundef nonnull %4)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 1
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ %49, %53 ], [ %57, %55 ]
  %57 = load i32, ptr %50, align 4
  %58 = load i32, ptr %54, align 4
  %59 = add i32 %58, -4
  tail call void @dump_backtrace_entry(i32 noundef %56, i32 noundef %57, i32 noundef %59, ptr noundef %2) #9
  %60 = call i32 @unwind_frame(ptr noundef nonnull %4)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %55

62:                                               ; preds = %55, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_backtrace_entry(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @unwind_table_add(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 28) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = inttoptr i32 %0 to ptr
  %10 = getelementptr inbounds %struct.unwind_table, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 8
  %11 = add i32 %1, %0
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.unwind_table, ptr %6, i32 0, i32 3
  store ptr %12, ptr %13, align 8
  %14 = icmp ult ptr %9, %12
  br i1 %14, label %15, label %29

15:                                               ; preds = %15, %8
  %16 = phi ptr [ %27, %15 ], [ %9, %8 ]
  %17 = phi ptr [ %26, %15 ], [ %12, %8 ]
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %16 to i32
  %20 = sub i32 %18, %19
  %21 = ashr i32 %20, 4
  %22 = getelementptr %struct.unwind_idx, ptr %16, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 1073741823
  %25 = getelementptr %struct.unwind_idx, ptr %22, i32 1
  %26 = select i1 %24, ptr %17, ptr %22
  %27 = select i1 %24, ptr %25, ptr %16
  %28 = icmp ult ptr %27, %26
  br i1 %28, label %15, label %29

29:                                               ; preds = %15, %8
  %30 = phi ptr [ %12, %8 ], [ %26, %15 ]
  %31 = getelementptr inbounds %struct.unwind_table, ptr %6, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.unwind_table, ptr %6, i32 0, i32 4
  store i32 %2, ptr %32, align 4
  %33 = add i32 %3, %2
  %34 = getelementptr inbounds %struct.unwind_table, ptr %6, i32 0, i32 5
  store i32 %33, ptr %34, align 8
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @unwind_lock) #9
  %36 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @unwind_tables, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @unwind_tables, i32 0, i32 1), align 4
  store ptr @unwind_tables, ptr %6, align 8
  %37 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %6, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @unwind_lock, i32 noundef %35) #9
  br label %38

38:                                               ; preds = %29, %4
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unwind_table_del(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @unwind_lock) #9
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @unwind_lock, i32 noundef %4) #9
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_kernel_text(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
