; ModuleID = '/llk/IR/lib/lz4/lz4_decompress.c_pt.bc'
source_filename = "../lib/lz4/lz4_decompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe_partial\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_fast\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_setStreamDecode:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_setStreamDecode\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_setStreamDecode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe_continue\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_fast_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_fast_continue\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_fast_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe_usingDict\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_fast_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_fast_usingDict\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_fast_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.LZ4_streamDecode_t_internal = type { ptr, i32, ptr, i32 }

@__kstrtab_LZ4_decompress_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe to i32), ptr @__kstrtab_LZ4_decompress_safe, ptr @__kstrtabns_LZ4_decompress_safe }, section "___ksymtab+LZ4_decompress_safe", align 4
@__kstrtab_LZ4_decompress_safe_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe_partial to i32), ptr @__kstrtab_LZ4_decompress_safe_partial, ptr @__kstrtabns_LZ4_decompress_safe_partial }, section "___ksymtab+LZ4_decompress_safe_partial", align 4
@__kstrtab_LZ4_decompress_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_fast to i32), ptr @__kstrtab_LZ4_decompress_fast, ptr @__kstrtabns_LZ4_decompress_fast }, section "___ksymtab+LZ4_decompress_fast", align 4
@__kstrtab_LZ4_setStreamDecode = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_setStreamDecode = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_setStreamDecode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_setStreamDecode to i32), ptr @__kstrtab_LZ4_setStreamDecode, ptr @__kstrtabns_LZ4_setStreamDecode }, section "___ksymtab+LZ4_setStreamDecode", align 4
@__kstrtab_LZ4_decompress_safe_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe_continue to i32), ptr @__kstrtab_LZ4_decompress_safe_continue, ptr @__kstrtabns_LZ4_decompress_safe_continue }, section "___ksymtab+LZ4_decompress_safe_continue", align 4
@__kstrtab_LZ4_decompress_fast_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_fast_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_fast_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_fast_continue to i32), ptr @__kstrtab_LZ4_decompress_fast_continue, ptr @__kstrtabns_LZ4_decompress_fast_continue }, section "___ksymtab+LZ4_decompress_fast_continue", align 4
@__kstrtab_LZ4_decompress_safe_usingDict = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe_usingDict = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe_usingDict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe_usingDict to i32), ptr @__kstrtab_LZ4_decompress_safe_usingDict, ptr @__kstrtabns_LZ4_decompress_safe_usingDict }, section "___ksymtab+LZ4_decompress_safe_usingDict", align 4
@__kstrtab_LZ4_decompress_fast_usingDict = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_fast_usingDict = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_fast_usingDict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_fast_usingDict to i32), ptr @__kstrtab_LZ4_decompress_fast_usingDict, ptr @__kstrtabns_LZ4_decompress_fast_usingDict }, section "___ksymtab+LZ4_decompress_fast_usingDict", align 4
@__UNIQUE_ID_file107 = internal constant [43 x i8] c"lz4_decompress.file=lib/lz4/lz4_decompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [36 x i8] c"lz4_decompress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description109 = internal constant [44 x i8] c"lz4_decompress.description=LZ4 decompressor\00", section ".modinfo", align 1
@LZ4_decompress_generic.inc32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 0, i32 4, i32 4, i32 4], align 4
@LZ4_decompress_generic.dec64table = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -4, i32 1, i32 2, i32 3], align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_description109, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_LZ4_decompress_fast, ptr @__ksymtab_LZ4_decompress_fast_continue, ptr @__ksymtab_LZ4_decompress_fast_usingDict, ptr @__ksymtab_LZ4_decompress_safe, ptr @__ksymtab_LZ4_decompress_safe_continue, ptr @__ksymtab_LZ4_decompress_safe_partial, ptr @__ksymtab_LZ4_decompress_safe_usingDict, ptr @__ksymtab_LZ4_setStreamDecode], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 %2
  %6 = getelementptr i8, ptr %1, i32 %3
  %7 = getelementptr i8, ptr %5, i32 -14
  %8 = getelementptr i8, ptr %7, i32 -2
  %9 = getelementptr i8, ptr %6, i32 -14
  %10 = getelementptr i8, ptr %9, i32 -18
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %18, !prof !8

12:                                               ; preds = %4
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %14, label %232

14:                                               ; preds = %12
  %15 = load i8, ptr %0, align 1
  %16 = icmp ne i8 %15, 0
  %17 = sext i1 %16 to i32
  br label %232

18:                                               ; preds = %4
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %232, label %20, !prof !8

20:                                               ; preds = %18
  %21 = getelementptr i8, ptr %5, i32 -15
  %22 = getelementptr i8, ptr %6, i32 -12
  %23 = getelementptr i8, ptr %5, i32 -8
  %24 = getelementptr i8, ptr %5, i32 -5
  %25 = getelementptr i8, ptr %6, i32 -7
  %26 = getelementptr i8, ptr %6, i32 -5
  %27 = ptrtoint ptr %25 to i32
  br label %28

28:                                               ; preds = %211, %20
  %29 = phi ptr [ %1, %20 ], [ %212, %211 ]
  %30 = phi ptr [ %0, %20 ], [ %213, %211 ]
  %31 = getelementptr i8, ptr %30, i32 1
  %32 = load i8, ptr %30, align 1
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %33, 4
  %35 = icmp eq i32 %34, 15
  br i1 %35, label %64, label %36

36:                                               ; preds = %28
  %37 = icmp ult ptr %31, %8
  %38 = icmp ule ptr %29, %10
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %84, !prof !9

40:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %29, ptr noundef align 1 dereferenceable(16) %31, i32 16, i1 false) #4
  %41 = getelementptr i8, ptr %29, i32 %34
  %42 = getelementptr i8, ptr %31, i32 %34
  %43 = and i32 %33, 15
  %44 = load i16, ptr %42, align 1
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %42, i32 2
  %47 = sub nsw i32 0, %45
  %48 = getelementptr i8, ptr %41, i32 %47
  %49 = icmp eq i32 %43, 15
  %50 = icmp ult i16 %44, 8
  %51 = select i1 %49, i1 true, i1 %50
  %52 = icmp ult ptr %48, %1
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %117, label %54

54:                                               ; preds = %40
  %55 = load i64, ptr %48, align 1
  store i64 %55, ptr %41, align 1
  %56 = getelementptr i8, ptr %41, i32 8
  %57 = getelementptr i8, ptr %48, i32 8
  %58 = load i64, ptr %57, align 1
  store i64 %58, ptr %56, align 1
  %59 = getelementptr i8, ptr %41, i32 16
  %60 = getelementptr i8, ptr %48, i32 16
  %61 = load i16, ptr %60, align 1
  store i16 %61, ptr %59, align 1
  %62 = add nuw nsw i32 %43, 4
  %63 = getelementptr i8, ptr %41, i32 %62
  br label %211

64:                                               ; preds = %28
  %65 = icmp ult ptr %31, %21
  br i1 %65, label %66, label %226, !prof !9

66:                                               ; preds = %66, %64
  %67 = phi i32 [ %72, %66 ], [ 15, %64 ]
  %68 = phi ptr [ %69, %66 ], [ %31, %64 ]
  %69 = getelementptr i8, ptr %68, i32 1
  %70 = load i8, ptr %68, align 1
  %71 = zext i8 %70 to i32
  %72 = add i32 %67, %71
  %73 = icmp ult ptr %69, %21
  %74 = icmp eq i8 %70, -1
  %75 = and i1 %74, %73
  br i1 %75, label %66, label %76

76:                                               ; preds = %66
  %77 = ptrtoint ptr %29 to i32
  %78 = xor i32 %77, -1
  %79 = icmp ugt i32 %72, %78
  %80 = ptrtoint ptr %69 to i32
  %81 = xor i32 %80, -1
  %82 = icmp ugt i32 %72, %81
  %83 = or i1 %79, %82
  br i1 %83, label %226, label %84, !prof !10

84:                                               ; preds = %76, %36
  %85 = phi i32 [ %34, %36 ], [ %72, %76 ]
  %86 = phi ptr [ %31, %36 ], [ %69, %76 ]
  %87 = getelementptr i8, ptr %29, i32 %85
  %88 = icmp ugt ptr %87, %22
  %89 = getelementptr i8, ptr %86, i32 %85
  %90 = icmp ugt ptr %89, %23
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = icmp ne ptr %89, %5
  %94 = icmp ugt ptr %87, %6
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %226, label %96

96:                                               ; preds = %92
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %29, ptr align 1 %86, i32 %85, i1 false) #4
  %97 = ptrtoint ptr %87 to i32
  %98 = ptrtoint ptr %1 to i32
  %99 = sub i32 %97, %98
  br label %232

100:                                              ; preds = %100, %84
  %101 = phi ptr [ %107, %100 ], [ %29, %84 ]
  %102 = phi ptr [ %108, %100 ], [ %86, %84 ]
  %103 = load i32, ptr %102, align 1
  %104 = getelementptr i8, ptr %102, i32 4
  %105 = load i32, ptr %104, align 1
  store i32 %103, ptr %101, align 1
  %106 = getelementptr i32, ptr %101, i32 1
  store i32 %105, ptr %106, align 1
  %107 = getelementptr i8, ptr %101, i32 8
  %108 = getelementptr i8, ptr %102, i32 8
  %109 = icmp ult ptr %107, %87
  br i1 %109, label %100, label %110

110:                                              ; preds = %100
  %111 = load i16, ptr %89, align 1
  %112 = zext i16 %111 to i32
  %113 = getelementptr i8, ptr %89, i32 2
  %114 = sub nsw i32 0, %112
  %115 = getelementptr i8, ptr %87, i32 %114
  %116 = and i32 %33, 15
  br label %117

117:                                              ; preds = %110, %40
  %118 = phi i32 [ %43, %40 ], [ %116, %110 ]
  %119 = phi ptr [ %48, %40 ], [ %115, %110 ]
  %120 = phi i32 [ %45, %40 ], [ %112, %110 ]
  %121 = phi ptr [ %41, %40 ], [ %87, %110 ]
  %122 = phi ptr [ %46, %40 ], [ %113, %110 ]
  %123 = icmp ult ptr %119, %1
  br i1 %123, label %226, label %124, !prof !8

124:                                              ; preds = %117
  store i32 %120, ptr %121, align 1
  %125 = icmp eq i32 %118, 15
  br i1 %125, label %126, label %140

126:                                              ; preds = %131, %124
  %127 = phi i32 [ %134, %131 ], [ 15, %124 ]
  %128 = phi ptr [ %129, %131 ], [ %122, %124 ]
  %129 = getelementptr i8, ptr %128, i32 1
  %130 = icmp ugt ptr %129, %24
  br i1 %130, label %226, label %131

131:                                              ; preds = %126
  %132 = load i8, ptr %128, align 1
  %133 = zext i8 %132 to i32
  %134 = add i32 %127, %133
  %135 = icmp eq i8 %132, -1
  br i1 %135, label %126, label %136

136:                                              ; preds = %131
  %137 = ptrtoint ptr %121 to i32
  %138 = xor i32 %137, -1
  %139 = icmp ugt i32 %134, %138
  br i1 %139, label %226, label %140

140:                                              ; preds = %136, %124
  %141 = phi i32 [ %134, %136 ], [ %118, %124 ]
  %142 = phi ptr [ %129, %136 ], [ %122, %124 ]
  %143 = add i32 %141, 4
  %144 = getelementptr i8, ptr %121, i32 %143
  %145 = icmp ugt ptr %144, %22
  %146 = icmp ult i32 %120, 8
  br i1 %146, label %147, label %167, !prof !11

147:                                              ; preds = %140
  %148 = load i8, ptr %119, align 1
  store i8 %148, ptr %121, align 1
  %149 = getelementptr i8, ptr %119, i32 1
  %150 = load i8, ptr %149, align 1
  %151 = getelementptr i8, ptr %121, i32 1
  store i8 %150, ptr %151, align 1
  %152 = getelementptr i8, ptr %119, i32 2
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr i8, ptr %121, i32 2
  store i8 %153, ptr %154, align 1
  %155 = getelementptr i8, ptr %119, i32 3
  %156 = load i8, ptr %155, align 1
  %157 = getelementptr i8, ptr %121, i32 3
  store i8 %156, ptr %157, align 1
  %158 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %120
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr i8, ptr %119, i32 %159
  %161 = getelementptr i8, ptr %121, i32 4
  %162 = load i32, ptr %160, align 1
  store i32 %162, ptr %161, align 1
  %163 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %120
  %164 = load i32, ptr %163, align 4
  %165 = sub i32 0, %164
  %166 = getelementptr i8, ptr %160, i32 %165
  br label %173

167:                                              ; preds = %140
  %168 = load i32, ptr %119, align 1
  %169 = getelementptr i8, ptr %119, i32 4
  %170 = load i32, ptr %169, align 1
  store i32 %168, ptr %121, align 1
  %171 = getelementptr i32, ptr %121, i32 1
  store i32 %170, ptr %171, align 1
  %172 = getelementptr i8, ptr %119, i32 8
  br label %173

173:                                              ; preds = %167, %147
  %174 = phi ptr [ %166, %147 ], [ %172, %167 ]
  %175 = getelementptr i8, ptr %121, i32 8
  br i1 %145, label %176, label %205, !prof !11

176:                                              ; preds = %173
  %177 = icmp ugt ptr %144, %26
  br i1 %177, label %226, label %178

178:                                              ; preds = %176
  %179 = icmp ult ptr %175, %25
  br i1 %179, label %180, label %194

180:                                              ; preds = %180, %178
  %181 = phi ptr [ %187, %180 ], [ %175, %178 ]
  %182 = phi ptr [ %188, %180 ], [ %174, %178 ]
  %183 = load i32, ptr %182, align 1
  %184 = getelementptr i8, ptr %182, i32 4
  %185 = load i32, ptr %184, align 1
  store i32 %183, ptr %181, align 1
  %186 = getelementptr i32, ptr %181, i32 1
  store i32 %185, ptr %186, align 1
  %187 = getelementptr i8, ptr %181, i32 8
  %188 = getelementptr i8, ptr %182, i32 8
  %189 = icmp ult ptr %187, %25
  br i1 %189, label %180, label %190

190:                                              ; preds = %180
  %191 = ptrtoint ptr %175 to i32
  %192 = sub i32 %27, %191
  %193 = getelementptr i8, ptr %174, i32 %192
  br label %194

194:                                              ; preds = %190, %178
  %195 = phi ptr [ %193, %190 ], [ %174, %178 ]
  %196 = phi ptr [ %25, %190 ], [ %175, %178 ]
  %197 = icmp ult ptr %196, %144
  br i1 %197, label %198, label %211

198:                                              ; preds = %198, %194
  %199 = phi ptr [ %203, %198 ], [ %196, %194 ]
  %200 = phi ptr [ %201, %198 ], [ %195, %194 ]
  %201 = getelementptr i8, ptr %200, i32 1
  %202 = load i8, ptr %200, align 1
  %203 = getelementptr i8, ptr %199, i32 1
  store i8 %202, ptr %199, align 1
  %204 = icmp ult ptr %203, %144
  br i1 %204, label %198, label %211

205:                                              ; preds = %173
  %206 = load i32, ptr %174, align 1
  %207 = getelementptr i8, ptr %174, i32 4
  %208 = load i32, ptr %207, align 1
  store i32 %206, ptr %175, align 1
  %209 = getelementptr i8, ptr %121, i32 12
  store i32 %208, ptr %209, align 1
  %210 = icmp ugt i32 %143, 16
  br i1 %210, label %214, label %211

211:                                              ; preds = %216, %205, %198, %194, %54
  %212 = phi ptr [ %144, %205 ], [ %144, %194 ], [ %63, %54 ], [ %144, %198 ], [ %144, %216 ]
  %213 = phi ptr [ %142, %205 ], [ %142, %194 ], [ %46, %54 ], [ %142, %198 ], [ %142, %216 ]
  br label %28

214:                                              ; preds = %205
  %215 = getelementptr i8, ptr %121, i32 16
  br label %216

216:                                              ; preds = %216, %214
  %217 = phi ptr [ %215, %214 ], [ %224, %216 ]
  %218 = phi ptr [ %174, %214 ], [ %219, %216 ]
  %219 = getelementptr i8, ptr %218, i32 8
  %220 = load i32, ptr %219, align 1
  %221 = getelementptr i8, ptr %218, i32 12
  %222 = load i32, ptr %221, align 1
  store i32 %220, ptr %217, align 1
  %223 = getelementptr i32, ptr %217, i32 1
  store i32 %222, ptr %223, align 1
  %224 = getelementptr i8, ptr %217, i32 8
  %225 = icmp ult ptr %224, %144
  br i1 %225, label %216, label %211

226:                                              ; preds = %176, %136, %126, %117, %92, %76, %64
  %227 = phi ptr [ %86, %92 ], [ %129, %126 ], [ %122, %117 ], [ %69, %76 ], [ %31, %64 ], [ %142, %176 ], [ %129, %136 ]
  %228 = ptrtoint ptr %227 to i32
  %229 = ptrtoint ptr %0 to i32
  %230 = xor i32 %228, -1
  %231 = add i32 %230, %229
  br label %232

232:                                              ; preds = %226, %96, %18, %14, %12
  %233 = phi i32 [ %231, %226 ], [ %99, %96 ], [ -1, %12 ], [ %17, %14 ], [ -1, %18 ]
  ret i32 %233
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %7 = getelementptr i8, ptr %0, i32 %2
  %8 = getelementptr i8, ptr %1, i32 %6
  %9 = getelementptr i8, ptr %7, i32 -14
  %10 = getelementptr i8, ptr %9, i32 -2
  %11 = getelementptr i8, ptr %8, i32 -14
  %12 = getelementptr i8, ptr %11, i32 -18
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %20, !prof !8

14:                                               ; preds = %5
  %15 = icmp eq i32 %2, 1
  br i1 %15, label %16, label %232

16:                                               ; preds = %14
  %17 = load i8, ptr %0, align 1
  %18 = icmp ne i8 %17, 0
  %19 = sext i1 %18 to i32
  br label %232

20:                                               ; preds = %5
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %232, label %22, !prof !8

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %7, i32 -15
  %24 = getelementptr i8, ptr %8, i32 -12
  %25 = getelementptr i8, ptr %7, i32 -8
  %26 = ptrtoint ptr %8 to i32
  %27 = getelementptr i8, ptr %7, i32 -5
  br label %28

28:                                               ; preds = %207, %22
  %29 = phi ptr [ %1, %22 ], [ %208, %207 ]
  %30 = phi ptr [ %0, %22 ], [ %209, %207 ]
  %31 = getelementptr i8, ptr %30, i32 1
  %32 = load i8, ptr %30, align 1
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %33, 4
  %35 = icmp eq i32 %34, 15
  br i1 %35, label %64, label %36

36:                                               ; preds = %28
  %37 = icmp ult ptr %31, %10
  %38 = icmp ule ptr %29, %12
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %84, !prof !9

40:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %29, ptr noundef align 1 dereferenceable(16) %31, i32 16, i1 false) #4
  %41 = getelementptr i8, ptr %29, i32 %34
  %42 = getelementptr i8, ptr %31, i32 %34
  %43 = and i32 %33, 15
  %44 = load i16, ptr %42, align 1
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %42, i32 2
  %47 = sub nsw i32 0, %45
  %48 = getelementptr i8, ptr %41, i32 %47
  %49 = icmp eq i32 %43, 15
  %50 = icmp ult i16 %44, 8
  %51 = select i1 %49, i1 true, i1 %50
  %52 = icmp ult ptr %48, %1
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %123, label %54

54:                                               ; preds = %40
  %55 = load i64, ptr %48, align 1
  store i64 %55, ptr %41, align 1
  %56 = getelementptr i8, ptr %41, i32 8
  %57 = getelementptr i8, ptr %48, i32 8
  %58 = load i64, ptr %57, align 1
  store i64 %58, ptr %56, align 1
  %59 = getelementptr i8, ptr %41, i32 16
  %60 = getelementptr i8, ptr %48, i32 16
  %61 = load i16, ptr %60, align 1
  store i16 %61, ptr %59, align 1
  %62 = add nuw nsw i32 %43, 4
  %63 = getelementptr i8, ptr %41, i32 %62
  br label %207

64:                                               ; preds = %28
  %65 = icmp ult ptr %31, %23
  br i1 %65, label %66, label %226, !prof !9

66:                                               ; preds = %66, %64
  %67 = phi i32 [ %72, %66 ], [ 15, %64 ]
  %68 = phi ptr [ %69, %66 ], [ %31, %64 ]
  %69 = getelementptr i8, ptr %68, i32 1
  %70 = load i8, ptr %68, align 1
  %71 = zext i8 %70 to i32
  %72 = add i32 %67, %71
  %73 = icmp ult ptr %69, %23
  %74 = icmp eq i8 %70, -1
  %75 = and i1 %74, %73
  br i1 %75, label %66, label %76

76:                                               ; preds = %66
  %77 = ptrtoint ptr %29 to i32
  %78 = xor i32 %77, -1
  %79 = icmp ugt i32 %72, %78
  %80 = ptrtoint ptr %69 to i32
  %81 = xor i32 %80, -1
  %82 = icmp ugt i32 %72, %81
  %83 = or i1 %79, %82
  br i1 %83, label %226, label %84, !prof !10

84:                                               ; preds = %76, %36
  %85 = phi i32 [ %34, %36 ], [ %72, %76 ]
  %86 = phi ptr [ %31, %36 ], [ %69, %76 ]
  %87 = getelementptr i8, ptr %29, i32 %85
  %88 = icmp ugt ptr %87, %24
  %89 = getelementptr i8, ptr %86, i32 %85
  %90 = icmp ugt ptr %89, %25
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %84
  %93 = icmp ugt ptr %87, %8
  %94 = ptrtoint ptr %29 to i32
  %95 = sub i32 %26, %94
  %96 = select i1 %93, i32 %95, i32 %85
  %97 = getelementptr i8, ptr %86, i32 %96
  %98 = icmp ugt ptr %97, %7
  br i1 %98, label %226, label %99

99:                                               ; preds = %92
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %29, ptr align 1 %86, i32 %96, i1 false) #4
  %100 = getelementptr i8, ptr %29, i32 %96
  %101 = icmp ugt ptr %8, %87
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = ptrtoint ptr %100 to i32
  br label %222

104:                                              ; preds = %104, %84
  %105 = phi ptr [ %111, %104 ], [ %29, %84 ]
  %106 = phi ptr [ %112, %104 ], [ %86, %84 ]
  %107 = load i32, ptr %106, align 1
  %108 = getelementptr i8, ptr %106, i32 4
  %109 = load i32, ptr %108, align 1
  store i32 %107, ptr %105, align 1
  %110 = getelementptr i32, ptr %105, i32 1
  store i32 %109, ptr %110, align 1
  %111 = getelementptr i8, ptr %105, i32 8
  %112 = getelementptr i8, ptr %106, i32 8
  %113 = icmp ult ptr %111, %87
  br i1 %113, label %104, label %114

114:                                              ; preds = %104, %99
  %115 = phi ptr [ %100, %99 ], [ %87, %104 ]
  %116 = phi ptr [ %97, %99 ], [ %89, %104 ]
  %117 = load i16, ptr %116, align 1
  %118 = zext i16 %117 to i32
  %119 = getelementptr i8, ptr %116, i32 2
  %120 = sub nsw i32 0, %118
  %121 = getelementptr i8, ptr %115, i32 %120
  %122 = and i32 %33, 15
  br label %123

123:                                              ; preds = %114, %40
  %124 = phi i32 [ %43, %40 ], [ %122, %114 ]
  %125 = phi ptr [ %48, %40 ], [ %121, %114 ]
  %126 = phi i32 [ %45, %40 ], [ %118, %114 ]
  %127 = phi ptr [ %41, %40 ], [ %115, %114 ]
  %128 = phi ptr [ %46, %40 ], [ %119, %114 ]
  %129 = icmp ult ptr %125, %1
  br i1 %129, label %226, label %130, !prof !8

130:                                              ; preds = %123
  %131 = icmp eq i32 %124, 15
  br i1 %131, label %132, label %146

132:                                              ; preds = %137, %130
  %133 = phi i32 [ %140, %137 ], [ 15, %130 ]
  %134 = phi ptr [ %135, %137 ], [ %128, %130 ]
  %135 = getelementptr i8, ptr %134, i32 1
  %136 = icmp ugt ptr %135, %27
  br i1 %136, label %226, label %137

137:                                              ; preds = %132
  %138 = load i8, ptr %134, align 1
  %139 = zext i8 %138 to i32
  %140 = add i32 %133, %139
  %141 = icmp eq i8 %138, -1
  br i1 %141, label %132, label %142

142:                                              ; preds = %137
  %143 = ptrtoint ptr %127 to i32
  %144 = xor i32 %143, -1
  %145 = icmp ugt i32 %140, %144
  br i1 %145, label %226, label %146

146:                                              ; preds = %142, %130
  %147 = phi i32 [ %140, %142 ], [ %124, %130 ]
  %148 = phi ptr [ %135, %142 ], [ %128, %130 ]
  %149 = add i32 %147, 4
  %150 = getelementptr i8, ptr %127, i32 %149
  %151 = icmp ugt ptr %150, %24
  br i1 %151, label %152, label %171

152:                                              ; preds = %146
  %153 = ptrtoint ptr %127 to i32
  %154 = sub i32 %26, %153
  %155 = tail call i32 @llvm.umin.i32(i32 %149, i32 %154) #4
  %156 = getelementptr i8, ptr %125, i32 %155
  %157 = getelementptr i8, ptr %127, i32 %155
  %158 = icmp ugt ptr %156, %127
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = icmp ult ptr %127, %157
  br i1 %160, label %161, label %169

161:                                              ; preds = %161, %159
  %162 = phi ptr [ %166, %161 ], [ %127, %159 ]
  %163 = phi ptr [ %164, %161 ], [ %125, %159 ]
  %164 = getelementptr i8, ptr %163, i32 1
  %165 = load i8, ptr %163, align 1
  %166 = getelementptr i8, ptr %162, i32 1
  store i8 %165, ptr %162, align 1
  %167 = icmp eq ptr %166, %157
  br i1 %167, label %169, label %161

168:                                              ; preds = %152
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %127, ptr align 1 %125, i32 %155, i1 false) #4
  br label %169

169:                                              ; preds = %168, %161, %159
  %170 = icmp eq ptr %157, %8
  br i1 %170, label %222, label %207

171:                                              ; preds = %146
  %172 = icmp ult i32 %126, 8
  br i1 %172, label %173, label %193, !prof !11

173:                                              ; preds = %171
  %174 = load i8, ptr %125, align 1
  store i8 %174, ptr %127, align 1
  %175 = getelementptr i8, ptr %125, i32 1
  %176 = load i8, ptr %175, align 1
  %177 = getelementptr i8, ptr %127, i32 1
  store i8 %176, ptr %177, align 1
  %178 = getelementptr i8, ptr %125, i32 2
  %179 = load i8, ptr %178, align 1
  %180 = getelementptr i8, ptr %127, i32 2
  store i8 %179, ptr %180, align 1
  %181 = getelementptr i8, ptr %125, i32 3
  %182 = load i8, ptr %181, align 1
  %183 = getelementptr i8, ptr %127, i32 3
  store i8 %182, ptr %183, align 1
  %184 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %126
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr i8, ptr %125, i32 %185
  %187 = getelementptr i8, ptr %127, i32 4
  %188 = load i32, ptr %186, align 1
  store i32 %188, ptr %187, align 1
  %189 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %126
  %190 = load i32, ptr %189, align 4
  %191 = sub i32 0, %190
  %192 = getelementptr i8, ptr %186, i32 %191
  br label %199

193:                                              ; preds = %171
  %194 = load i32, ptr %125, align 1
  %195 = getelementptr i8, ptr %125, i32 4
  %196 = load i32, ptr %195, align 1
  store i32 %194, ptr %127, align 1
  %197 = getelementptr i32, ptr %127, i32 1
  store i32 %196, ptr %197, align 1
  %198 = getelementptr i8, ptr %125, i32 8
  br label %199

199:                                              ; preds = %193, %173
  %200 = phi ptr [ %192, %173 ], [ %198, %193 ]
  %201 = getelementptr i8, ptr %127, i32 8
  %202 = load i32, ptr %200, align 1
  %203 = getelementptr i8, ptr %200, i32 4
  %204 = load i32, ptr %203, align 1
  store i32 %202, ptr %201, align 1
  %205 = getelementptr i8, ptr %127, i32 12
  store i32 %204, ptr %205, align 1
  %206 = icmp ugt i32 %149, 16
  br i1 %206, label %210, label %207

207:                                              ; preds = %212, %199, %169, %54
  %208 = phi ptr [ %150, %199 ], [ %157, %169 ], [ %63, %54 ], [ %150, %212 ]
  %209 = phi ptr [ %148, %199 ], [ %148, %169 ], [ %46, %54 ], [ %148, %212 ]
  br label %28

210:                                              ; preds = %199
  %211 = getelementptr i8, ptr %127, i32 16
  br label %212

212:                                              ; preds = %212, %210
  %213 = phi ptr [ %211, %210 ], [ %220, %212 ]
  %214 = phi ptr [ %200, %210 ], [ %215, %212 ]
  %215 = getelementptr i8, ptr %214, i32 8
  %216 = load i32, ptr %215, align 1
  %217 = getelementptr i8, ptr %214, i32 12
  %218 = load i32, ptr %217, align 1
  store i32 %216, ptr %213, align 1
  %219 = getelementptr i32, ptr %213, i32 1
  store i32 %218, ptr %219, align 1
  %220 = getelementptr i8, ptr %213, i32 8
  %221 = icmp ult ptr %220, %150
  br i1 %221, label %212, label %207

222:                                              ; preds = %169, %102
  %223 = phi i32 [ %103, %102 ], [ %26, %169 ]
  %224 = ptrtoint ptr %1 to i32
  %225 = sub i32 %223, %224
  br label %232

226:                                              ; preds = %142, %132, %123, %92, %76, %64
  %227 = phi ptr [ %135, %132 ], [ %128, %123 ], [ %86, %92 ], [ %69, %76 ], [ %31, %64 ], [ %135, %142 ]
  %228 = ptrtoint ptr %227 to i32
  %229 = ptrtoint ptr %0 to i32
  %230 = xor i32 %228, -1
  %231 = add i32 %230, %229
  br label %232

232:                                              ; preds = %226, %222, %20, %16, %14
  %233 = phi i32 [ %231, %226 ], [ %225, %222 ], [ -1, %14 ], [ %19, %16 ], [ -1, %20 ]
  ret i32 %233
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 %2
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = getelementptr i8, ptr %5, i32 -18
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %12, !prof !8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1, i32 -1
  br label %197

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %4, i32 -12
  %14 = getelementptr i8, ptr %4, i32 -7
  %15 = getelementptr i8, ptr %4, i32 -5
  %16 = ptrtoint ptr %14 to i32
  br label %17

17:                                               ; preds = %176, %12
  %18 = phi ptr [ %1, %12 ], [ %177, %176 ]
  %19 = phi ptr [ %0, %12 ], [ %178, %176 ]
  %20 = getelementptr i8, ptr %19, i32 1
  %21 = load i8, ptr %19, align 1
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, 4
  %24 = icmp ult i8 %21, -112
  %25 = icmp ule ptr %18, %6
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %50, !prof !12

27:                                               ; preds = %17
  %28 = load i64, ptr %20, align 1
  store i64 %28, ptr %18, align 1
  %29 = getelementptr i8, ptr %18, i32 %23
  %30 = getelementptr i8, ptr %20, i32 %23
  %31 = and i32 %22, 15
  %32 = load i16, ptr %30, align 1
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 2
  %35 = sub nsw i32 0, %33
  %36 = getelementptr i8, ptr %29, i32 %35
  %37 = icmp eq i32 %31, 15
  %38 = icmp ult i16 %32, 8
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %90, label %40

40:                                               ; preds = %27
  %41 = load i64, ptr %36, align 1
  store i64 %41, ptr %29, align 1
  %42 = getelementptr i8, ptr %29, i32 8
  %43 = getelementptr i8, ptr %36, i32 8
  %44 = load i64, ptr %43, align 1
  store i64 %44, ptr %42, align 1
  %45 = getelementptr i8, ptr %29, i32 16
  %46 = getelementptr i8, ptr %36, i32 16
  %47 = load i16, ptr %46, align 1
  store i16 %47, ptr %45, align 1
  %48 = add nuw nsw i32 %31, 4
  %49 = getelementptr i8, ptr %29, i32 %48
  br label %176

50:                                               ; preds = %17
  %51 = icmp eq i32 %23, 15
  br i1 %51, label %52, label %60

52:                                               ; preds = %52, %50
  %53 = phi i32 [ %58, %52 ], [ 15, %50 ]
  %54 = phi ptr [ %55, %52 ], [ %20, %50 ]
  %55 = getelementptr i8, ptr %54, i32 1
  %56 = load i8, ptr %54, align 1
  %57 = zext i8 %56 to i32
  %58 = add i32 %53, %57
  %59 = icmp eq i8 %56, -1
  br i1 %59, label %52, label %60

60:                                               ; preds = %52, %50
  %61 = phi i32 [ %23, %50 ], [ %58, %52 ]
  %62 = phi ptr [ %20, %50 ], [ %55, %52 ]
  %63 = getelementptr i8, ptr %18, i32 %61
  %64 = icmp ugt ptr %63, %5
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = icmp eq ptr %63, %4
  br i1 %66, label %67, label %191

67:                                               ; preds = %65
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %18, ptr align 1 %62, i32 %61, i1 false) #4
  %68 = getelementptr i8, ptr %62, i32 %61
  %69 = ptrtoint ptr %68 to i32
  %70 = ptrtoint ptr %0 to i32
  %71 = sub i32 %69, %70
  br label %197

72:                                               ; preds = %72, %60
  %73 = phi ptr [ %79, %72 ], [ %18, %60 ]
  %74 = phi ptr [ %80, %72 ], [ %62, %60 ]
  %75 = load i32, ptr %74, align 1
  %76 = getelementptr i8, ptr %74, i32 4
  %77 = load i32, ptr %76, align 1
  store i32 %75, ptr %73, align 1
  %78 = getelementptr i32, ptr %73, i32 1
  store i32 %77, ptr %78, align 1
  %79 = getelementptr i8, ptr %73, i32 8
  %80 = getelementptr i8, ptr %74, i32 8
  %81 = icmp ult ptr %79, %63
  br i1 %81, label %72, label %82

82:                                               ; preds = %72
  %83 = getelementptr i8, ptr %62, i32 %61
  %84 = load i16, ptr %83, align 1
  %85 = zext i16 %84 to i32
  %86 = getelementptr i8, ptr %83, i32 2
  %87 = sub nsw i32 0, %85
  %88 = getelementptr i8, ptr %63, i32 %87
  %89 = and i32 %22, 15
  br label %90

90:                                               ; preds = %82, %27
  %91 = phi i32 [ %31, %27 ], [ %89, %82 ]
  %92 = phi ptr [ %36, %27 ], [ %88, %82 ]
  %93 = phi i32 [ %33, %27 ], [ %85, %82 ]
  %94 = phi ptr [ %29, %27 ], [ %63, %82 ]
  %95 = phi ptr [ %34, %27 ], [ %86, %82 ]
  store i32 %93, ptr %94, align 1
  %96 = icmp eq i32 %91, 15
  br i1 %96, label %97, label %105

97:                                               ; preds = %97, %90
  %98 = phi i32 [ %103, %97 ], [ 15, %90 ]
  %99 = phi ptr [ %100, %97 ], [ %95, %90 ]
  %100 = getelementptr i8, ptr %99, i32 1
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i32
  %103 = add i32 %98, %102
  %104 = icmp eq i8 %101, -1
  br i1 %104, label %97, label %105

105:                                              ; preds = %97, %90
  %106 = phi i32 [ %91, %90 ], [ %103, %97 ]
  %107 = phi ptr [ %95, %90 ], [ %100, %97 ]
  %108 = add i32 %106, 4
  %109 = getelementptr i8, ptr %94, i32 %108
  %110 = icmp ugt ptr %109, %13
  %111 = icmp ult i32 %93, 8
  br i1 %111, label %112, label %132, !prof !11

112:                                              ; preds = %105
  %113 = load i8, ptr %92, align 1
  store i8 %113, ptr %94, align 1
  %114 = getelementptr i8, ptr %92, i32 1
  %115 = load i8, ptr %114, align 1
  %116 = getelementptr i8, ptr %94, i32 1
  store i8 %115, ptr %116, align 1
  %117 = getelementptr i8, ptr %92, i32 2
  %118 = load i8, ptr %117, align 1
  %119 = getelementptr i8, ptr %94, i32 2
  store i8 %118, ptr %119, align 1
  %120 = getelementptr i8, ptr %92, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = getelementptr i8, ptr %94, i32 3
  store i8 %121, ptr %122, align 1
  %123 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %93
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr i8, ptr %92, i32 %124
  %126 = getelementptr i8, ptr %94, i32 4
  %127 = load i32, ptr %125, align 1
  store i32 %127, ptr %126, align 1
  %128 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %93
  %129 = load i32, ptr %128, align 4
  %130 = sub i32 0, %129
  %131 = getelementptr i8, ptr %125, i32 %130
  br label %138

132:                                              ; preds = %105
  %133 = load i32, ptr %92, align 1
  %134 = getelementptr i8, ptr %92, i32 4
  %135 = load i32, ptr %134, align 1
  store i32 %133, ptr %94, align 1
  %136 = getelementptr i32, ptr %94, i32 1
  store i32 %135, ptr %136, align 1
  %137 = getelementptr i8, ptr %92, i32 8
  br label %138

138:                                              ; preds = %132, %112
  %139 = phi ptr [ %131, %112 ], [ %137, %132 ]
  %140 = getelementptr i8, ptr %94, i32 8
  br i1 %110, label %141, label %170, !prof !11

141:                                              ; preds = %138
  %142 = icmp ugt ptr %109, %15
  br i1 %142, label %191, label %143

143:                                              ; preds = %141
  %144 = icmp ult ptr %140, %14
  br i1 %144, label %145, label %159

145:                                              ; preds = %145, %143
  %146 = phi ptr [ %152, %145 ], [ %140, %143 ]
  %147 = phi ptr [ %153, %145 ], [ %139, %143 ]
  %148 = load i32, ptr %147, align 1
  %149 = getelementptr i8, ptr %147, i32 4
  %150 = load i32, ptr %149, align 1
  store i32 %148, ptr %146, align 1
  %151 = getelementptr i32, ptr %146, i32 1
  store i32 %150, ptr %151, align 1
  %152 = getelementptr i8, ptr %146, i32 8
  %153 = getelementptr i8, ptr %147, i32 8
  %154 = icmp ult ptr %152, %14
  br i1 %154, label %145, label %155

155:                                              ; preds = %145
  %156 = ptrtoint ptr %140 to i32
  %157 = sub i32 %16, %156
  %158 = getelementptr i8, ptr %139, i32 %157
  br label %159

159:                                              ; preds = %155, %143
  %160 = phi ptr [ %158, %155 ], [ %139, %143 ]
  %161 = phi ptr [ %14, %155 ], [ %140, %143 ]
  %162 = icmp ult ptr %161, %109
  br i1 %162, label %163, label %176

163:                                              ; preds = %163, %159
  %164 = phi ptr [ %168, %163 ], [ %161, %159 ]
  %165 = phi ptr [ %166, %163 ], [ %160, %159 ]
  %166 = getelementptr i8, ptr %165, i32 1
  %167 = load i8, ptr %165, align 1
  %168 = getelementptr i8, ptr %164, i32 1
  store i8 %167, ptr %164, align 1
  %169 = icmp ult ptr %168, %109
  br i1 %169, label %163, label %176

170:                                              ; preds = %138
  %171 = load i32, ptr %139, align 1
  %172 = getelementptr i8, ptr %139, i32 4
  %173 = load i32, ptr %172, align 1
  store i32 %171, ptr %140, align 1
  %174 = getelementptr i8, ptr %94, i32 12
  store i32 %173, ptr %174, align 1
  %175 = icmp ugt i32 %108, 16
  br i1 %175, label %179, label %176

176:                                              ; preds = %181, %170, %163, %159, %40
  %177 = phi ptr [ %109, %170 ], [ %109, %159 ], [ %49, %40 ], [ %109, %163 ], [ %109, %181 ]
  %178 = phi ptr [ %107, %170 ], [ %107, %159 ], [ %34, %40 ], [ %107, %163 ], [ %107, %181 ]
  br label %17

179:                                              ; preds = %170
  %180 = getelementptr i8, ptr %94, i32 16
  br label %181

181:                                              ; preds = %181, %179
  %182 = phi ptr [ %180, %179 ], [ %189, %181 ]
  %183 = phi ptr [ %139, %179 ], [ %184, %181 ]
  %184 = getelementptr i8, ptr %183, i32 8
  %185 = load i32, ptr %184, align 1
  %186 = getelementptr i8, ptr %183, i32 12
  %187 = load i32, ptr %186, align 1
  store i32 %185, ptr %182, align 1
  %188 = getelementptr i32, ptr %182, i32 1
  store i32 %187, ptr %188, align 1
  %189 = getelementptr i8, ptr %182, i32 8
  %190 = icmp ult ptr %189, %109
  br i1 %190, label %181, label %176

191:                                              ; preds = %141, %65
  %192 = phi ptr [ %62, %65 ], [ %107, %141 ]
  %193 = ptrtoint ptr %192 to i32
  %194 = ptrtoint ptr %0 to i32
  %195 = xor i32 %193, -1
  %196 = add i32 %195, %194
  br label %197

197:                                              ; preds = %191, %67, %8
  %198 = phi i32 [ %196, %191 ], [ %71, %67 ], [ %11, %8 ]
  ret i32 %198
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr i8, ptr %0, i32 %2
  %8 = getelementptr i8, ptr %1, i32 %3
  %9 = getelementptr i8, ptr %4, i32 %5
  %10 = icmp ult i32 %5, 65536
  %11 = getelementptr i8, ptr %7, i32 -14
  %12 = getelementptr i8, ptr %11, i32 -2
  %13 = getelementptr i8, ptr %8, i32 -14
  %14 = getelementptr i8, ptr %13, i32 -18
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %16, label %22, !prof !8

16:                                               ; preds = %6
  %17 = icmp eq i32 %2, 1
  br i1 %17, label %18, label %267

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1
  %20 = icmp ne i8 %19, 0
  %21 = sext i1 %20 to i32
  br label %267

22:                                               ; preds = %6
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %267, label %24, !prof !8

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %7, i32 -15
  %26 = getelementptr i8, ptr %8, i32 -12
  %27 = getelementptr i8, ptr %7, i32 -8
  %28 = getelementptr i8, ptr %7, i32 -5
  %29 = getelementptr i8, ptr %8, i32 -7
  %30 = getelementptr i8, ptr %8, i32 -5
  %31 = ptrtoint ptr %29 to i32
  %32 = ptrtoint ptr %1 to i32
  br label %33

33:                                               ; preds = %246, %24
  %34 = phi ptr [ %1, %24 ], [ %247, %246 ]
  %35 = phi ptr [ %0, %24 ], [ %248, %246 ]
  %36 = getelementptr i8, ptr %35, i32 1
  %37 = load i8, ptr %35, align 1
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %38, 4
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %69, label %41

41:                                               ; preds = %33
  %42 = icmp ult ptr %36, %12
  %43 = icmp ule ptr %34, %14
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %89, !prof !9

45:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %34, ptr noundef align 1 dereferenceable(16) %36, i32 16, i1 false) #4
  %46 = getelementptr i8, ptr %34, i32 %39
  %47 = getelementptr i8, ptr %36, i32 %39
  %48 = and i32 %38, 15
  %49 = load i16, ptr %47, align 1
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %47, i32 2
  %52 = sub nsw i32 0, %50
  %53 = getelementptr i8, ptr %46, i32 %52
  %54 = icmp eq i32 %48, 15
  %55 = icmp ult i16 %49, 8
  %56 = select i1 %54, i1 true, i1 %55
  %57 = icmp ult ptr %53, %1
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %121, label %59

59:                                               ; preds = %45
  %60 = load i64, ptr %53, align 1
  store i64 %60, ptr %46, align 1
  %61 = getelementptr i8, ptr %46, i32 8
  %62 = getelementptr i8, ptr %53, i32 8
  %63 = load i64, ptr %62, align 1
  store i64 %63, ptr %61, align 1
  %64 = getelementptr i8, ptr %46, i32 16
  %65 = getelementptr i8, ptr %53, i32 16
  %66 = load i16, ptr %65, align 1
  store i16 %66, ptr %64, align 1
  %67 = add nuw nsw i32 %48, 4
  %68 = getelementptr i8, ptr %46, i32 %67
  br label %246

69:                                               ; preds = %33
  %70 = icmp ult ptr %36, %25
  br i1 %70, label %71, label %261, !prof !9

71:                                               ; preds = %71, %69
  %72 = phi i32 [ %77, %71 ], [ 15, %69 ]
  %73 = phi ptr [ %74, %71 ], [ %36, %69 ]
  %74 = getelementptr i8, ptr %73, i32 1
  %75 = load i8, ptr %73, align 1
  %76 = zext i8 %75 to i32
  %77 = add i32 %72, %76
  %78 = icmp ult ptr %74, %25
  %79 = icmp eq i8 %75, -1
  %80 = and i1 %79, %78
  br i1 %80, label %71, label %81

81:                                               ; preds = %71
  %82 = ptrtoint ptr %34 to i32
  %83 = xor i32 %82, -1
  %84 = icmp ugt i32 %77, %83
  %85 = ptrtoint ptr %74 to i32
  %86 = xor i32 %85, -1
  %87 = icmp ugt i32 %77, %86
  %88 = or i1 %84, %87
  br i1 %88, label %261, label %89, !prof !10

89:                                               ; preds = %81, %41
  %90 = phi i32 [ %39, %41 ], [ %77, %81 ]
  %91 = phi ptr [ %36, %41 ], [ %74, %81 ]
  %92 = getelementptr i8, ptr %34, i32 %90
  %93 = icmp ugt ptr %92, %26
  %94 = getelementptr i8, ptr %91, i32 %90
  %95 = icmp ugt ptr %94, %27
  %96 = or i1 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = icmp ne ptr %94, %7
  %99 = icmp ugt ptr %92, %8
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %261, label %101

101:                                              ; preds = %97
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %34, ptr align 1 %91, i32 %90, i1 false) #4
  %102 = ptrtoint ptr %92 to i32
  %103 = sub i32 %102, %32
  br label %267

104:                                              ; preds = %104, %89
  %105 = phi ptr [ %111, %104 ], [ %34, %89 ]
  %106 = phi ptr [ %112, %104 ], [ %91, %89 ]
  %107 = load i32, ptr %106, align 1
  %108 = getelementptr i8, ptr %106, i32 4
  %109 = load i32, ptr %108, align 1
  store i32 %107, ptr %105, align 1
  %110 = getelementptr i32, ptr %105, i32 1
  store i32 %109, ptr %110, align 1
  %111 = getelementptr i8, ptr %105, i32 8
  %112 = getelementptr i8, ptr %106, i32 8
  %113 = icmp ult ptr %111, %92
  br i1 %113, label %104, label %114

114:                                              ; preds = %104
  %115 = load i16, ptr %94, align 1
  %116 = zext i16 %115 to i32
  %117 = getelementptr i8, ptr %94, i32 2
  %118 = sub nsw i32 0, %116
  %119 = getelementptr i8, ptr %92, i32 %118
  %120 = and i32 %38, 15
  br label %121

121:                                              ; preds = %114, %45
  %122 = phi i32 [ %48, %45 ], [ %120, %114 ]
  %123 = phi ptr [ %53, %45 ], [ %119, %114 ]
  %124 = phi i32 [ %50, %45 ], [ %116, %114 ]
  %125 = phi ptr [ %46, %45 ], [ %92, %114 ]
  %126 = phi ptr [ %51, %45 ], [ %117, %114 ]
  %127 = getelementptr i8, ptr %123, i32 %5
  %128 = icmp ult ptr %127, %1
  %129 = select i1 %10, i1 %128, i1 false
  br i1 %129, label %261, label %130, !prof !8

130:                                              ; preds = %121
  store i32 %124, ptr %125, align 1
  %131 = icmp eq i32 %122, 15
  br i1 %131, label %132, label %146

132:                                              ; preds = %137, %130
  %133 = phi i32 [ %140, %137 ], [ 15, %130 ]
  %134 = phi ptr [ %135, %137 ], [ %126, %130 ]
  %135 = getelementptr i8, ptr %134, i32 1
  %136 = icmp ugt ptr %135, %28
  br i1 %136, label %261, label %137

137:                                              ; preds = %132
  %138 = load i8, ptr %134, align 1
  %139 = zext i8 %138 to i32
  %140 = add i32 %133, %139
  %141 = icmp eq i8 %138, -1
  br i1 %141, label %132, label %142

142:                                              ; preds = %137
  %143 = ptrtoint ptr %125 to i32
  %144 = xor i32 %143, -1
  %145 = icmp ugt i32 %140, %144
  br i1 %145, label %261, label %146

146:                                              ; preds = %142, %130
  %147 = phi i32 [ %140, %142 ], [ %122, %130 ]
  %148 = phi ptr [ %135, %142 ], [ %126, %130 ]
  %149 = add i32 %147, 4
  %150 = icmp ult ptr %123, %1
  %151 = getelementptr i8, ptr %125, i32 %149
  br i1 %150, label %152, label %179

152:                                              ; preds = %146
  %153 = icmp ugt ptr %151, %30
  br i1 %153, label %261, label %154, !prof !11

154:                                              ; preds = %152
  %155 = ptrtoint ptr %123 to i32
  %156 = sub i32 %32, %155
  %157 = icmp ugt i32 %149, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = sub i32 0, %156
  %160 = getelementptr i8, ptr %9, i32 %159
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %125, ptr align 1 %160, i32 %149, i1 false) #4
  br label %246

161:                                              ; preds = %154
  %162 = sub i32 %149, %156
  %163 = sub i32 0, %156
  %164 = getelementptr i8, ptr %9, i32 %163
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %125, ptr align 1 %164, i32 %156, i1 false) #4
  %165 = getelementptr i8, ptr %125, i32 %156
  %166 = ptrtoint ptr %165 to i32
  %167 = sub i32 %166, %32
  %168 = icmp ugt i32 %162, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %161
  %170 = icmp ult ptr %165, %151
  br i1 %170, label %171, label %246

171:                                              ; preds = %171, %169
  %172 = phi ptr [ %176, %171 ], [ %165, %169 ]
  %173 = phi ptr [ %174, %171 ], [ %1, %169 ]
  %174 = getelementptr i8, ptr %173, i32 1
  %175 = load i8, ptr %173, align 1
  %176 = getelementptr i8, ptr %172, i32 1
  store i8 %175, ptr %172, align 1
  %177 = icmp eq ptr %176, %151
  br i1 %177, label %246, label %171

178:                                              ; preds = %161
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %165, ptr nonnull align 1 %1, i32 %162, i1 false) #4
  br label %246

179:                                              ; preds = %146
  %180 = icmp ugt ptr %151, %26
  %181 = icmp ult i32 %124, 8
  br i1 %181, label %182, label %202, !prof !11

182:                                              ; preds = %179
  %183 = load i8, ptr %123, align 1
  store i8 %183, ptr %125, align 1
  %184 = getelementptr i8, ptr %123, i32 1
  %185 = load i8, ptr %184, align 1
  %186 = getelementptr i8, ptr %125, i32 1
  store i8 %185, ptr %186, align 1
  %187 = getelementptr i8, ptr %123, i32 2
  %188 = load i8, ptr %187, align 1
  %189 = getelementptr i8, ptr %125, i32 2
  store i8 %188, ptr %189, align 1
  %190 = getelementptr i8, ptr %123, i32 3
  %191 = load i8, ptr %190, align 1
  %192 = getelementptr i8, ptr %125, i32 3
  store i8 %191, ptr %192, align 1
  %193 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %124
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr i8, ptr %123, i32 %194
  %196 = getelementptr i8, ptr %125, i32 4
  %197 = load i32, ptr %195, align 1
  store i32 %197, ptr %196, align 1
  %198 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %124
  %199 = load i32, ptr %198, align 4
  %200 = sub i32 0, %199
  %201 = getelementptr i8, ptr %195, i32 %200
  br label %208

202:                                              ; preds = %179
  %203 = load i32, ptr %123, align 1
  %204 = getelementptr i8, ptr %123, i32 4
  %205 = load i32, ptr %204, align 1
  store i32 %203, ptr %125, align 1
  %206 = getelementptr i32, ptr %125, i32 1
  store i32 %205, ptr %206, align 1
  %207 = getelementptr i8, ptr %123, i32 8
  br label %208

208:                                              ; preds = %202, %182
  %209 = phi ptr [ %201, %182 ], [ %207, %202 ]
  %210 = getelementptr i8, ptr %125, i32 8
  br i1 %180, label %211, label %240, !prof !11

211:                                              ; preds = %208
  %212 = icmp ugt ptr %151, %30
  br i1 %212, label %261, label %213

213:                                              ; preds = %211
  %214 = icmp ult ptr %210, %29
  br i1 %214, label %215, label %229

215:                                              ; preds = %215, %213
  %216 = phi ptr [ %222, %215 ], [ %210, %213 ]
  %217 = phi ptr [ %223, %215 ], [ %209, %213 ]
  %218 = load i32, ptr %217, align 1
  %219 = getelementptr i8, ptr %217, i32 4
  %220 = load i32, ptr %219, align 1
  store i32 %218, ptr %216, align 1
  %221 = getelementptr i32, ptr %216, i32 1
  store i32 %220, ptr %221, align 1
  %222 = getelementptr i8, ptr %216, i32 8
  %223 = getelementptr i8, ptr %217, i32 8
  %224 = icmp ult ptr %222, %29
  br i1 %224, label %215, label %225

225:                                              ; preds = %215
  %226 = ptrtoint ptr %210 to i32
  %227 = sub i32 %31, %226
  %228 = getelementptr i8, ptr %209, i32 %227
  br label %229

229:                                              ; preds = %225, %213
  %230 = phi ptr [ %228, %225 ], [ %209, %213 ]
  %231 = phi ptr [ %29, %225 ], [ %210, %213 ]
  %232 = icmp ult ptr %231, %151
  br i1 %232, label %233, label %246

233:                                              ; preds = %233, %229
  %234 = phi ptr [ %238, %233 ], [ %231, %229 ]
  %235 = phi ptr [ %236, %233 ], [ %230, %229 ]
  %236 = getelementptr i8, ptr %235, i32 1
  %237 = load i8, ptr %235, align 1
  %238 = getelementptr i8, ptr %234, i32 1
  store i8 %237, ptr %234, align 1
  %239 = icmp ult ptr %238, %151
  br i1 %239, label %233, label %246

240:                                              ; preds = %208
  %241 = load i32, ptr %209, align 1
  %242 = getelementptr i8, ptr %209, i32 4
  %243 = load i32, ptr %242, align 1
  store i32 %241, ptr %210, align 1
  %244 = getelementptr i8, ptr %125, i32 12
  store i32 %243, ptr %244, align 1
  %245 = icmp ugt i32 %149, 16
  br i1 %245, label %249, label %246

246:                                              ; preds = %251, %240, %233, %229, %178, %171, %169, %158, %59
  %247 = phi ptr [ %151, %240 ], [ %151, %229 ], [ %165, %169 ], [ %151, %158 ], [ %151, %178 ], [ %68, %59 ], [ %151, %171 ], [ %151, %233 ], [ %151, %251 ]
  %248 = phi ptr [ %148, %240 ], [ %148, %229 ], [ %148, %169 ], [ %148, %158 ], [ %148, %178 ], [ %51, %59 ], [ %148, %171 ], [ %148, %233 ], [ %148, %251 ]
  br label %33

249:                                              ; preds = %240
  %250 = getelementptr i8, ptr %125, i32 16
  br label %251

251:                                              ; preds = %251, %249
  %252 = phi ptr [ %250, %249 ], [ %259, %251 ]
  %253 = phi ptr [ %209, %249 ], [ %254, %251 ]
  %254 = getelementptr i8, ptr %253, i32 8
  %255 = load i32, ptr %254, align 1
  %256 = getelementptr i8, ptr %253, i32 12
  %257 = load i32, ptr %256, align 1
  store i32 %255, ptr %252, align 1
  %258 = getelementptr i32, ptr %252, i32 1
  store i32 %257, ptr %258, align 1
  %259 = getelementptr i8, ptr %252, i32 8
  %260 = icmp ult ptr %259, %151
  br i1 %260, label %251, label %246

261:                                              ; preds = %211, %152, %142, %132, %121, %97, %81, %69
  %262 = phi ptr [ %91, %97 ], [ %135, %132 ], [ %148, %152 ], [ %126, %121 ], [ %74, %81 ], [ %36, %69 ], [ %148, %211 ], [ %135, %142 ]
  %263 = ptrtoint ptr %262 to i32
  %264 = ptrtoint ptr %0 to i32
  %265 = xor i32 %263, -1
  %266 = add i32 %265, %264
  br label %267

267:                                              ; preds = %261, %101, %22, %18, %16
  %268 = phi i32 [ %266, %261 ], [ %103, %101 ], [ -1, %16 ], [ %21, %18 ], [ -1, %22 ]
  ret i32 %268
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @LZ4_setStreamDecode(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 3
  store i32 %2, ptr %4, align 4
  %5 = getelementptr i8, ptr %1, i32 %2
  %6 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  store ptr null, ptr %0, align 4
  %7 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 1
  store i32 0, ptr %7, align 4
  ret i32 1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_continue(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = tail call i32 @LZ4_decompress_safe(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %310, label %12

12:                                               ; preds = %9
  store i32 %10, ptr %6, align 4
  %13 = getelementptr i8, ptr %2, i32 %10
  %14 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  br label %310

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %302

19:                                               ; preds = %15
  %20 = icmp ugt i32 %7, 65534
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call fastcc i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %294

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %7)
  br label %294

29:                                               ; preds = %23
  %30 = load ptr, ptr %0, align 4
  %31 = sub nsw i32 0, %7
  %32 = getelementptr i8, ptr %2, i32 %31
  %33 = getelementptr i8, ptr %1, i32 %3
  %34 = getelementptr i8, ptr %2, i32 %4
  %35 = getelementptr i8, ptr %30, i32 %25
  %36 = icmp ult i32 %25, 65536
  %37 = getelementptr i8, ptr %33, i32 -14
  %38 = getelementptr i8, ptr %37, i32 -2
  %39 = getelementptr i8, ptr %34, i32 -14
  %40 = getelementptr i8, ptr %39, i32 -18
  %41 = icmp eq i32 %4, 0
  br i1 %41, label %42, label %48, !prof !8

42:                                               ; preds = %29
  %43 = icmp eq i32 %3, 1
  br i1 %43, label %44, label %310

44:                                               ; preds = %42
  %45 = load i8, ptr %1, align 1
  %46 = icmp ne i8 %45, 0
  %47 = sext i1 %46 to i32
  br label %310

48:                                               ; preds = %29
  %49 = icmp eq i32 %3, 0
  br i1 %49, label %310, label %50, !prof !8

50:                                               ; preds = %48
  %51 = getelementptr i8, ptr %33, i32 -15
  %52 = getelementptr i8, ptr %34, i32 -12
  %53 = getelementptr i8, ptr %33, i32 -8
  %54 = getelementptr i8, ptr %33, i32 -5
  %55 = getelementptr i8, ptr %34, i32 -7
  %56 = getelementptr i8, ptr %34, i32 -5
  %57 = ptrtoint ptr %55 to i32
  %58 = ptrtoint ptr %32 to i32
  br label %59

59:                                               ; preds = %273, %50
  %60 = phi ptr [ %2, %50 ], [ %274, %273 ]
  %61 = phi ptr [ %1, %50 ], [ %275, %273 ]
  %62 = getelementptr i8, ptr %61, i32 1
  %63 = load i8, ptr %61, align 1
  %64 = zext i8 %63 to i32
  %65 = lshr i32 %64, 4
  %66 = icmp eq i32 %65, 15
  br i1 %66, label %95, label %67

67:                                               ; preds = %59
  %68 = icmp ult ptr %62, %38
  %69 = icmp ule ptr %60, %40
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %115, !prof !9

71:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %60, ptr noundef align 1 dereferenceable(16) %62, i32 16, i1 false) #4
  %72 = getelementptr i8, ptr %60, i32 %65
  %73 = getelementptr i8, ptr %62, i32 %65
  %74 = and i32 %64, 15
  %75 = load i16, ptr %73, align 1
  %76 = zext i16 %75 to i32
  %77 = getelementptr i8, ptr %73, i32 2
  %78 = sub nsw i32 0, %76
  %79 = getelementptr i8, ptr %72, i32 %78
  %80 = icmp eq i32 %74, 15
  %81 = icmp ult i16 %75, 8
  %82 = select i1 %80, i1 true, i1 %81
  %83 = icmp ult ptr %79, %32
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %148, label %85

85:                                               ; preds = %71
  %86 = load i64, ptr %79, align 1
  store i64 %86, ptr %72, align 1
  %87 = getelementptr i8, ptr %72, i32 8
  %88 = getelementptr i8, ptr %79, i32 8
  %89 = load i64, ptr %88, align 1
  store i64 %89, ptr %87, align 1
  %90 = getelementptr i8, ptr %72, i32 16
  %91 = getelementptr i8, ptr %79, i32 16
  %92 = load i16, ptr %91, align 1
  store i16 %92, ptr %90, align 1
  %93 = add nuw nsw i32 %74, 4
  %94 = getelementptr i8, ptr %72, i32 %93
  br label %273

95:                                               ; preds = %59
  %96 = icmp ult ptr %62, %51
  br i1 %96, label %97, label %288, !prof !9

97:                                               ; preds = %97, %95
  %98 = phi i32 [ %103, %97 ], [ 15, %95 ]
  %99 = phi ptr [ %100, %97 ], [ %62, %95 ]
  %100 = getelementptr i8, ptr %99, i32 1
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i32
  %103 = add i32 %98, %102
  %104 = icmp ult ptr %100, %51
  %105 = icmp eq i8 %101, -1
  %106 = and i1 %105, %104
  br i1 %106, label %97, label %107

107:                                              ; preds = %97
  %108 = ptrtoint ptr %60 to i32
  %109 = xor i32 %108, -1
  %110 = icmp ugt i32 %103, %109
  %111 = ptrtoint ptr %100 to i32
  %112 = xor i32 %111, -1
  %113 = icmp ugt i32 %103, %112
  %114 = or i1 %110, %113
  br i1 %114, label %288, label %115, !prof !10

115:                                              ; preds = %107, %67
  %116 = phi i32 [ %65, %67 ], [ %103, %107 ]
  %117 = phi ptr [ %62, %67 ], [ %100, %107 ]
  %118 = getelementptr i8, ptr %60, i32 %116
  %119 = icmp ugt ptr %118, %52
  %120 = getelementptr i8, ptr %117, i32 %116
  %121 = icmp ugt ptr %120, %53
  %122 = or i1 %119, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = icmp ne ptr %120, %33
  %125 = icmp ugt ptr %118, %34
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %288, label %127

127:                                              ; preds = %123
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %60, ptr align 1 %117, i32 %116, i1 false) #4
  %128 = ptrtoint ptr %118 to i32
  %129 = ptrtoint ptr %2 to i32
  %130 = sub i32 %128, %129
  br label %294

131:                                              ; preds = %131, %115
  %132 = phi ptr [ %138, %131 ], [ %60, %115 ]
  %133 = phi ptr [ %139, %131 ], [ %117, %115 ]
  %134 = load i32, ptr %133, align 1
  %135 = getelementptr i8, ptr %133, i32 4
  %136 = load i32, ptr %135, align 1
  store i32 %134, ptr %132, align 1
  %137 = getelementptr i32, ptr %132, i32 1
  store i32 %136, ptr %137, align 1
  %138 = getelementptr i8, ptr %132, i32 8
  %139 = getelementptr i8, ptr %133, i32 8
  %140 = icmp ult ptr %138, %118
  br i1 %140, label %131, label %141

141:                                              ; preds = %131
  %142 = load i16, ptr %120, align 1
  %143 = zext i16 %142 to i32
  %144 = getelementptr i8, ptr %120, i32 2
  %145 = sub nsw i32 0, %143
  %146 = getelementptr i8, ptr %118, i32 %145
  %147 = and i32 %64, 15
  br label %148

148:                                              ; preds = %141, %71
  %149 = phi i32 [ %74, %71 ], [ %147, %141 ]
  %150 = phi ptr [ %79, %71 ], [ %146, %141 ]
  %151 = phi i32 [ %76, %71 ], [ %143, %141 ]
  %152 = phi ptr [ %72, %71 ], [ %118, %141 ]
  %153 = phi ptr [ %77, %71 ], [ %144, %141 ]
  %154 = getelementptr i8, ptr %150, i32 %25
  %155 = icmp ult ptr %154, %32
  %156 = select i1 %36, i1 %155, i1 false
  br i1 %156, label %288, label %157, !prof !8

157:                                              ; preds = %148
  store i32 %151, ptr %152, align 1
  %158 = icmp eq i32 %149, 15
  br i1 %158, label %159, label %173

159:                                              ; preds = %164, %157
  %160 = phi i32 [ %167, %164 ], [ 15, %157 ]
  %161 = phi ptr [ %162, %164 ], [ %153, %157 ]
  %162 = getelementptr i8, ptr %161, i32 1
  %163 = icmp ugt ptr %162, %54
  br i1 %163, label %288, label %164

164:                                              ; preds = %159
  %165 = load i8, ptr %161, align 1
  %166 = zext i8 %165 to i32
  %167 = add i32 %160, %166
  %168 = icmp eq i8 %165, -1
  br i1 %168, label %159, label %169

169:                                              ; preds = %164
  %170 = ptrtoint ptr %152 to i32
  %171 = xor i32 %170, -1
  %172 = icmp ugt i32 %167, %171
  br i1 %172, label %288, label %173

173:                                              ; preds = %169, %157
  %174 = phi i32 [ %167, %169 ], [ %149, %157 ]
  %175 = phi ptr [ %162, %169 ], [ %153, %157 ]
  %176 = add i32 %174, 4
  %177 = icmp ult ptr %150, %32
  %178 = getelementptr i8, ptr %152, i32 %176
  br i1 %177, label %179, label %206

179:                                              ; preds = %173
  %180 = icmp ugt ptr %178, %56
  br i1 %180, label %288, label %181, !prof !11

181:                                              ; preds = %179
  %182 = ptrtoint ptr %150 to i32
  %183 = sub i32 %58, %182
  %184 = icmp ugt i32 %176, %183
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = sub i32 0, %183
  %187 = getelementptr i8, ptr %35, i32 %186
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %152, ptr align 1 %187, i32 %176, i1 false) #4
  br label %273

188:                                              ; preds = %181
  %189 = sub i32 %176, %183
  %190 = sub i32 0, %183
  %191 = getelementptr i8, ptr %35, i32 %190
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %152, ptr align 1 %191, i32 %183, i1 false) #4
  %192 = getelementptr i8, ptr %152, i32 %183
  %193 = ptrtoint ptr %192 to i32
  %194 = sub i32 %193, %58
  %195 = icmp ugt i32 %189, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = icmp ult ptr %192, %178
  br i1 %197, label %198, label %273

198:                                              ; preds = %198, %196
  %199 = phi ptr [ %203, %198 ], [ %192, %196 ]
  %200 = phi ptr [ %201, %198 ], [ %32, %196 ]
  %201 = getelementptr i8, ptr %200, i32 1
  %202 = load i8, ptr %200, align 1
  %203 = getelementptr i8, ptr %199, i32 1
  store i8 %202, ptr %199, align 1
  %204 = icmp eq ptr %203, %178
  br i1 %204, label %273, label %198

205:                                              ; preds = %188
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %192, ptr nonnull align 1 %32, i32 %189, i1 false) #4
  br label %273

206:                                              ; preds = %173
  %207 = icmp ugt ptr %178, %52
  %208 = icmp ult i32 %151, 8
  br i1 %208, label %209, label %229, !prof !11

209:                                              ; preds = %206
  %210 = load i8, ptr %150, align 1
  store i8 %210, ptr %152, align 1
  %211 = getelementptr i8, ptr %150, i32 1
  %212 = load i8, ptr %211, align 1
  %213 = getelementptr i8, ptr %152, i32 1
  store i8 %212, ptr %213, align 1
  %214 = getelementptr i8, ptr %150, i32 2
  %215 = load i8, ptr %214, align 1
  %216 = getelementptr i8, ptr %152, i32 2
  store i8 %215, ptr %216, align 1
  %217 = getelementptr i8, ptr %150, i32 3
  %218 = load i8, ptr %217, align 1
  %219 = getelementptr i8, ptr %152, i32 3
  store i8 %218, ptr %219, align 1
  %220 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %151
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr i8, ptr %150, i32 %221
  %223 = getelementptr i8, ptr %152, i32 4
  %224 = load i32, ptr %222, align 1
  store i32 %224, ptr %223, align 1
  %225 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %151
  %226 = load i32, ptr %225, align 4
  %227 = sub i32 0, %226
  %228 = getelementptr i8, ptr %222, i32 %227
  br label %235

229:                                              ; preds = %206
  %230 = load i32, ptr %150, align 1
  %231 = getelementptr i8, ptr %150, i32 4
  %232 = load i32, ptr %231, align 1
  store i32 %230, ptr %152, align 1
  %233 = getelementptr i32, ptr %152, i32 1
  store i32 %232, ptr %233, align 1
  %234 = getelementptr i8, ptr %150, i32 8
  br label %235

235:                                              ; preds = %229, %209
  %236 = phi ptr [ %228, %209 ], [ %234, %229 ]
  %237 = getelementptr i8, ptr %152, i32 8
  br i1 %207, label %238, label %267, !prof !11

238:                                              ; preds = %235
  %239 = icmp ugt ptr %178, %56
  br i1 %239, label %288, label %240

240:                                              ; preds = %238
  %241 = icmp ult ptr %237, %55
  br i1 %241, label %242, label %256

242:                                              ; preds = %242, %240
  %243 = phi ptr [ %249, %242 ], [ %237, %240 ]
  %244 = phi ptr [ %250, %242 ], [ %236, %240 ]
  %245 = load i32, ptr %244, align 1
  %246 = getelementptr i8, ptr %244, i32 4
  %247 = load i32, ptr %246, align 1
  store i32 %245, ptr %243, align 1
  %248 = getelementptr i32, ptr %243, i32 1
  store i32 %247, ptr %248, align 1
  %249 = getelementptr i8, ptr %243, i32 8
  %250 = getelementptr i8, ptr %244, i32 8
  %251 = icmp ult ptr %249, %55
  br i1 %251, label %242, label %252

252:                                              ; preds = %242
  %253 = ptrtoint ptr %237 to i32
  %254 = sub i32 %57, %253
  %255 = getelementptr i8, ptr %236, i32 %254
  br label %256

256:                                              ; preds = %252, %240
  %257 = phi ptr [ %255, %252 ], [ %236, %240 ]
  %258 = phi ptr [ %55, %252 ], [ %237, %240 ]
  %259 = icmp ult ptr %258, %178
  br i1 %259, label %260, label %273

260:                                              ; preds = %260, %256
  %261 = phi ptr [ %265, %260 ], [ %258, %256 ]
  %262 = phi ptr [ %263, %260 ], [ %257, %256 ]
  %263 = getelementptr i8, ptr %262, i32 1
  %264 = load i8, ptr %262, align 1
  %265 = getelementptr i8, ptr %261, i32 1
  store i8 %264, ptr %261, align 1
  %266 = icmp ult ptr %265, %178
  br i1 %266, label %260, label %273

267:                                              ; preds = %235
  %268 = load i32, ptr %236, align 1
  %269 = getelementptr i8, ptr %236, i32 4
  %270 = load i32, ptr %269, align 1
  store i32 %268, ptr %237, align 1
  %271 = getelementptr i8, ptr %152, i32 12
  store i32 %270, ptr %271, align 1
  %272 = icmp ugt i32 %176, 16
  br i1 %272, label %276, label %273

273:                                              ; preds = %278, %267, %260, %256, %205, %198, %196, %185, %85
  %274 = phi ptr [ %178, %267 ], [ %178, %256 ], [ %192, %196 ], [ %178, %185 ], [ %178, %205 ], [ %94, %85 ], [ %178, %198 ], [ %178, %260 ], [ %178, %278 ]
  %275 = phi ptr [ %175, %267 ], [ %175, %256 ], [ %175, %196 ], [ %175, %185 ], [ %175, %205 ], [ %77, %85 ], [ %175, %198 ], [ %175, %260 ], [ %175, %278 ]
  br label %59

276:                                              ; preds = %267
  %277 = getelementptr i8, ptr %152, i32 16
  br label %278

278:                                              ; preds = %278, %276
  %279 = phi ptr [ %277, %276 ], [ %286, %278 ]
  %280 = phi ptr [ %236, %276 ], [ %281, %278 ]
  %281 = getelementptr i8, ptr %280, i32 8
  %282 = load i32, ptr %281, align 1
  %283 = getelementptr i8, ptr %280, i32 12
  %284 = load i32, ptr %283, align 1
  store i32 %282, ptr %279, align 1
  %285 = getelementptr i32, ptr %279, i32 1
  store i32 %284, ptr %285, align 1
  %286 = getelementptr i8, ptr %279, i32 8
  %287 = icmp ult ptr %286, %178
  br i1 %287, label %278, label %273

288:                                              ; preds = %238, %179, %169, %159, %148, %123, %107, %95
  %289 = phi ptr [ %117, %123 ], [ %162, %159 ], [ %162, %169 ], [ %175, %238 ], [ %62, %95 ], [ %100, %107 ], [ %153, %148 ], [ %175, %179 ]
  %290 = ptrtoint ptr %289 to i32
  %291 = ptrtoint ptr %1 to i32
  %292 = xor i32 %290, -1
  %293 = add i32 %292, %291
  br label %294

294:                                              ; preds = %288, %127, %27, %21
  %295 = phi i32 [ %22, %21 ], [ %28, %27 ], [ %293, %288 ], [ %130, %127 ]
  %296 = icmp slt i32 %295, 1
  br i1 %296, label %310, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr %6, align 4
  %299 = add i32 %298, %295
  store i32 %299, ptr %6, align 4
  %300 = load ptr, ptr %16, align 4
  %301 = getelementptr i8, ptr %300, i32 %295
  store ptr %301, ptr %16, align 4
  br label %310

302:                                              ; preds = %15
  %303 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 1
  store i32 %7, ptr %303, align 4
  %304 = sub i32 0, %7
  %305 = getelementptr i8, ptr %17, i32 %304
  store ptr %305, ptr %0, align 4
  %306 = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %305, i32 noundef %7)
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %310, label %308

308:                                              ; preds = %302
  store i32 %306, ptr %6, align 4
  %309 = getelementptr i8, ptr %2, i32 %306
  store ptr %309, ptr %16, align 4
  br label %310

310:                                              ; preds = %308, %302, %297, %294, %48, %44, %42, %12, %9
  %311 = phi i32 [ %10, %9 ], [ %295, %294 ], [ %306, %302 ], [ %10, %12 ], [ %295, %297 ], [ %306, %308 ], [ -1, %48 ], [ %47, %44 ], [ -1, %42 ]
  ret i32 %311
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr i8, ptr %1, i32 -65536
  %6 = getelementptr i8, ptr %0, i32 %2
  %7 = getelementptr i8, ptr %1, i32 %3
  %8 = getelementptr i8, ptr %6, i32 -14
  %9 = getelementptr i8, ptr %8, i32 -2
  %10 = getelementptr i8, ptr %7, i32 -14
  %11 = getelementptr i8, ptr %10, i32 -18
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %13, label %19, !prof !8

13:                                               ; preds = %4
  %14 = icmp eq i32 %2, 1
  br i1 %14, label %15, label %231

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1
  %17 = icmp ne i8 %16, 0
  %18 = sext i1 %17 to i32
  br label %231

19:                                               ; preds = %4
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %231, label %21, !prof !8

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %6, i32 -15
  %23 = getelementptr i8, ptr %7, i32 -12
  %24 = getelementptr i8, ptr %6, i32 -8
  %25 = getelementptr i8, ptr %6, i32 -5
  %26 = getelementptr i8, ptr %7, i32 -7
  %27 = getelementptr i8, ptr %7, i32 -5
  %28 = ptrtoint ptr %26 to i32
  br label %29

29:                                               ; preds = %210, %21
  %30 = phi ptr [ %1, %21 ], [ %211, %210 ]
  %31 = phi ptr [ %0, %21 ], [ %212, %210 ]
  %32 = getelementptr i8, ptr %31, i32 1
  %33 = load i8, ptr %31, align 1
  %34 = zext i8 %33 to i32
  %35 = lshr i32 %34, 4
  %36 = icmp eq i32 %35, 15
  br i1 %36, label %63, label %37

37:                                               ; preds = %29
  %38 = icmp ult ptr %32, %9
  %39 = icmp ule ptr %30, %11
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %83, !prof !9

41:                                               ; preds = %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %30, ptr noundef align 1 dereferenceable(16) %32, i32 16, i1 false) #4
  %42 = getelementptr i8, ptr %30, i32 %35
  %43 = getelementptr i8, ptr %32, i32 %35
  %44 = and i32 %34, 15
  %45 = load i16, ptr %43, align 1
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %43, i32 2
  %48 = sub nsw i32 0, %46
  %49 = getelementptr i8, ptr %42, i32 %48
  %50 = icmp eq i32 %44, 15
  %51 = icmp ult i16 %45, 8
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %116, label %53

53:                                               ; preds = %41
  %54 = load i64, ptr %49, align 1
  store i64 %54, ptr %42, align 1
  %55 = getelementptr i8, ptr %42, i32 8
  %56 = getelementptr i8, ptr %49, i32 8
  %57 = load i64, ptr %56, align 1
  store i64 %57, ptr %55, align 1
  %58 = getelementptr i8, ptr %42, i32 16
  %59 = getelementptr i8, ptr %49, i32 16
  %60 = load i16, ptr %59, align 1
  store i16 %60, ptr %58, align 1
  %61 = add nuw nsw i32 %44, 4
  %62 = getelementptr i8, ptr %42, i32 %61
  br label %210

63:                                               ; preds = %29
  %64 = icmp ult ptr %32, %22
  br i1 %64, label %65, label %225, !prof !9

65:                                               ; preds = %65, %63
  %66 = phi i32 [ %71, %65 ], [ 15, %63 ]
  %67 = phi ptr [ %68, %65 ], [ %32, %63 ]
  %68 = getelementptr i8, ptr %67, i32 1
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i32
  %71 = add i32 %66, %70
  %72 = icmp ult ptr %68, %22
  %73 = icmp eq i8 %69, -1
  %74 = and i1 %73, %72
  br i1 %74, label %65, label %75

75:                                               ; preds = %65
  %76 = ptrtoint ptr %30 to i32
  %77 = xor i32 %76, -1
  %78 = icmp ugt i32 %71, %77
  %79 = ptrtoint ptr %68 to i32
  %80 = xor i32 %79, -1
  %81 = icmp ugt i32 %71, %80
  %82 = or i1 %78, %81
  br i1 %82, label %225, label %83, !prof !10

83:                                               ; preds = %75, %37
  %84 = phi i32 [ %35, %37 ], [ %71, %75 ]
  %85 = phi ptr [ %32, %37 ], [ %68, %75 ]
  %86 = getelementptr i8, ptr %30, i32 %84
  %87 = icmp ugt ptr %86, %23
  %88 = getelementptr i8, ptr %85, i32 %84
  %89 = icmp ugt ptr %88, %24
  %90 = or i1 %87, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = icmp ne ptr %88, %6
  %93 = icmp ugt ptr %86, %7
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %225, label %95

95:                                               ; preds = %91
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %30, ptr align 1 %85, i32 %84, i1 false) #4
  %96 = ptrtoint ptr %86 to i32
  %97 = ptrtoint ptr %1 to i32
  %98 = sub i32 %96, %97
  br label %231

99:                                               ; preds = %99, %83
  %100 = phi ptr [ %106, %99 ], [ %30, %83 ]
  %101 = phi ptr [ %107, %99 ], [ %85, %83 ]
  %102 = load i32, ptr %101, align 1
  %103 = getelementptr i8, ptr %101, i32 4
  %104 = load i32, ptr %103, align 1
  store i32 %102, ptr %100, align 1
  %105 = getelementptr i32, ptr %100, i32 1
  store i32 %104, ptr %105, align 1
  %106 = getelementptr i8, ptr %100, i32 8
  %107 = getelementptr i8, ptr %101, i32 8
  %108 = icmp ult ptr %106, %86
  br i1 %108, label %99, label %109

109:                                              ; preds = %99
  %110 = load i16, ptr %88, align 1
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %88, i32 2
  %113 = sub nsw i32 0, %111
  %114 = getelementptr i8, ptr %86, i32 %113
  %115 = and i32 %34, 15
  br label %116

116:                                              ; preds = %109, %41
  %117 = phi i32 [ %44, %41 ], [ %115, %109 ]
  %118 = phi ptr [ %49, %41 ], [ %114, %109 ]
  %119 = phi i32 [ %46, %41 ], [ %111, %109 ]
  %120 = phi ptr [ %42, %41 ], [ %86, %109 ]
  %121 = phi ptr [ %47, %41 ], [ %112, %109 ]
  %122 = icmp ult ptr %118, %5
  br i1 %122, label %225, label %123, !prof !8

123:                                              ; preds = %116
  store i32 %119, ptr %120, align 1
  %124 = icmp eq i32 %117, 15
  br i1 %124, label %125, label %139

125:                                              ; preds = %130, %123
  %126 = phi i32 [ %133, %130 ], [ 15, %123 ]
  %127 = phi ptr [ %128, %130 ], [ %121, %123 ]
  %128 = getelementptr i8, ptr %127, i32 1
  %129 = icmp ugt ptr %128, %25
  br i1 %129, label %225, label %130

130:                                              ; preds = %125
  %131 = load i8, ptr %127, align 1
  %132 = zext i8 %131 to i32
  %133 = add i32 %126, %132
  %134 = icmp eq i8 %131, -1
  br i1 %134, label %125, label %135

135:                                              ; preds = %130
  %136 = ptrtoint ptr %120 to i32
  %137 = xor i32 %136, -1
  %138 = icmp ugt i32 %133, %137
  br i1 %138, label %225, label %139

139:                                              ; preds = %135, %123
  %140 = phi i32 [ %133, %135 ], [ %117, %123 ]
  %141 = phi ptr [ %128, %135 ], [ %121, %123 ]
  %142 = add i32 %140, 4
  %143 = getelementptr i8, ptr %120, i32 %142
  %144 = icmp ugt ptr %143, %23
  %145 = icmp ult i32 %119, 8
  br i1 %145, label %146, label %166, !prof !11

146:                                              ; preds = %139
  %147 = load i8, ptr %118, align 1
  store i8 %147, ptr %120, align 1
  %148 = getelementptr i8, ptr %118, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = getelementptr i8, ptr %120, i32 1
  store i8 %149, ptr %150, align 1
  %151 = getelementptr i8, ptr %118, i32 2
  %152 = load i8, ptr %151, align 1
  %153 = getelementptr i8, ptr %120, i32 2
  store i8 %152, ptr %153, align 1
  %154 = getelementptr i8, ptr %118, i32 3
  %155 = load i8, ptr %154, align 1
  %156 = getelementptr i8, ptr %120, i32 3
  store i8 %155, ptr %156, align 1
  %157 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %119
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr i8, ptr %118, i32 %158
  %160 = getelementptr i8, ptr %120, i32 4
  %161 = load i32, ptr %159, align 1
  store i32 %161, ptr %160, align 1
  %162 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %119
  %163 = load i32, ptr %162, align 4
  %164 = sub i32 0, %163
  %165 = getelementptr i8, ptr %159, i32 %164
  br label %172

166:                                              ; preds = %139
  %167 = load i32, ptr %118, align 1
  %168 = getelementptr i8, ptr %118, i32 4
  %169 = load i32, ptr %168, align 1
  store i32 %167, ptr %120, align 1
  %170 = getelementptr i32, ptr %120, i32 1
  store i32 %169, ptr %170, align 1
  %171 = getelementptr i8, ptr %118, i32 8
  br label %172

172:                                              ; preds = %166, %146
  %173 = phi ptr [ %165, %146 ], [ %171, %166 ]
  %174 = getelementptr i8, ptr %120, i32 8
  br i1 %144, label %175, label %204, !prof !11

175:                                              ; preds = %172
  %176 = icmp ugt ptr %143, %27
  br i1 %176, label %225, label %177

177:                                              ; preds = %175
  %178 = icmp ult ptr %174, %26
  br i1 %178, label %179, label %193

179:                                              ; preds = %179, %177
  %180 = phi ptr [ %186, %179 ], [ %174, %177 ]
  %181 = phi ptr [ %187, %179 ], [ %173, %177 ]
  %182 = load i32, ptr %181, align 1
  %183 = getelementptr i8, ptr %181, i32 4
  %184 = load i32, ptr %183, align 1
  store i32 %182, ptr %180, align 1
  %185 = getelementptr i32, ptr %180, i32 1
  store i32 %184, ptr %185, align 1
  %186 = getelementptr i8, ptr %180, i32 8
  %187 = getelementptr i8, ptr %181, i32 8
  %188 = icmp ult ptr %186, %26
  br i1 %188, label %179, label %189

189:                                              ; preds = %179
  %190 = ptrtoint ptr %174 to i32
  %191 = sub i32 %28, %190
  %192 = getelementptr i8, ptr %173, i32 %191
  br label %193

193:                                              ; preds = %189, %177
  %194 = phi ptr [ %192, %189 ], [ %173, %177 ]
  %195 = phi ptr [ %26, %189 ], [ %174, %177 ]
  %196 = icmp ult ptr %195, %143
  br i1 %196, label %197, label %210

197:                                              ; preds = %197, %193
  %198 = phi ptr [ %202, %197 ], [ %195, %193 ]
  %199 = phi ptr [ %200, %197 ], [ %194, %193 ]
  %200 = getelementptr i8, ptr %199, i32 1
  %201 = load i8, ptr %199, align 1
  %202 = getelementptr i8, ptr %198, i32 1
  store i8 %201, ptr %198, align 1
  %203 = icmp ult ptr %202, %143
  br i1 %203, label %197, label %210

204:                                              ; preds = %172
  %205 = load i32, ptr %173, align 1
  %206 = getelementptr i8, ptr %173, i32 4
  %207 = load i32, ptr %206, align 1
  store i32 %205, ptr %174, align 1
  %208 = getelementptr i8, ptr %120, i32 12
  store i32 %207, ptr %208, align 1
  %209 = icmp ugt i32 %142, 16
  br i1 %209, label %213, label %210

210:                                              ; preds = %215, %204, %197, %193, %53
  %211 = phi ptr [ %143, %204 ], [ %143, %193 ], [ %62, %53 ], [ %143, %197 ], [ %143, %215 ]
  %212 = phi ptr [ %141, %204 ], [ %141, %193 ], [ %47, %53 ], [ %141, %197 ], [ %141, %215 ]
  br label %29

213:                                              ; preds = %204
  %214 = getelementptr i8, ptr %120, i32 16
  br label %215

215:                                              ; preds = %215, %213
  %216 = phi ptr [ %214, %213 ], [ %223, %215 ]
  %217 = phi ptr [ %173, %213 ], [ %218, %215 ]
  %218 = getelementptr i8, ptr %217, i32 8
  %219 = load i32, ptr %218, align 1
  %220 = getelementptr i8, ptr %217, i32 12
  %221 = load i32, ptr %220, align 1
  store i32 %219, ptr %216, align 1
  %222 = getelementptr i32, ptr %216, i32 1
  store i32 %221, ptr %222, align 1
  %223 = getelementptr i8, ptr %216, i32 8
  %224 = icmp ult ptr %223, %143
  br i1 %224, label %215, label %210

225:                                              ; preds = %175, %135, %125, %116, %91, %75, %63
  %226 = phi ptr [ %85, %91 ], [ %128, %125 ], [ %121, %116 ], [ %68, %75 ], [ %32, %63 ], [ %141, %175 ], [ %128, %135 ]
  %227 = ptrtoint ptr %226 to i32
  %228 = ptrtoint ptr %0 to i32
  %229 = xor i32 %227, -1
  %230 = add i32 %229, %228
  br label %231

231:                                              ; preds = %225, %95, %19, %15, %13
  %232 = phi i32 [ %230, %225 ], [ %98, %95 ], [ -1, %13 ], [ %18, %15 ], [ -1, %19 ]
  ret i32 %232
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = sub i32 0, %4
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = getelementptr i8, ptr %0, i32 %2
  %9 = getelementptr i8, ptr %1, i32 %3
  %10 = getelementptr i8, ptr %8, i32 -14
  %11 = getelementptr i8, ptr %10, i32 -2
  %12 = getelementptr i8, ptr %9, i32 -14
  %13 = getelementptr i8, ptr %12, i32 -18
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %15, label %21, !prof !8

15:                                               ; preds = %5
  %16 = icmp eq i32 %2, 1
  br i1 %16, label %17, label %235

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1
  %19 = icmp ne i8 %18, 0
  %20 = sext i1 %19 to i32
  br label %235

21:                                               ; preds = %5
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %235, label %23, !prof !8

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %8, i32 -15
  %25 = getelementptr i8, ptr %9, i32 -12
  %26 = getelementptr i8, ptr %8, i32 -8
  %27 = getelementptr i8, ptr %8, i32 -5
  %28 = getelementptr i8, ptr %9, i32 -7
  %29 = getelementptr i8, ptr %9, i32 -5
  %30 = ptrtoint ptr %28 to i32
  br label %31

31:                                               ; preds = %214, %23
  %32 = phi ptr [ %1, %23 ], [ %215, %214 ]
  %33 = phi ptr [ %0, %23 ], [ %216, %214 ]
  %34 = getelementptr i8, ptr %33, i32 1
  %35 = load i8, ptr %33, align 1
  %36 = zext i8 %35 to i32
  %37 = lshr i32 %36, 4
  %38 = icmp eq i32 %37, 15
  br i1 %38, label %67, label %39

39:                                               ; preds = %31
  %40 = icmp ult ptr %34, %11
  %41 = icmp ule ptr %32, %13
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %87, !prof !9

43:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %32, ptr noundef align 1 dereferenceable(16) %34, i32 16, i1 false) #4
  %44 = getelementptr i8, ptr %32, i32 %37
  %45 = getelementptr i8, ptr %34, i32 %37
  %46 = and i32 %36, 15
  %47 = load i16, ptr %45, align 1
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %45, i32 2
  %50 = sub nsw i32 0, %48
  %51 = getelementptr i8, ptr %44, i32 %50
  %52 = icmp eq i32 %46, 15
  %53 = icmp ult i16 %47, 8
  %54 = select i1 %52, i1 true, i1 %53
  %55 = icmp ult ptr %51, %7
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %120, label %57

57:                                               ; preds = %43
  %58 = load i64, ptr %51, align 1
  store i64 %58, ptr %44, align 1
  %59 = getelementptr i8, ptr %44, i32 8
  %60 = getelementptr i8, ptr %51, i32 8
  %61 = load i64, ptr %60, align 1
  store i64 %61, ptr %59, align 1
  %62 = getelementptr i8, ptr %44, i32 16
  %63 = getelementptr i8, ptr %51, i32 16
  %64 = load i16, ptr %63, align 1
  store i16 %64, ptr %62, align 1
  %65 = add nuw nsw i32 %46, 4
  %66 = getelementptr i8, ptr %44, i32 %65
  br label %214

67:                                               ; preds = %31
  %68 = icmp ult ptr %34, %24
  br i1 %68, label %69, label %229, !prof !9

69:                                               ; preds = %69, %67
  %70 = phi i32 [ %75, %69 ], [ 15, %67 ]
  %71 = phi ptr [ %72, %69 ], [ %34, %67 ]
  %72 = getelementptr i8, ptr %71, i32 1
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i32
  %75 = add i32 %70, %74
  %76 = icmp ult ptr %72, %24
  %77 = icmp eq i8 %73, -1
  %78 = and i1 %77, %76
  br i1 %78, label %69, label %79

79:                                               ; preds = %69
  %80 = ptrtoint ptr %32 to i32
  %81 = xor i32 %80, -1
  %82 = icmp ugt i32 %75, %81
  %83 = ptrtoint ptr %72 to i32
  %84 = xor i32 %83, -1
  %85 = icmp ugt i32 %75, %84
  %86 = or i1 %82, %85
  br i1 %86, label %229, label %87, !prof !10

87:                                               ; preds = %79, %39
  %88 = phi i32 [ %37, %39 ], [ %75, %79 ]
  %89 = phi ptr [ %34, %39 ], [ %72, %79 ]
  %90 = getelementptr i8, ptr %32, i32 %88
  %91 = icmp ugt ptr %90, %25
  %92 = getelementptr i8, ptr %89, i32 %88
  %93 = icmp ugt ptr %92, %26
  %94 = or i1 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = icmp ne ptr %92, %8
  %97 = icmp ugt ptr %90, %9
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %229, label %99

99:                                               ; preds = %95
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %32, ptr align 1 %89, i32 %88, i1 false) #4
  %100 = ptrtoint ptr %90 to i32
  %101 = ptrtoint ptr %1 to i32
  %102 = sub i32 %100, %101
  br label %235

103:                                              ; preds = %103, %87
  %104 = phi ptr [ %110, %103 ], [ %32, %87 ]
  %105 = phi ptr [ %111, %103 ], [ %89, %87 ]
  %106 = load i32, ptr %105, align 1
  %107 = getelementptr i8, ptr %105, i32 4
  %108 = load i32, ptr %107, align 1
  store i32 %106, ptr %104, align 1
  %109 = getelementptr i32, ptr %104, i32 1
  store i32 %108, ptr %109, align 1
  %110 = getelementptr i8, ptr %104, i32 8
  %111 = getelementptr i8, ptr %105, i32 8
  %112 = icmp ult ptr %110, %90
  br i1 %112, label %103, label %113

113:                                              ; preds = %103
  %114 = load i16, ptr %92, align 1
  %115 = zext i16 %114 to i32
  %116 = getelementptr i8, ptr %92, i32 2
  %117 = sub nsw i32 0, %115
  %118 = getelementptr i8, ptr %90, i32 %117
  %119 = and i32 %36, 15
  br label %120

120:                                              ; preds = %113, %43
  %121 = phi i32 [ %46, %43 ], [ %119, %113 ]
  %122 = phi ptr [ %51, %43 ], [ %118, %113 ]
  %123 = phi i32 [ %48, %43 ], [ %115, %113 ]
  %124 = phi ptr [ %44, %43 ], [ %90, %113 ]
  %125 = phi ptr [ %49, %43 ], [ %116, %113 ]
  %126 = icmp ult ptr %122, %7
  br i1 %126, label %229, label %127, !prof !8

127:                                              ; preds = %120
  store i32 %123, ptr %124, align 1
  %128 = icmp eq i32 %121, 15
  br i1 %128, label %129, label %143

129:                                              ; preds = %134, %127
  %130 = phi i32 [ %137, %134 ], [ 15, %127 ]
  %131 = phi ptr [ %132, %134 ], [ %125, %127 ]
  %132 = getelementptr i8, ptr %131, i32 1
  %133 = icmp ugt ptr %132, %27
  br i1 %133, label %229, label %134

134:                                              ; preds = %129
  %135 = load i8, ptr %131, align 1
  %136 = zext i8 %135 to i32
  %137 = add i32 %130, %136
  %138 = icmp eq i8 %135, -1
  br i1 %138, label %129, label %139

139:                                              ; preds = %134
  %140 = ptrtoint ptr %124 to i32
  %141 = xor i32 %140, -1
  %142 = icmp ugt i32 %137, %141
  br i1 %142, label %229, label %143

143:                                              ; preds = %139, %127
  %144 = phi i32 [ %137, %139 ], [ %121, %127 ]
  %145 = phi ptr [ %132, %139 ], [ %125, %127 ]
  %146 = add i32 %144, 4
  %147 = getelementptr i8, ptr %124, i32 %146
  %148 = icmp ugt ptr %147, %25
  %149 = icmp ult i32 %123, 8
  br i1 %149, label %150, label %170, !prof !11

150:                                              ; preds = %143
  %151 = load i8, ptr %122, align 1
  store i8 %151, ptr %124, align 1
  %152 = getelementptr i8, ptr %122, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr i8, ptr %124, i32 1
  store i8 %153, ptr %154, align 1
  %155 = getelementptr i8, ptr %122, i32 2
  %156 = load i8, ptr %155, align 1
  %157 = getelementptr i8, ptr %124, i32 2
  store i8 %156, ptr %157, align 1
  %158 = getelementptr i8, ptr %122, i32 3
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr i8, ptr %124, i32 3
  store i8 %159, ptr %160, align 1
  %161 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %123
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr i8, ptr %122, i32 %162
  %164 = getelementptr i8, ptr %124, i32 4
  %165 = load i32, ptr %163, align 1
  store i32 %165, ptr %164, align 1
  %166 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %123
  %167 = load i32, ptr %166, align 4
  %168 = sub i32 0, %167
  %169 = getelementptr i8, ptr %163, i32 %168
  br label %176

170:                                              ; preds = %143
  %171 = load i32, ptr %122, align 1
  %172 = getelementptr i8, ptr %122, i32 4
  %173 = load i32, ptr %172, align 1
  store i32 %171, ptr %124, align 1
  %174 = getelementptr i32, ptr %124, i32 1
  store i32 %173, ptr %174, align 1
  %175 = getelementptr i8, ptr %122, i32 8
  br label %176

176:                                              ; preds = %170, %150
  %177 = phi ptr [ %169, %150 ], [ %175, %170 ]
  %178 = getelementptr i8, ptr %124, i32 8
  br i1 %148, label %179, label %208, !prof !11

179:                                              ; preds = %176
  %180 = icmp ugt ptr %147, %29
  br i1 %180, label %229, label %181

181:                                              ; preds = %179
  %182 = icmp ult ptr %178, %28
  br i1 %182, label %183, label %197

183:                                              ; preds = %183, %181
  %184 = phi ptr [ %190, %183 ], [ %178, %181 ]
  %185 = phi ptr [ %191, %183 ], [ %177, %181 ]
  %186 = load i32, ptr %185, align 1
  %187 = getelementptr i8, ptr %185, i32 4
  %188 = load i32, ptr %187, align 1
  store i32 %186, ptr %184, align 1
  %189 = getelementptr i32, ptr %184, i32 1
  store i32 %188, ptr %189, align 1
  %190 = getelementptr i8, ptr %184, i32 8
  %191 = getelementptr i8, ptr %185, i32 8
  %192 = icmp ult ptr %190, %28
  br i1 %192, label %183, label %193

193:                                              ; preds = %183
  %194 = ptrtoint ptr %178 to i32
  %195 = sub i32 %30, %194
  %196 = getelementptr i8, ptr %177, i32 %195
  br label %197

197:                                              ; preds = %193, %181
  %198 = phi ptr [ %196, %193 ], [ %177, %181 ]
  %199 = phi ptr [ %28, %193 ], [ %178, %181 ]
  %200 = icmp ult ptr %199, %147
  br i1 %200, label %201, label %214

201:                                              ; preds = %201, %197
  %202 = phi ptr [ %206, %201 ], [ %199, %197 ]
  %203 = phi ptr [ %204, %201 ], [ %198, %197 ]
  %204 = getelementptr i8, ptr %203, i32 1
  %205 = load i8, ptr %203, align 1
  %206 = getelementptr i8, ptr %202, i32 1
  store i8 %205, ptr %202, align 1
  %207 = icmp ult ptr %206, %147
  br i1 %207, label %201, label %214

208:                                              ; preds = %176
  %209 = load i32, ptr %177, align 1
  %210 = getelementptr i8, ptr %177, i32 4
  %211 = load i32, ptr %210, align 1
  store i32 %209, ptr %178, align 1
  %212 = getelementptr i8, ptr %124, i32 12
  store i32 %211, ptr %212, align 1
  %213 = icmp ugt i32 %146, 16
  br i1 %213, label %217, label %214

214:                                              ; preds = %219, %208, %201, %197, %57
  %215 = phi ptr [ %147, %208 ], [ %147, %197 ], [ %66, %57 ], [ %147, %201 ], [ %147, %219 ]
  %216 = phi ptr [ %145, %208 ], [ %145, %197 ], [ %49, %57 ], [ %145, %201 ], [ %145, %219 ]
  br label %31

217:                                              ; preds = %208
  %218 = getelementptr i8, ptr %124, i32 16
  br label %219

219:                                              ; preds = %219, %217
  %220 = phi ptr [ %218, %217 ], [ %227, %219 ]
  %221 = phi ptr [ %177, %217 ], [ %222, %219 ]
  %222 = getelementptr i8, ptr %221, i32 8
  %223 = load i32, ptr %222, align 1
  %224 = getelementptr i8, ptr %221, i32 12
  %225 = load i32, ptr %224, align 1
  store i32 %223, ptr %220, align 1
  %226 = getelementptr i32, ptr %220, i32 1
  store i32 %225, ptr %226, align 1
  %227 = getelementptr i8, ptr %220, i32 8
  %228 = icmp ult ptr %227, %147
  br i1 %228, label %219, label %214

229:                                              ; preds = %179, %139, %129, %120, %95, %79, %67
  %230 = phi ptr [ %89, %95 ], [ %132, %129 ], [ %125, %120 ], [ %72, %79 ], [ %34, %67 ], [ %145, %179 ], [ %132, %139 ]
  %231 = ptrtoint ptr %230 to i32
  %232 = ptrtoint ptr %0 to i32
  %233 = xor i32 %231, -1
  %234 = add i32 %233, %232
  br label %235

235:                                              ; preds = %229, %99, %21, %17, %15
  %236 = phi i32 [ %234, %229 ], [ %102, %99 ], [ -1, %15 ], [ %20, %17 ], [ -1, %21 ]
  ret i32 %236
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_fast_continue(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call i32 @LZ4_decompress_fast(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %275, label %11

11:                                               ; preds = %8
  store i32 %3, ptr %5, align 4
  %12 = getelementptr i8, ptr %2, i32 %3
  %13 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  br label %275

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %18, label %267

18:                                               ; preds = %14
  %19 = icmp ugt i32 %6, 65534
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %18
  %25 = tail call i32 @LZ4_decompress_fast(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %255

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 4
  %28 = sub nsw i32 0, %6
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = getelementptr i8, ptr %2, i32 %3
  %31 = getelementptr i8, ptr %27, i32 %22
  %32 = getelementptr i8, ptr %30, i32 -8
  %33 = getelementptr i8, ptr %32, i32 -18
  %34 = icmp eq i32 %3, 0
  br i1 %34, label %35, label %38, !prof !8

35:                                               ; preds = %26
  %36 = load i8, ptr %1, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %261, label %275

38:                                               ; preds = %26
  %39 = getelementptr i8, ptr %30, i32 -12
  %40 = getelementptr i8, ptr %30, i32 -7
  %41 = getelementptr i8, ptr %30, i32 -5
  %42 = ptrtoint ptr %40 to i32
  %43 = ptrtoint ptr %29 to i32
  br label %44

44:                                               ; preds = %234, %38
  %45 = phi ptr [ %2, %38 ], [ %235, %234 ]
  %46 = phi ptr [ %1, %38 ], [ %236, %234 ]
  %47 = getelementptr i8, ptr %46, i32 1
  %48 = load i8, ptr %46, align 1
  %49 = zext i8 %48 to i32
  %50 = lshr i32 %49, 4
  %51 = icmp ult i8 %48, -112
  %52 = icmp ule ptr %45, %33
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %79, !prof !12

54:                                               ; preds = %44
  %55 = load i64, ptr %47, align 1
  store i64 %55, ptr %45, align 1
  %56 = getelementptr i8, ptr %45, i32 %50
  %57 = getelementptr i8, ptr %47, i32 %50
  %58 = and i32 %49, 15
  %59 = load i16, ptr %57, align 1
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %57, i32 2
  %62 = sub nsw i32 0, %60
  %63 = getelementptr i8, ptr %56, i32 %62
  %64 = icmp eq i32 %58, 15
  %65 = icmp ult i16 %59, 8
  %66 = select i1 %64, i1 true, i1 %65
  %67 = icmp ult ptr %63, %29
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %119, label %69

69:                                               ; preds = %54
  %70 = load i64, ptr %63, align 1
  store i64 %70, ptr %56, align 1
  %71 = getelementptr i8, ptr %56, i32 8
  %72 = getelementptr i8, ptr %63, i32 8
  %73 = load i64, ptr %72, align 1
  store i64 %73, ptr %71, align 1
  %74 = getelementptr i8, ptr %56, i32 16
  %75 = getelementptr i8, ptr %63, i32 16
  %76 = load i16, ptr %75, align 1
  store i16 %76, ptr %74, align 1
  %77 = add nuw nsw i32 %58, 4
  %78 = getelementptr i8, ptr %56, i32 %77
  br label %234

79:                                               ; preds = %44
  %80 = icmp eq i32 %50, 15
  br i1 %80, label %81, label %89

81:                                               ; preds = %81, %79
  %82 = phi i32 [ %87, %81 ], [ 15, %79 ]
  %83 = phi ptr [ %84, %81 ], [ %47, %79 ]
  %84 = getelementptr i8, ptr %83, i32 1
  %85 = load i8, ptr %83, align 1
  %86 = zext i8 %85 to i32
  %87 = add i32 %82, %86
  %88 = icmp eq i8 %85, -1
  br i1 %88, label %81, label %89

89:                                               ; preds = %81, %79
  %90 = phi i32 [ %50, %79 ], [ %87, %81 ]
  %91 = phi ptr [ %47, %79 ], [ %84, %81 ]
  %92 = getelementptr i8, ptr %45, i32 %90
  %93 = icmp ugt ptr %92, %32
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = icmp eq ptr %92, %30
  br i1 %95, label %96, label %249

96:                                               ; preds = %94
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %45, ptr align 1 %91, i32 %90, i1 false) #4
  %97 = getelementptr i8, ptr %91, i32 %90
  %98 = ptrtoint ptr %97 to i32
  %99 = ptrtoint ptr %1 to i32
  %100 = sub i32 %98, %99
  br label %255

101:                                              ; preds = %101, %89
  %102 = phi ptr [ %108, %101 ], [ %45, %89 ]
  %103 = phi ptr [ %109, %101 ], [ %91, %89 ]
  %104 = load i32, ptr %103, align 1
  %105 = getelementptr i8, ptr %103, i32 4
  %106 = load i32, ptr %105, align 1
  store i32 %104, ptr %102, align 1
  %107 = getelementptr i32, ptr %102, i32 1
  store i32 %106, ptr %107, align 1
  %108 = getelementptr i8, ptr %102, i32 8
  %109 = getelementptr i8, ptr %103, i32 8
  %110 = icmp ult ptr %108, %92
  br i1 %110, label %101, label %111

111:                                              ; preds = %101
  %112 = getelementptr i8, ptr %91, i32 %90
  %113 = load i16, ptr %112, align 1
  %114 = zext i16 %113 to i32
  %115 = getelementptr i8, ptr %112, i32 2
  %116 = sub nsw i32 0, %114
  %117 = getelementptr i8, ptr %92, i32 %116
  %118 = and i32 %49, 15
  br label %119

119:                                              ; preds = %111, %54
  %120 = phi i32 [ %58, %54 ], [ %118, %111 ]
  %121 = phi ptr [ %63, %54 ], [ %117, %111 ]
  %122 = phi i32 [ %60, %54 ], [ %114, %111 ]
  %123 = phi ptr [ %56, %54 ], [ %92, %111 ]
  %124 = phi ptr [ %61, %54 ], [ %115, %111 ]
  store i32 %122, ptr %123, align 1
  %125 = icmp eq i32 %120, 15
  br i1 %125, label %126, label %134

126:                                              ; preds = %126, %119
  %127 = phi i32 [ %132, %126 ], [ 15, %119 ]
  %128 = phi ptr [ %129, %126 ], [ %124, %119 ]
  %129 = getelementptr i8, ptr %128, i32 1
  %130 = load i8, ptr %128, align 1
  %131 = zext i8 %130 to i32
  %132 = add i32 %127, %131
  %133 = icmp eq i8 %130, -1
  br i1 %133, label %126, label %134

134:                                              ; preds = %126, %119
  %135 = phi i32 [ %120, %119 ], [ %132, %126 ]
  %136 = phi ptr [ %124, %119 ], [ %129, %126 ]
  %137 = add i32 %135, 4
  %138 = icmp ult ptr %121, %29
  %139 = getelementptr i8, ptr %123, i32 %137
  br i1 %138, label %140, label %167

140:                                              ; preds = %134
  %141 = icmp ugt ptr %139, %41
  br i1 %141, label %249, label %142, !prof !11

142:                                              ; preds = %140
  %143 = ptrtoint ptr %121 to i32
  %144 = sub i32 %43, %143
  %145 = icmp ugt i32 %137, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = sub i32 0, %144
  %148 = getelementptr i8, ptr %31, i32 %147
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %123, ptr align 1 %148, i32 %137, i1 false) #4
  br label %234

149:                                              ; preds = %142
  %150 = sub i32 %137, %144
  %151 = sub i32 0, %144
  %152 = getelementptr i8, ptr %31, i32 %151
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %123, ptr align 1 %152, i32 %144, i1 false) #4
  %153 = getelementptr i8, ptr %123, i32 %144
  %154 = ptrtoint ptr %153 to i32
  %155 = sub i32 %154, %43
  %156 = icmp ugt i32 %150, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %149
  %158 = icmp ult ptr %153, %139
  br i1 %158, label %159, label %234

159:                                              ; preds = %159, %157
  %160 = phi ptr [ %164, %159 ], [ %153, %157 ]
  %161 = phi ptr [ %162, %159 ], [ %29, %157 ]
  %162 = getelementptr i8, ptr %161, i32 1
  %163 = load i8, ptr %161, align 1
  %164 = getelementptr i8, ptr %160, i32 1
  store i8 %163, ptr %160, align 1
  %165 = icmp eq ptr %164, %139
  br i1 %165, label %234, label %159

166:                                              ; preds = %149
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %153, ptr nonnull align 1 %29, i32 %150, i1 false) #4
  br label %234

167:                                              ; preds = %134
  %168 = icmp ugt ptr %139, %39
  %169 = icmp ult i32 %122, 8
  br i1 %169, label %170, label %190, !prof !11

170:                                              ; preds = %167
  %171 = load i8, ptr %121, align 1
  store i8 %171, ptr %123, align 1
  %172 = getelementptr i8, ptr %121, i32 1
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr i8, ptr %123, i32 1
  store i8 %173, ptr %174, align 1
  %175 = getelementptr i8, ptr %121, i32 2
  %176 = load i8, ptr %175, align 1
  %177 = getelementptr i8, ptr %123, i32 2
  store i8 %176, ptr %177, align 1
  %178 = getelementptr i8, ptr %121, i32 3
  %179 = load i8, ptr %178, align 1
  %180 = getelementptr i8, ptr %123, i32 3
  store i8 %179, ptr %180, align 1
  %181 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %122
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr i8, ptr %121, i32 %182
  %184 = getelementptr i8, ptr %123, i32 4
  %185 = load i32, ptr %183, align 1
  store i32 %185, ptr %184, align 1
  %186 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %122
  %187 = load i32, ptr %186, align 4
  %188 = sub i32 0, %187
  %189 = getelementptr i8, ptr %183, i32 %188
  br label %196

190:                                              ; preds = %167
  %191 = load i32, ptr %121, align 1
  %192 = getelementptr i8, ptr %121, i32 4
  %193 = load i32, ptr %192, align 1
  store i32 %191, ptr %123, align 1
  %194 = getelementptr i32, ptr %123, i32 1
  store i32 %193, ptr %194, align 1
  %195 = getelementptr i8, ptr %121, i32 8
  br label %196

196:                                              ; preds = %190, %170
  %197 = phi ptr [ %189, %170 ], [ %195, %190 ]
  %198 = getelementptr i8, ptr %123, i32 8
  br i1 %168, label %199, label %228, !prof !11

199:                                              ; preds = %196
  %200 = icmp ugt ptr %139, %41
  br i1 %200, label %249, label %201

201:                                              ; preds = %199
  %202 = icmp ult ptr %198, %40
  br i1 %202, label %203, label %217

203:                                              ; preds = %203, %201
  %204 = phi ptr [ %210, %203 ], [ %198, %201 ]
  %205 = phi ptr [ %211, %203 ], [ %197, %201 ]
  %206 = load i32, ptr %205, align 1
  %207 = getelementptr i8, ptr %205, i32 4
  %208 = load i32, ptr %207, align 1
  store i32 %206, ptr %204, align 1
  %209 = getelementptr i32, ptr %204, i32 1
  store i32 %208, ptr %209, align 1
  %210 = getelementptr i8, ptr %204, i32 8
  %211 = getelementptr i8, ptr %205, i32 8
  %212 = icmp ult ptr %210, %40
  br i1 %212, label %203, label %213

213:                                              ; preds = %203
  %214 = ptrtoint ptr %198 to i32
  %215 = sub i32 %42, %214
  %216 = getelementptr i8, ptr %197, i32 %215
  br label %217

217:                                              ; preds = %213, %201
  %218 = phi ptr [ %216, %213 ], [ %197, %201 ]
  %219 = phi ptr [ %40, %213 ], [ %198, %201 ]
  %220 = icmp ult ptr %219, %139
  br i1 %220, label %221, label %234

221:                                              ; preds = %221, %217
  %222 = phi ptr [ %226, %221 ], [ %219, %217 ]
  %223 = phi ptr [ %224, %221 ], [ %218, %217 ]
  %224 = getelementptr i8, ptr %223, i32 1
  %225 = load i8, ptr %223, align 1
  %226 = getelementptr i8, ptr %222, i32 1
  store i8 %225, ptr %222, align 1
  %227 = icmp ult ptr %226, %139
  br i1 %227, label %221, label %234

228:                                              ; preds = %196
  %229 = load i32, ptr %197, align 1
  %230 = getelementptr i8, ptr %197, i32 4
  %231 = load i32, ptr %230, align 1
  store i32 %229, ptr %198, align 1
  %232 = getelementptr i8, ptr %123, i32 12
  store i32 %231, ptr %232, align 1
  %233 = icmp ugt i32 %137, 16
  br i1 %233, label %237, label %234

234:                                              ; preds = %239, %228, %221, %217, %166, %159, %157, %146, %69
  %235 = phi ptr [ %139, %228 ], [ %139, %217 ], [ %153, %157 ], [ %139, %146 ], [ %139, %166 ], [ %78, %69 ], [ %139, %159 ], [ %139, %221 ], [ %139, %239 ]
  %236 = phi ptr [ %136, %228 ], [ %136, %217 ], [ %136, %157 ], [ %136, %146 ], [ %136, %166 ], [ %61, %69 ], [ %136, %159 ], [ %136, %221 ], [ %136, %239 ]
  br label %44

237:                                              ; preds = %228
  %238 = getelementptr i8, ptr %123, i32 16
  br label %239

239:                                              ; preds = %239, %237
  %240 = phi ptr [ %238, %237 ], [ %247, %239 ]
  %241 = phi ptr [ %197, %237 ], [ %242, %239 ]
  %242 = getelementptr i8, ptr %241, i32 8
  %243 = load i32, ptr %242, align 1
  %244 = getelementptr i8, ptr %241, i32 12
  %245 = load i32, ptr %244, align 1
  store i32 %243, ptr %240, align 1
  %246 = getelementptr i32, ptr %240, i32 1
  store i32 %245, ptr %246, align 1
  %247 = getelementptr i8, ptr %240, i32 8
  %248 = icmp ult ptr %247, %139
  br i1 %248, label %239, label %234

249:                                              ; preds = %199, %140, %94
  %250 = phi ptr [ %91, %94 ], [ %136, %140 ], [ %136, %199 ]
  %251 = ptrtoint ptr %250 to i32
  %252 = ptrtoint ptr %1 to i32
  %253 = xor i32 %251, -1
  %254 = add i32 %253, %252
  br label %255

255:                                              ; preds = %249, %96, %24
  %256 = phi i32 [ %25, %24 ], [ %254, %249 ], [ %100, %96 ]
  %257 = icmp slt i32 %256, 1
  br i1 %257, label %275, label %258

258:                                              ; preds = %255
  %259 = load i32, ptr %5, align 4
  %260 = load ptr, ptr %15, align 4
  br label %261

261:                                              ; preds = %258, %35
  %262 = phi ptr [ %260, %258 ], [ %2, %35 ]
  %263 = phi i32 [ %259, %258 ], [ %6, %35 ]
  %264 = phi i32 [ %256, %258 ], [ 1, %35 ]
  %265 = add i32 %263, %3
  store i32 %265, ptr %5, align 4
  %266 = getelementptr i8, ptr %262, i32 %3
  store ptr %266, ptr %15, align 4
  br label %275

267:                                              ; preds = %14
  %268 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %0, i32 0, i32 1
  store i32 %6, ptr %268, align 4
  %269 = sub i32 0, %6
  %270 = getelementptr i8, ptr %16, i32 %269
  store ptr %270, ptr %0, align 4
  %271 = tail call fastcc i32 @LZ4_decompress_fast_extDict(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %270, i32 noundef %6)
  %272 = icmp slt i32 %271, 1
  br i1 %272, label %275, label %273

273:                                              ; preds = %267
  store i32 %3, ptr %5, align 4
  %274 = getelementptr i8, ptr %2, i32 %3
  store ptr %274, ptr %15, align 4
  br label %275

275:                                              ; preds = %273, %267, %261, %255, %35, %11, %8
  %276 = phi i32 [ %9, %8 ], [ %256, %255 ], [ %271, %267 ], [ %9, %11 ], [ %264, %261 ], [ %271, %273 ], [ -1, %35 ]
  ret i32 %276
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_decompress_fast_extDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr i8, ptr %1, i32 %2
  %7 = getelementptr i8, ptr %3, i32 %4
  %8 = getelementptr i8, ptr %6, i32 -8
  %9 = getelementptr i8, ptr %8, i32 -18
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %15, !prof !8

11:                                               ; preds = %5
  %12 = load i8, ptr %0, align 1
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 1, i32 -1
  br label %232

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %6, i32 -12
  %17 = getelementptr i8, ptr %6, i32 -7
  %18 = getelementptr i8, ptr %6, i32 -5
  %19 = ptrtoint ptr %17 to i32
  %20 = ptrtoint ptr %1 to i32
  br label %21

21:                                               ; preds = %211, %15
  %22 = phi ptr [ %1, %15 ], [ %212, %211 ]
  %23 = phi ptr [ %0, %15 ], [ %213, %211 ]
  %24 = getelementptr i8, ptr %23, i32 1
  %25 = load i8, ptr %23, align 1
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %26, 4
  %28 = icmp ult i8 %25, -112
  %29 = icmp ule ptr %22, %9
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %56, !prof !12

31:                                               ; preds = %21
  %32 = load i64, ptr %24, align 1
  store i64 %32, ptr %22, align 1
  %33 = getelementptr i8, ptr %22, i32 %27
  %34 = getelementptr i8, ptr %24, i32 %27
  %35 = and i32 %26, 15
  %36 = load i16, ptr %34, align 1
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %34, i32 2
  %39 = sub nsw i32 0, %37
  %40 = getelementptr i8, ptr %33, i32 %39
  %41 = icmp eq i32 %35, 15
  %42 = icmp ult i16 %36, 8
  %43 = select i1 %41, i1 true, i1 %42
  %44 = icmp ult ptr %40, %1
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %96, label %46

46:                                               ; preds = %31
  %47 = load i64, ptr %40, align 1
  store i64 %47, ptr %33, align 1
  %48 = getelementptr i8, ptr %33, i32 8
  %49 = getelementptr i8, ptr %40, i32 8
  %50 = load i64, ptr %49, align 1
  store i64 %50, ptr %48, align 1
  %51 = getelementptr i8, ptr %33, i32 16
  %52 = getelementptr i8, ptr %40, i32 16
  %53 = load i16, ptr %52, align 1
  store i16 %53, ptr %51, align 1
  %54 = add nuw nsw i32 %35, 4
  %55 = getelementptr i8, ptr %33, i32 %54
  br label %211

56:                                               ; preds = %21
  %57 = icmp eq i32 %27, 15
  br i1 %57, label %58, label %66

58:                                               ; preds = %58, %56
  %59 = phi i32 [ %64, %58 ], [ 15, %56 ]
  %60 = phi ptr [ %61, %58 ], [ %24, %56 ]
  %61 = getelementptr i8, ptr %60, i32 1
  %62 = load i8, ptr %60, align 1
  %63 = zext i8 %62 to i32
  %64 = add i32 %59, %63
  %65 = icmp eq i8 %62, -1
  br i1 %65, label %58, label %66

66:                                               ; preds = %58, %56
  %67 = phi i32 [ %27, %56 ], [ %64, %58 ]
  %68 = phi ptr [ %24, %56 ], [ %61, %58 ]
  %69 = getelementptr i8, ptr %22, i32 %67
  %70 = icmp ugt ptr %69, %8
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = icmp eq ptr %69, %6
  br i1 %72, label %73, label %226

73:                                               ; preds = %71
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %22, ptr align 1 %68, i32 %67, i1 false) #4
  %74 = getelementptr i8, ptr %68, i32 %67
  %75 = ptrtoint ptr %74 to i32
  %76 = ptrtoint ptr %0 to i32
  %77 = sub i32 %75, %76
  br label %232

78:                                               ; preds = %78, %66
  %79 = phi ptr [ %85, %78 ], [ %22, %66 ]
  %80 = phi ptr [ %86, %78 ], [ %68, %66 ]
  %81 = load i32, ptr %80, align 1
  %82 = getelementptr i8, ptr %80, i32 4
  %83 = load i32, ptr %82, align 1
  store i32 %81, ptr %79, align 1
  %84 = getelementptr i32, ptr %79, i32 1
  store i32 %83, ptr %84, align 1
  %85 = getelementptr i8, ptr %79, i32 8
  %86 = getelementptr i8, ptr %80, i32 8
  %87 = icmp ult ptr %85, %69
  br i1 %87, label %78, label %88

88:                                               ; preds = %78
  %89 = getelementptr i8, ptr %68, i32 %67
  %90 = load i16, ptr %89, align 1
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %89, i32 2
  %93 = sub nsw i32 0, %91
  %94 = getelementptr i8, ptr %69, i32 %93
  %95 = and i32 %26, 15
  br label %96

96:                                               ; preds = %88, %31
  %97 = phi i32 [ %35, %31 ], [ %95, %88 ]
  %98 = phi ptr [ %40, %31 ], [ %94, %88 ]
  %99 = phi i32 [ %37, %31 ], [ %91, %88 ]
  %100 = phi ptr [ %33, %31 ], [ %69, %88 ]
  %101 = phi ptr [ %38, %31 ], [ %92, %88 ]
  store i32 %99, ptr %100, align 1
  %102 = icmp eq i32 %97, 15
  br i1 %102, label %103, label %111

103:                                              ; preds = %103, %96
  %104 = phi i32 [ %109, %103 ], [ 15, %96 ]
  %105 = phi ptr [ %106, %103 ], [ %101, %96 ]
  %106 = getelementptr i8, ptr %105, i32 1
  %107 = load i8, ptr %105, align 1
  %108 = zext i8 %107 to i32
  %109 = add i32 %104, %108
  %110 = icmp eq i8 %107, -1
  br i1 %110, label %103, label %111

111:                                              ; preds = %103, %96
  %112 = phi i32 [ %97, %96 ], [ %109, %103 ]
  %113 = phi ptr [ %101, %96 ], [ %106, %103 ]
  %114 = add i32 %112, 4
  %115 = icmp ult ptr %98, %1
  %116 = getelementptr i8, ptr %100, i32 %114
  br i1 %115, label %117, label %144

117:                                              ; preds = %111
  %118 = icmp ugt ptr %116, %18
  br i1 %118, label %226, label %119, !prof !11

119:                                              ; preds = %117
  %120 = ptrtoint ptr %98 to i32
  %121 = sub i32 %20, %120
  %122 = icmp ugt i32 %114, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = sub i32 0, %121
  %125 = getelementptr i8, ptr %7, i32 %124
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %100, ptr align 1 %125, i32 %114, i1 false) #4
  br label %211

126:                                              ; preds = %119
  %127 = sub i32 %114, %121
  %128 = sub i32 0, %121
  %129 = getelementptr i8, ptr %7, i32 %128
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %100, ptr align 1 %129, i32 %121, i1 false) #4
  %130 = getelementptr i8, ptr %100, i32 %121
  %131 = ptrtoint ptr %130 to i32
  %132 = sub i32 %131, %20
  %133 = icmp ugt i32 %127, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %126
  %135 = icmp ult ptr %130, %116
  br i1 %135, label %136, label %211

136:                                              ; preds = %136, %134
  %137 = phi ptr [ %141, %136 ], [ %130, %134 ]
  %138 = phi ptr [ %139, %136 ], [ %1, %134 ]
  %139 = getelementptr i8, ptr %138, i32 1
  %140 = load i8, ptr %138, align 1
  %141 = getelementptr i8, ptr %137, i32 1
  store i8 %140, ptr %137, align 1
  %142 = icmp eq ptr %141, %116
  br i1 %142, label %211, label %136

143:                                              ; preds = %126
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %130, ptr nonnull align 1 %1, i32 %127, i1 false) #4
  br label %211

144:                                              ; preds = %111
  %145 = icmp ugt ptr %116, %16
  %146 = icmp ult i32 %99, 8
  br i1 %146, label %147, label %167, !prof !11

147:                                              ; preds = %144
  %148 = load i8, ptr %98, align 1
  store i8 %148, ptr %100, align 1
  %149 = getelementptr i8, ptr %98, i32 1
  %150 = load i8, ptr %149, align 1
  %151 = getelementptr i8, ptr %100, i32 1
  store i8 %150, ptr %151, align 1
  %152 = getelementptr i8, ptr %98, i32 2
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr i8, ptr %100, i32 2
  store i8 %153, ptr %154, align 1
  %155 = getelementptr i8, ptr %98, i32 3
  %156 = load i8, ptr %155, align 1
  %157 = getelementptr i8, ptr %100, i32 3
  store i8 %156, ptr %157, align 1
  %158 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %99
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr i8, ptr %98, i32 %159
  %161 = getelementptr i8, ptr %100, i32 4
  %162 = load i32, ptr %160, align 1
  store i32 %162, ptr %161, align 1
  %163 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %99
  %164 = load i32, ptr %163, align 4
  %165 = sub i32 0, %164
  %166 = getelementptr i8, ptr %160, i32 %165
  br label %173

167:                                              ; preds = %144
  %168 = load i32, ptr %98, align 1
  %169 = getelementptr i8, ptr %98, i32 4
  %170 = load i32, ptr %169, align 1
  store i32 %168, ptr %100, align 1
  %171 = getelementptr i32, ptr %100, i32 1
  store i32 %170, ptr %171, align 1
  %172 = getelementptr i8, ptr %98, i32 8
  br label %173

173:                                              ; preds = %167, %147
  %174 = phi ptr [ %166, %147 ], [ %172, %167 ]
  %175 = getelementptr i8, ptr %100, i32 8
  br i1 %145, label %176, label %205, !prof !11

176:                                              ; preds = %173
  %177 = icmp ugt ptr %116, %18
  br i1 %177, label %226, label %178

178:                                              ; preds = %176
  %179 = icmp ult ptr %175, %17
  br i1 %179, label %180, label %194

180:                                              ; preds = %180, %178
  %181 = phi ptr [ %187, %180 ], [ %175, %178 ]
  %182 = phi ptr [ %188, %180 ], [ %174, %178 ]
  %183 = load i32, ptr %182, align 1
  %184 = getelementptr i8, ptr %182, i32 4
  %185 = load i32, ptr %184, align 1
  store i32 %183, ptr %181, align 1
  %186 = getelementptr i32, ptr %181, i32 1
  store i32 %185, ptr %186, align 1
  %187 = getelementptr i8, ptr %181, i32 8
  %188 = getelementptr i8, ptr %182, i32 8
  %189 = icmp ult ptr %187, %17
  br i1 %189, label %180, label %190

190:                                              ; preds = %180
  %191 = ptrtoint ptr %175 to i32
  %192 = sub i32 %19, %191
  %193 = getelementptr i8, ptr %174, i32 %192
  br label %194

194:                                              ; preds = %190, %178
  %195 = phi ptr [ %193, %190 ], [ %174, %178 ]
  %196 = phi ptr [ %17, %190 ], [ %175, %178 ]
  %197 = icmp ult ptr %196, %116
  br i1 %197, label %198, label %211

198:                                              ; preds = %198, %194
  %199 = phi ptr [ %203, %198 ], [ %196, %194 ]
  %200 = phi ptr [ %201, %198 ], [ %195, %194 ]
  %201 = getelementptr i8, ptr %200, i32 1
  %202 = load i8, ptr %200, align 1
  %203 = getelementptr i8, ptr %199, i32 1
  store i8 %202, ptr %199, align 1
  %204 = icmp ult ptr %203, %116
  br i1 %204, label %198, label %211

205:                                              ; preds = %173
  %206 = load i32, ptr %174, align 1
  %207 = getelementptr i8, ptr %174, i32 4
  %208 = load i32, ptr %207, align 1
  store i32 %206, ptr %175, align 1
  %209 = getelementptr i8, ptr %100, i32 12
  store i32 %208, ptr %209, align 1
  %210 = icmp ugt i32 %114, 16
  br i1 %210, label %214, label %211

211:                                              ; preds = %216, %205, %198, %194, %143, %136, %134, %123, %46
  %212 = phi ptr [ %116, %205 ], [ %116, %194 ], [ %130, %134 ], [ %116, %123 ], [ %116, %143 ], [ %55, %46 ], [ %116, %136 ], [ %116, %198 ], [ %116, %216 ]
  %213 = phi ptr [ %113, %205 ], [ %113, %194 ], [ %113, %134 ], [ %113, %123 ], [ %113, %143 ], [ %38, %46 ], [ %113, %136 ], [ %113, %198 ], [ %113, %216 ]
  br label %21

214:                                              ; preds = %205
  %215 = getelementptr i8, ptr %100, i32 16
  br label %216

216:                                              ; preds = %216, %214
  %217 = phi ptr [ %215, %214 ], [ %224, %216 ]
  %218 = phi ptr [ %174, %214 ], [ %219, %216 ]
  %219 = getelementptr i8, ptr %218, i32 8
  %220 = load i32, ptr %219, align 1
  %221 = getelementptr i8, ptr %218, i32 12
  %222 = load i32, ptr %221, align 1
  store i32 %220, ptr %217, align 1
  %223 = getelementptr i32, ptr %217, i32 1
  store i32 %222, ptr %223, align 1
  %224 = getelementptr i8, ptr %217, i32 8
  %225 = icmp ult ptr %224, %116
  br i1 %225, label %216, label %211

226:                                              ; preds = %176, %117, %71
  %227 = phi ptr [ %68, %71 ], [ %113, %176 ], [ %113, %117 ]
  %228 = ptrtoint ptr %227 to i32
  %229 = ptrtoint ptr %0 to i32
  %230 = xor i32 %228, -1
  %231 = add i32 %230, %229
  br label %232

232:                                              ; preds = %226, %73, %11
  %233 = phi i32 [ %231, %226 ], [ %77, %73 ], [ %14, %11 ]
  ret i32 %233
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5) #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %21

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 %5
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp sgt i32 %5, 65534
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call fastcc i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %21

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %5)
  br label %21

19:                                               ; preds = %10
  %20 = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %21

21:                                               ; preds = %19, %17, %15, %8
  %22 = phi i32 [ %9, %8 ], [ %16, %15 ], [ %18, %17 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_fast_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %4, 0
  %7 = getelementptr i8, ptr %3, i32 %4
  %8 = icmp eq ptr %7, %1
  %9 = or i1 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @LZ4_decompress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %14

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @LZ4_decompress_fast_extDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 4001}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 4003, i32 4001}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 2002}
