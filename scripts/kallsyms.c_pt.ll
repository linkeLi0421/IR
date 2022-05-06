; ModuleID = '/llk/IR/scripts/kallsyms.c_pt.bc'
source_filename = "../scripts/kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_range = type { ptr, ptr, i64, i64 }
%struct.sym_entry = type { i64, i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"--all-symbols\00", align 1
@all_symbols = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"--absolute-percpu\00", align 1
@absolute_percpu = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"--base-relative\00", align 1
@base_relative = internal unnamed_addr global i1 false, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"Usage: kallsyms [--all-symbols] [--base-relative] < in.map > out.S\0A\00", align 1
@table_cnt = internal unnamed_addr global i32 0, align 4
@table_size = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%llx %c %499s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Read error or end of file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"Symbol %s too long for kallsyms (%zu >= %d).\0APlease increase KSYM_NAME_LEN both in kernel and kallsyms.c\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_text\00", align 1
@_text = internal unnamed_addr global i64 0, align 8
@text_ranges = internal unnamed_addr global [2 x %struct.addr_range] [%struct.addr_range { ptr @.str.40, ptr @.str.41, i64 0, i64 0 }, %struct.addr_range { ptr @.str.42, ptr @.str.43, i64 0, i64 0 }], align 16
@percpu_range = internal unnamed_addr global %struct.addr_range { ptr @.str.44, ptr @.str.45, i64 -1, i64 0 }, align 8
@.str.9 = private unnamed_addr constant [64 x i8] c"kallsyms failure: unable to allocate required amount of memory\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"kallsyms_addresses\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"kallsyms_offsets\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"kallsyms_relative_base\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"kallsyms_num_syms\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"kallsyms_names\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"kallsyms_markers\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"kallsyms_token_table\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"kallsyms_token_index\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"_SDA_BASE_\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"_SDA2_BASE_\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"__crc_\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"__efistub_\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"__kvm_nvhe_\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"__AArch64ADRPThunk_\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"__ARMV5PILongThunk_\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"__ARMV7PILongThunk_\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"__ThumbV7PILongThunk_\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"__LA25Thunk_\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"__microLA25Thunk_\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"_from_arm\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"_from_thumb\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"_veneer\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c".long_branch.\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c".plt_branch.\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"__kernel_syscall_via_break\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"__kernel_syscall_via_epc\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"__kernel_sigtramp\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"__gp\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"_stext\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"_etext\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"_sinittext\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"_einittext\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"__per_cpu_start\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"__per_cpu_end\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"No valid symbol.\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"start_\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"stop_\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"end_\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"_start\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"_end\00", align 1
@relative_base = internal unnamed_addr global i64 0, align 8
@token_profit = internal unnamed_addr global [65536 x i32] zeroinitializer, align 16
@best_table = internal global [256 x [2 x i8]] zeroinitializer, align 16
@best_table_len = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@.str.62 = private unnamed_addr constant [71 x i8] c"kallsyms failure: %s symbol value %#llx out of range in relative mode\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"\09.long\09%#x\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"\09PTR\09%#llx\0A\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"\09.long\09%u\0A\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"kallsyms failure: unable to allocate required memory\0A\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"\09.byte 0x%02x\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c", 0x%02x\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"\09.asciz\09\22%s\22\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"\09.short\09%d\0A\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c".globl %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text + %#llx\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text - %#llx\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"#include <asm/bitsperlong.h>\00", align 1
@str.79 = private unnamed_addr constant [24 x i8] c"#if BITS_PER_LONG == 64\00", align 1
@str.80 = private unnamed_addr constant [18 x i8] c"#define PTR .quad\00", align 1
@str.81 = private unnamed_addr constant [23 x i8] c"#define ALGN .balign 8\00", align 1
@str.82 = private unnamed_addr constant [6 x i8] c"#else\00", align 1
@str.83 = private unnamed_addr constant [18 x i8] c"#define PTR .long\00", align 1
@str.84 = private unnamed_addr constant [23 x i8] c"#define ALGN .balign 4\00", align 1
@str.85 = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@str.86 = private unnamed_addr constant [23 x i8] c"\09.section .rodata, \22a\22\00", align 1
@str.87 = private unnamed_addr constant [6 x i8] c"\09ALGN\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i32], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca [500 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = zext i32 %0 to i64
  br label %11

11:                                               ; preds = %26, %9
  %12 = phi i64 [ 1, %9 ], [ %28, %26 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(14) @.str) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(18) @.str.1) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(16) @.str.2) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %25 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 67, i64 1, ptr %24) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

26:                                               ; preds = %20, %17, %11
  %27 = phi ptr [ @all_symbols, %11 ], [ @absolute_percpu, %17 ], [ @base_relative, %20 ]
  store i1 true, ptr %27, align 4
  %28 = add nuw nsw i64 %12, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %35, label %11

30:                                               ; preds = %2
  %31 = icmp eq i32 %0, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr @stderr, align 8, !tbaa !5
  %34 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 67, i64 1, ptr %33) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

35:                                               ; preds = %30, %26
  %36 = load ptr, ptr @stdin, align 8, !tbaa !5
  %37 = tail call i32 @feof(ptr noundef %36) #22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %254

39:                                               ; preds = %251, %35
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %40 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %36, ptr noundef nonnull @.str.5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  switch i32 %40, label %41 [
    i32 3, label %47
    i32 -1, label %221
  ]

41:                                               ; preds = %39
  %42 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 500, ptr noundef %36) #22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %221

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !5
  %46 = call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %45) #20
  br label %221

47:                                               ; preds = %39
  %48 = call i64 @strlen(ptr noundef nonnull %5) #19
  %49 = icmp ugt i64 %48, 127
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr @stderr, align 8, !tbaa !5
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, i64 noundef %48, i32 noundef 128) #20
  br label %221

53:                                               ; preds = %47
  %54 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.8, i64 6) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, ptr %7, align 8, !tbaa !9
  store i64 %57, ptr @_text, align 8, !tbaa !9
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i8, ptr %6, align 1, !tbaa !11
  %60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %5, ptr noundef nonnull dereferenceable(19) @.str.10, i64 19) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %221, label %62

62:                                               ; preds = %58
  %63 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %5, ptr noundef nonnull dereferenceable(17) @.str.11, i64 17) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %221, label %65

65:                                               ; preds = %62
  %66 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %5, ptr noundef nonnull dereferenceable(23) @.str.12, i64 23) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %221, label %68

68:                                               ; preds = %65
  %69 = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) %5, ptr noundef nonnull dereferenceable(18) @.str.13, i64 18) #22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %221, label %71

71:                                               ; preds = %68
  %72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %5, ptr noundef nonnull dereferenceable(15) @.str.14, i64 15) #22
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %221, label %74

74:                                               ; preds = %71
  %75 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %5, ptr noundef nonnull dereferenceable(17) @.str.15, i64 17) #22
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %221, label %77

77:                                               ; preds = %74
  %78 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %5, ptr noundef nonnull dereferenceable(21) @.str.16, i64 21) #22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %221, label %80

80:                                               ; preds = %77
  %81 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %5, ptr noundef nonnull dereferenceable(21) @.str.17, i64 21) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %221, label %83

83:                                               ; preds = %80
  %84 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) @.str.18, i64 11) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %221, label %86

86:                                               ; preds = %83
  %87 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %5, ptr noundef nonnull dereferenceable(12) @.str.19, i64 12) #22
  %88 = icmp eq i32 %87, 0
  %89 = load i8, ptr %5, align 16
  %90 = icmp eq i8 %89, 36
  %91 = select i1 %88, i1 true, i1 %90
  %92 = load i64, ptr %5, align 16
  %93 = icmp eq i64 %92, 4850462841154653230
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %221, label %95

95:                                               ; preds = %86
  %96 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.22, i64 6) #22
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %221, label %98

98:                                               ; preds = %95
  %99 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %5, ptr noundef nonnull dereferenceable(10) @.str.23, i64 10) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %221, label %101

101:                                              ; preds = %98
  %102 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) @.str.24, i64 11) #22
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %221, label %104

104:                                              ; preds = %101
  %105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %5, ptr noundef nonnull dereferenceable(19) @.str.25, i64 19) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %221, label %107

107:                                              ; preds = %104
  %108 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %5, ptr noundef nonnull dereferenceable(19) @.str.26, i64 19) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %221, label %110

110:                                              ; preds = %107
  %111 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %5, ptr noundef nonnull dereferenceable(19) @.str.27, i64 19) #22
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %221, label %113

113:                                              ; preds = %110
  %114 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %5, ptr noundef nonnull dereferenceable(21) @.str.28, i64 21) #22
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %221, label %116

116:                                              ; preds = %113
  %117 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %5, ptr noundef nonnull dereferenceable(12) @.str.29, i64 12) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %221, label %119

119:                                              ; preds = %116
  %120 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %5, ptr noundef nonnull dereferenceable(17) @.str.30, i64 17) #22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %221, label %122

122:                                              ; preds = %119
  %123 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #19
  %124 = add i64 %123, -9
  %125 = and i64 %124, 2147483648
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = shl i64 %124, 32
  %129 = ashr exact i64 %128, 32
  %130 = getelementptr inbounds i8, ptr %5, i64 %129
  %131 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %130, ptr noundef nonnull dereferenceable(10) @.str.31) #19
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %221, label %133

133:                                              ; preds = %127, %122
  %134 = add i64 %123, -11
  %135 = and i64 %134, 2147483648
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = shl i64 %134, 32
  %139 = ashr exact i64 %138, 32
  %140 = getelementptr inbounds i8, ptr %5, i64 %139
  %141 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(12) @.str.32) #19
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %221, label %143

143:                                              ; preds = %137, %133
  %144 = add i64 %123, -7
  %145 = and i64 %144, 2147483648
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = shl i64 %144, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds i8, ptr %5, i64 %149
  %151 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %150, ptr noundef nonnull dereferenceable(8) @.str.33) #19
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %221, label %153

153:                                              ; preds = %147, %143
  %154 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull @.str.34) #19
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %221

156:                                              ; preds = %153
  %157 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull @.str.35) #19
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %221

159:                                              ; preds = %156
  switch i8 %59, label %160 [
    i8 117, label %221
    i8 110, label %221
    i8 85, label %221
    i8 78, label %221
  ]

160:                                              ; preds = %159
  %161 = tail call ptr @__ctype_toupper_loc() #23
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = sext i8 %59 to i64
  %164 = getelementptr inbounds i32, ptr %162, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !12
  %166 = icmp eq i32 %165, 65
  br i1 %166, label %167, label %179

167:                                              ; preds = %160
  %168 = call i32 @bcmp(ptr noundef nonnull dereferenceable(27) %5, ptr noundef nonnull dereferenceable(27) @.str.36, i64 27) #22
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %167
  %171 = call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %5, ptr noundef nonnull dereferenceable(25) @.str.37, i64 25) #22
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) %5, ptr noundef nonnull dereferenceable(18) @.str.38, i64 18) #22
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %5, ptr noundef nonnull dereferenceable(5) @.str.39, i64 5) #22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %221

179:                                              ; preds = %176, %173, %170, %167, %160
  %180 = load i64, ptr %7, align 8, !tbaa !9
  %181 = load ptr, ptr @text_ranges, align 16, !tbaa !14
  %182 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %181) #19
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %194, %179
  %185 = phi i64 [ 0, %179 ], [ 1, %194 ]
  %186 = getelementptr inbounds %struct.addr_range, ptr @text_ranges, i64 %185, i32 2
  br label %202

187:                                              ; preds = %179
  %188 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 1), align 8, !tbaa !16
  %189 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %188) #19
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %198, %187
  %192 = phi i64 [ 0, %187 ], [ 1, %198 ]
  %193 = getelementptr inbounds %struct.addr_range, ptr @text_ranges, i64 %192, i32 3
  br label %202

194:                                              ; preds = %187
  %195 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1), align 16, !tbaa !14
  %196 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %195) #19
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %184, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 1), align 8, !tbaa !16
  %200 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %199) #19
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %191, label %204

202:                                              ; preds = %191, %184
  %203 = phi ptr [ %193, %191 ], [ %186, %184 ]
  store i64 %180, ptr %203, align 8, !tbaa !9
  br label %204

204:                                              ; preds = %202, %198
  %205 = load ptr, ptr @percpu_range, align 8, !tbaa !14
  %206 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %205) #19
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load ptr, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 1), align 8, !tbaa !16
  %210 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %209) #19
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208, %204
  %213 = phi ptr [ getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), %204 ], [ getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), %208 ]
  store i64 %180, ptr %213, align 8, !tbaa !9
  br label %214

214:                                              ; preds = %212, %208
  %215 = add nuw nsw i64 %48, 26
  %216 = call noalias ptr @malloc(i64 noundef %215) #24
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load ptr, ptr @stderr, align 8, !tbaa !5
  %220 = call i64 @fwrite(ptr nonnull @.str.9, i64 63, i64 1, ptr %219) #20
  call void @exit(i32 noundef 1) #21
  unreachable

221:                                              ; preds = %176, %159, %159, %159, %159, %156, %153, %147, %137, %127, %119, %116, %113, %110, %107, %104, %101, %98, %95, %86, %83, %80, %77, %74, %71, %68, %65, %62, %58, %50, %44, %41, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %5) #22
  br label %251

222:                                              ; preds = %214
  %223 = trunc i64 %48 to i32
  %224 = add nuw nsw i32 %223, 1
  store i64 %180, ptr %216, align 8, !tbaa !9
  %225 = getelementptr inbounds %struct.sym_entry, ptr %216, i64 0, i32 1
  store i32 %224, ptr %225, align 8, !tbaa !12
  %226 = getelementptr inbounds %struct.sym_entry, ptr %216, i64 0, i32 4
  store i8 %59, ptr %226, align 4, !tbaa !11
  %227 = getelementptr inbounds %struct.sym_entry, ptr %216, i64 0, i32 4, i64 1
  %228 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %227, ptr noundef nonnull %5) #22
  %229 = getelementptr inbounds %struct.sym_entry, ptr %216, i64 0, i32 3
  store i32 0, ptr %229, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %5) #22
  %230 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %231 = getelementptr inbounds %struct.sym_entry, ptr %216, i64 0, i32 2
  store i32 %230, ptr %231, align 4, !tbaa !12
  %232 = load i32, ptr @table_size, align 4, !tbaa !12
  %233 = icmp ult i32 %230, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %222
  %235 = load ptr, ptr @table, align 8, !tbaa !5
  br label %246

236:                                              ; preds = %222
  %237 = add i32 %232, 10000
  store i32 %237, ptr @table_size, align 4, !tbaa !12
  %238 = load ptr, ptr @table, align 8, !tbaa !5
  %239 = zext i32 %237 to i64
  %240 = shl nuw nsw i64 %239, 3
  %241 = call ptr @realloc(ptr noundef %238, i64 noundef %240) #25
  store ptr %241, ptr @table, align 8, !tbaa !5
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load ptr, ptr @stderr, align 8, !tbaa !5
  %245 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %244) #20
  call void @exit(i32 noundef 1) #21
  unreachable

246:                                              ; preds = %236, %234
  %247 = phi ptr [ %235, %234 ], [ %241, %236 ]
  %248 = add i32 %230, 1
  store i32 %248, ptr @table_cnt, align 4, !tbaa !12
  %249 = zext i32 %230 to i64
  %250 = getelementptr inbounds ptr, ptr %247, i64 %249
  store ptr %216, ptr %250, align 8, !tbaa !5
  br label %251

251:                                              ; preds = %246, %221
  %252 = call i32 @feof(ptr noundef %36) #22
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %39, label %254

254:                                              ; preds = %251, %35
  %255 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 0, ptr @table_cnt, align 4, !tbaa !12
  br label %308

258:                                              ; preds = %254
  %259 = load ptr, ptr @table, align 8, !tbaa !5
  %260 = load i1, ptr @all_symbols, align 4
  %261 = zext i32 %255 to i64
  br label %262

262:                                              ; preds = %302, %258
  %263 = phi i64 [ 0, %258 ], [ %304, %302 ]
  %264 = phi i32 [ 0, %258 ], [ %303, %302 ]
  %265 = getelementptr inbounds ptr, ptr %259, i64 %263
  %266 = load ptr, ptr %265, align 8, !tbaa !5
  %267 = getelementptr inbounds %struct.sym_entry, ptr %266, i64 0, i32 4, i64 1
  br i1 %260, label %294, label %268

268:                                              ; preds = %262
  %269 = load i64, ptr %266, align 8, !tbaa !9
  %270 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 2), align 16, !tbaa !17
  %271 = icmp ult i64 %269, %270
  %272 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 3), align 8
  %273 = icmp ugt i64 %269, %272
  %274 = select i1 %271, i1 true, i1 %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %268
  %276 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 2), align 16, !tbaa !17
  %277 = icmp ult i64 %269, %276
  %278 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 3), align 8
  %279 = icmp ugt i64 %269, %278
  %280 = select i1 %277, i1 true, i1 %279
  br i1 %280, label %301, label %281

281:                                              ; preds = %275, %268
  %282 = icmp eq i64 %269, %272
  br i1 %282, label %283, label %287

283:                                              ; preds = %281
  %284 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 1), align 8, !tbaa !16
  %285 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %267, ptr noundef nonnull dereferenceable(1) %284) #19
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %283, %281
  %288 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 3), align 8, !tbaa !18
  %289 = icmp eq i64 %269, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %287
  %291 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 1), align 8, !tbaa !16
  %292 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %267, ptr noundef nonnull dereferenceable(1) %291) #19
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %290, %287, %262
  %295 = zext i32 %264 to i64
  %296 = icmp eq i64 %263, %295
  br i1 %296, label %299, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds ptr, ptr %259, i64 %295
  store ptr %266, ptr %298, align 8, !tbaa !5
  br label %299

299:                                              ; preds = %297, %294
  %300 = add i32 %264, 1
  br label %302

301:                                              ; preds = %290, %283, %275
  call void @free(ptr noundef nonnull %266) #22
  br label %302

302:                                              ; preds = %301, %299
  %303 = phi i32 [ %300, %299 ], [ %264, %301 ]
  %304 = add nuw nsw i64 %263, 1
  %305 = icmp eq i64 %304, %261
  br i1 %305, label %306, label %262

306:                                              ; preds = %302
  store i32 %303, ptr @table_cnt, align 4, !tbaa !12
  %307 = icmp eq i32 %303, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %306, %257
  %309 = load ptr, ptr @stderr, align 8, !tbaa !5
  %310 = call i64 @fwrite(ptr nonnull @.str.46, i64 17, i64 1, ptr %309) #20
  call void @exit(i32 noundef 1) #21
  unreachable

311:                                              ; preds = %306
  %312 = load i1, ptr @absolute_percpu, align 4
  %313 = zext i32 %303 to i64
  br i1 %312, label %314, label %376

314:                                              ; preds = %311
  %315 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), align 8, !tbaa !17
  %316 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), align 8
  %317 = and i64 %313, 1
  %318 = icmp eq i32 %303, 1
  br i1 %318, label %360, label %319

319:                                              ; preds = %314
  %320 = and i64 %313, 4294967294
  br label %321

321:                                              ; preds = %354, %319
  %322 = phi i64 [ %316, %319 ], [ %355, %354 ]
  %323 = phi i64 [ %315, %319 ], [ %356, %354 ]
  %324 = phi i64 [ 0, %319 ], [ %357, %354 ]
  %325 = phi i64 [ 0, %319 ], [ %358, %354 ]
  %326 = getelementptr inbounds ptr, ptr %259, i64 %324
  %327 = load ptr, ptr %326, align 8, !tbaa !5
  %328 = load i64, ptr %327, align 8, !tbaa !9
  %329 = icmp ult i64 %328, %323
  %330 = icmp ugt i64 %328, %322
  %331 = select i1 %329, i1 true, i1 %330
  br i1 %331, label %338, label %332

332:                                              ; preds = %321
  %333 = getelementptr inbounds %struct.sym_entry, ptr %327, i64 0, i32 4
  store i8 65, ptr %333, align 4, !tbaa !11
  %334 = load ptr, ptr %326, align 8, !tbaa !5
  %335 = getelementptr inbounds %struct.sym_entry, ptr %334, i64 0, i32 3
  store i32 1, ptr %335, align 8, !tbaa !12
  %336 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), align 8, !tbaa !17
  %337 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), align 8
  br label %338

338:                                              ; preds = %332, %321
  %339 = phi i64 [ %337, %332 ], [ %322, %321 ]
  %340 = phi i64 [ %336, %332 ], [ %323, %321 ]
  %341 = or i64 %324, 1
  %342 = getelementptr inbounds ptr, ptr %259, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  %344 = load i64, ptr %343, align 8, !tbaa !9
  %345 = icmp ult i64 %344, %340
  %346 = icmp ugt i64 %344, %339
  %347 = select i1 %345, i1 true, i1 %346
  br i1 %347, label %354, label %348

348:                                              ; preds = %338
  %349 = getelementptr inbounds %struct.sym_entry, ptr %343, i64 0, i32 4
  store i8 65, ptr %349, align 4, !tbaa !11
  %350 = load ptr, ptr %342, align 8, !tbaa !5
  %351 = getelementptr inbounds %struct.sym_entry, ptr %350, i64 0, i32 3
  store i32 1, ptr %351, align 8, !tbaa !12
  %352 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), align 8, !tbaa !17
  %353 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), align 8
  br label %354

354:                                              ; preds = %348, %338
  %355 = phi i64 [ %353, %348 ], [ %339, %338 ]
  %356 = phi i64 [ %352, %348 ], [ %340, %338 ]
  %357 = add nuw nsw i64 %324, 2
  %358 = add i64 %325, 2
  %359 = icmp eq i64 %358, %320
  br i1 %359, label %360, label %321

360:                                              ; preds = %354, %314
  %361 = phi i64 [ %316, %314 ], [ %355, %354 ]
  %362 = phi i64 [ %315, %314 ], [ %356, %354 ]
  %363 = phi i64 [ 0, %314 ], [ %357, %354 ]
  %364 = icmp eq i64 %317, 0
  br i1 %364, label %376, label %365

365:                                              ; preds = %360
  %366 = getelementptr inbounds ptr, ptr %259, i64 %363
  %367 = load ptr, ptr %366, align 8, !tbaa !5
  %368 = load i64, ptr %367, align 8, !tbaa !9
  %369 = icmp ult i64 %368, %362
  %370 = icmp ugt i64 %368, %361
  %371 = select i1 %369, i1 true, i1 %370
  br i1 %371, label %376, label %372

372:                                              ; preds = %365
  %373 = getelementptr inbounds %struct.sym_entry, ptr %367, i64 0, i32 4
  store i8 65, ptr %373, align 4, !tbaa !11
  %374 = load ptr, ptr %366, align 8, !tbaa !5
  %375 = getelementptr inbounds %struct.sym_entry, ptr %374, i64 0, i32 3
  store i32 1, ptr %375, align 8, !tbaa !12
  br label %376

376:                                              ; preds = %372, %365, %360, %311
  call void @qsort(ptr noundef nonnull %259, i64 noundef %313, i64 noundef 8, ptr noundef nonnull @compare_symbols) #22
  %377 = load i1, ptr @base_relative, align 4
  %378 = load i32, ptr @table_cnt, align 4, !tbaa !12
  br i1 %377, label %381, label %379

379:                                              ; preds = %376
  %380 = load ptr, ptr @table, align 8
  br label %398

381:                                              ; preds = %376
  %382 = icmp eq i32 %378, 0
  %383 = load ptr, ptr @table, align 8
  br i1 %382, label %487, label %384

384:                                              ; preds = %381
  %385 = zext i32 %378 to i64
  br label %389

386:                                              ; preds = %389
  %387 = add nuw nsw i64 %390, 1
  %388 = icmp eq i64 %387, %385
  br i1 %388, label %398, label %389

389:                                              ; preds = %386, %384
  %390 = phi i64 [ 0, %384 ], [ %387, %386 ]
  %391 = getelementptr inbounds ptr, ptr %383, i64 %390
  %392 = load ptr, ptr %391, align 8, !tbaa !5
  %393 = getelementptr inbounds %struct.sym_entry, ptr %392, i64 0, i32 3
  %394 = load i32, ptr %393, align 8, !tbaa !12
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %386

396:                                              ; preds = %389
  %397 = load i64, ptr %392, align 8, !tbaa !9
  store i64 %397, ptr @relative_base, align 8, !tbaa !9
  br label %398

398:                                              ; preds = %396, %386, %379
  %399 = phi ptr [ %380, %379 ], [ %383, %396 ], [ %383, %386 ]
  %400 = icmp eq i32 %378, 0
  br i1 %400, label %487, label %401

401:                                              ; preds = %398
  %402 = zext i32 %378 to i64
  br label %403

403:                                              ; preds = %460, %401
  %404 = phi i64 [ 0, %401 ], [ %461, %460 ]
  %405 = getelementptr inbounds ptr, ptr %399, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !5
  %407 = getelementptr inbounds %struct.sym_entry, ptr %406, i64 0, i32 4
  %408 = getelementptr inbounds %struct.sym_entry, ptr %406, i64 0, i32 1
  %409 = load i32, ptr %408, align 8, !tbaa !12
  %410 = icmp sgt i32 %409, 1
  br i1 %410, label %411, label %460

411:                                              ; preds = %403
  %412 = add nsw i32 %409, -1
  %413 = zext i32 %412 to i64
  %414 = load i8, ptr %407, align 1, !tbaa !11
  %415 = and i64 %413, 1
  %416 = icmp eq i32 %412, 1
  br i1 %416, label %445, label %417

417:                                              ; preds = %411
  %418 = and i64 %413, 4294967294
  br label %419

419:                                              ; preds = %419, %417
  %420 = phi i8 [ %414, %417 ], [ %436, %419 ]
  %421 = phi i64 [ 0, %417 ], [ %434, %419 ]
  %422 = phi i64 [ 0, %417 ], [ %443, %419 ]
  %423 = zext i8 %420 to i64
  %424 = or i64 %421, 1
  %425 = getelementptr inbounds i8, ptr %407, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !11
  %427 = zext i8 %426 to i64
  %428 = shl nuw nsw i64 %427, 8
  %429 = or i64 %428, %423
  %430 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %429
  %431 = load i32, ptr %430, align 4, !tbaa !12
  %432 = add nsw i32 %431, 1
  store i32 %432, ptr %430, align 4, !tbaa !12
  %433 = zext i8 %426 to i64
  %434 = add nuw nsw i64 %421, 2
  %435 = getelementptr inbounds i8, ptr %407, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !11
  %437 = zext i8 %436 to i64
  %438 = shl nuw nsw i64 %437, 8
  %439 = or i64 %438, %433
  %440 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !12
  %442 = add nsw i32 %441, 1
  store i32 %442, ptr %440, align 4, !tbaa !12
  %443 = add i64 %422, 2
  %444 = icmp eq i64 %443, %418
  br i1 %444, label %445, label %419

445:                                              ; preds = %419, %411
  %446 = phi i8 [ %414, %411 ], [ %436, %419 ]
  %447 = phi i64 [ 0, %411 ], [ %434, %419 ]
  %448 = icmp eq i64 %415, 0
  br i1 %448, label %460, label %449

449:                                              ; preds = %445
  %450 = zext i8 %446 to i64
  %451 = add nuw nsw i64 %447, 1
  %452 = getelementptr inbounds i8, ptr %407, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !11
  %454 = zext i8 %453 to i64
  %455 = shl nuw nsw i64 %454, 8
  %456 = or i64 %455, %450
  %457 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !12
  %459 = add nsw i32 %458, 1
  store i32 %459, ptr %457, align 4, !tbaa !12
  br label %460

460:                                              ; preds = %449, %445, %403
  %461 = add nuw nsw i64 %404, 1
  %462 = icmp eq i64 %461, %402
  br i1 %462, label %463, label %403

463:                                              ; preds = %484, %460
  %464 = phi i64 [ %485, %484 ], [ 0, %460 ]
  %465 = getelementptr inbounds ptr, ptr %399, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !5
  %467 = getelementptr inbounds %struct.sym_entry, ptr %466, i64 0, i32 1
  %468 = load i32, ptr %467, align 8, !tbaa !12
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %484, label %470

470:                                              ; preds = %470, %463
  %471 = phi i64 [ %478, %470 ], [ 0, %463 ]
  %472 = phi ptr [ %479, %470 ], [ %466, %463 ]
  %473 = getelementptr inbounds %struct.sym_entry, ptr %472, i64 0, i32 4, i64 %471
  %474 = load i8, ptr %473, align 1, !tbaa !11
  %475 = zext i8 %474 to i64
  %476 = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %475
  store i8 %474, ptr %476, align 2, !tbaa !11
  %477 = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %475
  store i8 1, ptr %477, align 1, !tbaa !11
  %478 = add nuw nsw i64 %471, 1
  %479 = load ptr, ptr %465, align 8, !tbaa !5
  %480 = getelementptr inbounds %struct.sym_entry, ptr %479, i64 0, i32 1
  %481 = load i32, ptr %480, align 8, !tbaa !12
  %482 = zext i32 %481 to i64
  %483 = icmp ult i64 %478, %482
  br i1 %483, label %470, label %484

484:                                              ; preds = %470, %463
  %485 = add nuw nsw i64 %464, 1
  %486 = icmp eq i64 %485, %402
  br i1 %486, label %487, label %463

487:                                              ; preds = %484, %398, %381
  %488 = phi ptr [ %399, %398 ], [ %383, %381 ], [ %399, %484 ]
  %489 = phi i1 [ true, %398 ], [ true, %381 ], [ false, %484 ]
  %490 = phi i64 [ 0, %398 ], [ 0, %381 ], [ %402, %484 ]
  br label %491

491:                                              ; preds = %706, %487
  %492 = phi i64 [ 255, %487 ], [ %707, %706 ]
  %493 = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %492
  %494 = load i8, ptr %493, align 1, !tbaa !11
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %496, label %706

496:                                              ; preds = %496, %491
  %497 = phi i64 [ %513, %496 ], [ 0, %491 ]
  %498 = phi i32 [ %512, %496 ], [ -10000, %491 ]
  %499 = phi i32 [ %511, %496 ], [ 0, %491 ]
  %500 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %497
  %501 = load i32, ptr %500, align 8, !tbaa !12
  %502 = icmp sgt i32 %501, %498
  %503 = trunc i64 %497 to i32
  %504 = select i1 %502, i32 %503, i32 %499
  %505 = call i32 @llvm.smax.i32(i32 %501, i32 %498) #22
  %506 = or i64 %497, 1
  %507 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %506
  %508 = load i32, ptr %507, align 4, !tbaa !12
  %509 = icmp sgt i32 %508, %505
  %510 = trunc i64 %506 to i32
  %511 = select i1 %509, i32 %510, i32 %504
  %512 = call i32 @llvm.smax.i32(i32 %508, i32 %505) #22
  %513 = add nuw nsw i64 %497, 2
  %514 = icmp eq i64 %513, 65536
  br i1 %514, label %515, label %496

515:                                              ; preds = %496
  %516 = sext i32 %511 to i64
  %517 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !12
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %709, label %520

520:                                              ; preds = %515
  store i8 2, ptr %493, align 1, !tbaa !11
  %521 = trunc i32 %511 to i8
  %522 = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %492
  store i8 %521, ptr %522, align 2, !tbaa !11
  %523 = lshr i32 %511, 8
  %524 = trunc i32 %523 to i8
  %525 = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %492, i64 1
  store i8 %524, ptr %525, align 1, !tbaa !11
  br i1 %489, label %706, label %526

526:                                              ; preds = %520
  %527 = getelementptr inbounds i8, ptr %522, i64 1
  %528 = trunc i64 %492 to i8
  br label %529

529:                                              ; preds = %703, %526
  %530 = phi i64 [ 0, %526 ], [ %704, %703 ]
  %531 = getelementptr inbounds ptr, ptr %488, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !5
  %533 = getelementptr inbounds %struct.sym_entry, ptr %532, i64 0, i32 1
  %534 = load i32, ptr %533, align 8, !tbaa !12
  %535 = getelementptr inbounds %struct.sym_entry, ptr %532, i64 0, i32 4
  %536 = icmp sgt i32 %534, 1
  br i1 %536, label %537, label %703

537:                                              ; preds = %529
  %538 = add nsw i32 %534, -1
  %539 = load i8, ptr %522, align 2, !tbaa !11
  %540 = zext i32 %538 to i64
  br label %541

541:                                              ; preds = %552, %537
  %542 = phi i64 [ 0, %537 ], [ %546, %552 ]
  %543 = getelementptr inbounds i8, ptr %535, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !11
  %545 = icmp eq i8 %544, %539
  %546 = add nuw nsw i64 %542, 1
  br i1 %545, label %547, label %552

547:                                              ; preds = %541
  %548 = getelementptr inbounds i8, ptr %535, i64 %546
  %549 = load i8, ptr %548, align 1, !tbaa !11
  %550 = load i8, ptr %527, align 1, !tbaa !11
  %551 = icmp eq i8 %549, %550
  br i1 %551, label %554, label %552

552:                                              ; preds = %547, %541
  %553 = icmp eq i64 %546, %540
  br i1 %553, label %703, label %541

554:                                              ; preds = %547
  %555 = load i8, ptr %535, align 1, !tbaa !11
  %556 = and i64 %540, 1
  %557 = icmp eq i32 %538, 1
  br i1 %557, label %586, label %558

558:                                              ; preds = %554
  %559 = and i64 %540, 4294967294
  br label %560

560:                                              ; preds = %560, %558
  %561 = phi i8 [ %555, %558 ], [ %577, %560 ]
  %562 = phi i64 [ 0, %558 ], [ %575, %560 ]
  %563 = phi i64 [ 0, %558 ], [ %584, %560 ]
  %564 = zext i8 %561 to i64
  %565 = or i64 %562, 1
  %566 = getelementptr inbounds i8, ptr %535, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !11
  %568 = zext i8 %567 to i64
  %569 = shl nuw nsw i64 %568, 8
  %570 = or i64 %569, %564
  %571 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %570
  %572 = load i32, ptr %571, align 4, !tbaa !12
  %573 = add nsw i32 %572, -1
  store i32 %573, ptr %571, align 4, !tbaa !12
  %574 = zext i8 %567 to i64
  %575 = add nuw nsw i64 %562, 2
  %576 = getelementptr inbounds i8, ptr %535, i64 %575
  %577 = load i8, ptr %576, align 1, !tbaa !11
  %578 = zext i8 %577 to i64
  %579 = shl nuw nsw i64 %578, 8
  %580 = or i64 %579, %574
  %581 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %580
  %582 = load i32, ptr %581, align 4, !tbaa !12
  %583 = add nsw i32 %582, -1
  store i32 %583, ptr %581, align 4, !tbaa !12
  %584 = add i64 %563, 2
  %585 = icmp eq i64 %584, %559
  br i1 %585, label %586, label %560

586:                                              ; preds = %560, %554
  %587 = phi i8 [ %555, %554 ], [ %577, %560 ]
  %588 = phi i64 [ 0, %554 ], [ %575, %560 ]
  %589 = icmp eq i64 %556, 0
  br i1 %589, label %601, label %590

590:                                              ; preds = %586
  %591 = zext i8 %587 to i64
  %592 = add nuw nsw i64 %588, 1
  %593 = getelementptr inbounds i8, ptr %535, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !11
  %595 = zext i8 %594 to i64
  %596 = shl nuw nsw i64 %595, 8
  %597 = or i64 %596, %591
  %598 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %597
  %599 = load i32, ptr %598, align 4, !tbaa !12
  %600 = add nsw i32 %599, -1
  store i32 %600, ptr %598, align 4, !tbaa !12
  br label %601

601:                                              ; preds = %590, %586
  %602 = and i64 %542, 4294967295
  %603 = getelementptr inbounds i8, ptr %535, i64 %602
  store i8 %528, ptr %603, align 1, !tbaa !11
  %604 = getelementptr inbounds i8, ptr %603, i64 1
  %605 = ptrtoint ptr %604 to i64
  %606 = ptrtoint ptr %535 to i64
  %607 = sub i64 %606, %605
  %608 = trunc i64 %607 to i32
  %609 = add i32 %534, %608
  %610 = getelementptr inbounds i8, ptr %603, i64 2
  %611 = zext i32 %609 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %604, ptr nonnull align 1 %610, i64 %611, i1 false) #22
  %612 = icmp sgt i32 %609, 1
  br i1 %612, label %613, label %647

613:                                              ; preds = %634, %601
  %614 = phi i32 [ %645, %634 ], [ %538, %601 ]
  %615 = phi i32 [ %642, %634 ], [ %609, %601 ]
  %616 = phi ptr [ %637, %634 ], [ %604, %601 ]
  %617 = phi i32 [ %614, %634 ], [ %534, %601 ]
  %618 = add nsw i32 %615, -1
  %619 = load i8, ptr %522, align 2, !tbaa !11
  %620 = zext i32 %618 to i64
  br label %621

621:                                              ; preds = %632, %613
  %622 = phi i64 [ 0, %613 ], [ %626, %632 ]
  %623 = getelementptr inbounds i8, ptr %616, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !11
  %625 = icmp eq i8 %624, %619
  %626 = add nuw nsw i64 %622, 1
  br i1 %625, label %627, label %632

627:                                              ; preds = %621
  %628 = getelementptr inbounds i8, ptr %616, i64 %626
  %629 = load i8, ptr %628, align 1, !tbaa !11
  %630 = load i8, ptr %527, align 1, !tbaa !11
  %631 = icmp eq i8 %629, %630
  br i1 %631, label %634, label %632

632:                                              ; preds = %627, %621
  %633 = icmp eq i64 %626, %620
  br i1 %633, label %647, label %621

634:                                              ; preds = %627
  %635 = and i64 %622, 4294967295
  %636 = getelementptr inbounds i8, ptr %616, i64 %635
  store i8 %528, ptr %636, align 1, !tbaa !11
  %637 = getelementptr inbounds i8, ptr %636, i64 1
  %638 = ptrtoint ptr %637 to i64
  %639 = ptrtoint ptr %616 to i64
  %640 = sub i64 %639, %638
  %641 = trunc i64 %640 to i32
  %642 = add i32 %615, %641
  %643 = getelementptr inbounds i8, ptr %636, i64 2
  %644 = zext i32 %642 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %637, ptr nonnull align 1 %643, i64 %644, i1 false) #22
  %645 = add i32 %614, -1
  %646 = icmp sgt i32 %642, 1
  br i1 %646, label %613, label %647

647:                                              ; preds = %634, %632, %601
  %648 = phi i32 [ %534, %601 ], [ %617, %632 ], [ %614, %634 ]
  %649 = phi i32 [ %538, %601 ], [ %614, %632 ], [ %645, %634 ]
  %650 = load ptr, ptr %531, align 8, !tbaa !5
  %651 = getelementptr inbounds %struct.sym_entry, ptr %650, i64 0, i32 1
  store i32 %649, ptr %651, align 8, !tbaa !12
  %652 = getelementptr inbounds %struct.sym_entry, ptr %650, i64 0, i32 4
  %653 = icmp sgt i32 %649, 1
  br i1 %653, label %654, label %703

654:                                              ; preds = %647
  %655 = add i32 %648, -2
  %656 = zext i32 %655 to i64
  %657 = load i8, ptr %652, align 1, !tbaa !11
  %658 = and i64 %656, 1
  %659 = icmp eq i32 %655, 1
  br i1 %659, label %688, label %660

660:                                              ; preds = %654
  %661 = and i64 %656, 4294967294
  br label %662

662:                                              ; preds = %662, %660
  %663 = phi i8 [ %657, %660 ], [ %679, %662 ]
  %664 = phi i64 [ 0, %660 ], [ %677, %662 ]
  %665 = phi i64 [ 0, %660 ], [ %686, %662 ]
  %666 = zext i8 %663 to i64
  %667 = or i64 %664, 1
  %668 = getelementptr inbounds i8, ptr %652, i64 %667
  %669 = load i8, ptr %668, align 1, !tbaa !11
  %670 = zext i8 %669 to i64
  %671 = shl nuw nsw i64 %670, 8
  %672 = or i64 %671, %666
  %673 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %672
  %674 = load i32, ptr %673, align 4, !tbaa !12
  %675 = add nsw i32 %674, 1
  store i32 %675, ptr %673, align 4, !tbaa !12
  %676 = zext i8 %669 to i64
  %677 = add nuw nsw i64 %664, 2
  %678 = getelementptr inbounds i8, ptr %652, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !11
  %680 = zext i8 %679 to i64
  %681 = shl nuw nsw i64 %680, 8
  %682 = or i64 %681, %676
  %683 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %682
  %684 = load i32, ptr %683, align 4, !tbaa !12
  %685 = add nsw i32 %684, 1
  store i32 %685, ptr %683, align 4, !tbaa !12
  %686 = add i64 %665, 2
  %687 = icmp eq i64 %686, %661
  br i1 %687, label %688, label %662

688:                                              ; preds = %662, %654
  %689 = phi i8 [ %657, %654 ], [ %679, %662 ]
  %690 = phi i64 [ 0, %654 ], [ %677, %662 ]
  %691 = icmp eq i64 %658, 0
  br i1 %691, label %703, label %692

692:                                              ; preds = %688
  %693 = zext i8 %689 to i64
  %694 = add nuw nsw i64 %690, 1
  %695 = getelementptr inbounds i8, ptr %652, i64 %694
  %696 = load i8, ptr %695, align 1, !tbaa !11
  %697 = zext i8 %696 to i64
  %698 = shl nuw nsw i64 %697, 8
  %699 = or i64 %698, %693
  %700 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %699
  %701 = load i32, ptr %700, align 4, !tbaa !12
  %702 = add nsw i32 %701, 1
  store i32 %702, ptr %700, align 4, !tbaa !12
  br label %703

703:                                              ; preds = %692, %688, %647, %552, %529
  %704 = add nuw nsw i64 %530, 1
  %705 = icmp eq i64 %704, %490
  br i1 %705, label %706, label %529

706:                                              ; preds = %703, %520, %491
  %707 = add nsw i64 %492, -1
  %708 = icmp eq i64 %492, 0
  br i1 %708, label %709, label %491

709:                                              ; preds = %706, %515
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #22
  %710 = call i32 @puts(ptr nonnull @str) #22
  %711 = call i32 @puts(ptr nonnull @str.79) #22
  %712 = call i32 @puts(ptr nonnull @str.80) #22
  %713 = call i32 @puts(ptr nonnull @str.81) #22
  %714 = call i32 @puts(ptr nonnull @str.82) #22
  %715 = call i32 @puts(ptr nonnull @str.83) #22
  %716 = call i32 @puts(ptr nonnull @str.84) #22
  %717 = call i32 @puts(ptr nonnull @str.85) #22
  %718 = call i32 @puts(ptr nonnull @str.86) #22
  %719 = load i1, ptr @base_relative, align 4
  %720 = select i1 %719, ptr @.str.11, ptr @.str.10
  %721 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull %720) #22
  %722 = call i32 @puts(ptr nonnull @str.87) #22
  %723 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull %720) #22
  %724 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %791, label %726

726:                                              ; preds = %786, %709
  %727 = phi i64 [ %787, %786 ], [ 0, %709 ]
  %728 = load i1, ptr @base_relative, align 4
  br i1 %728, label %729, label %767

729:                                              ; preds = %726
  %730 = load i1, ptr @absolute_percpu, align 4
  %731 = load ptr, ptr @table, align 8, !tbaa !5
  %732 = getelementptr inbounds ptr, ptr %731, i64 %727
  %733 = load ptr, ptr %732, align 8, !tbaa !5
  br i1 %730, label %734, label %747

734:                                              ; preds = %729
  %735 = getelementptr inbounds %struct.sym_entry, ptr %733, i64 0, i32 3
  %736 = load i32, ptr %735, align 8, !tbaa !12
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %741, label %738

738:                                              ; preds = %734
  %739 = load i64, ptr %733, align 8, !tbaa !9
  %740 = icmp ugt i64 %739, 2147483647
  br i1 %740, label %752, label %763

741:                                              ; preds = %734
  %742 = load i64, ptr @relative_base, align 8, !tbaa !9
  %743 = load i64, ptr %733, align 8, !tbaa !9
  %744 = xor i64 %743, -1
  %745 = add i64 %742, %744
  %746 = icmp ult i64 %745, -2147483648
  br i1 %746, label %752, label %763

747:                                              ; preds = %729
  %748 = load i64, ptr %733, align 8, !tbaa !9
  %749 = load i64, ptr @relative_base, align 8, !tbaa !9
  %750 = sub i64 %748, %749
  %751 = icmp ugt i64 %750, 4294967295
  br i1 %751, label %752, label %763

752:                                              ; preds = %747, %741, %738
  %753 = load ptr, ptr @stderr, align 8, !tbaa !5
  %754 = and i64 %727, 4294967295
  %755 = getelementptr inbounds ptr, ptr %731, i64 %754
  %756 = load ptr, ptr %755, align 8, !tbaa !5
  %757 = getelementptr inbounds %struct.sym_entry, ptr %756, i64 0, i32 3
  %758 = load i32, ptr %757, align 8, !tbaa !12
  %759 = icmp eq i32 %758, 0
  %760 = select i1 %759, ptr @.str.64, ptr @.str.63
  %761 = load i64, ptr %756, align 8, !tbaa !9
  %762 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %753, ptr noundef nonnull @.str.62, ptr noundef nonnull %760, i64 noundef %761) #20
  call void @exit(i32 noundef 1) #21
  unreachable

763:                                              ; preds = %747, %741, %738
  %764 = phi i64 [ %739, %738 ], [ %750, %747 ], [ %745, %741 ]
  %765 = trunc i64 %764 to i32
  %766 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.65, i32 noundef %765) #22
  br label %786

767:                                              ; preds = %726
  %768 = load ptr, ptr @table, align 8, !tbaa !5
  %769 = getelementptr inbounds ptr, ptr %768, i64 %727
  %770 = load ptr, ptr %769, align 8, !tbaa !5
  %771 = getelementptr inbounds %struct.sym_entry, ptr %770, i64 0, i32 3
  %772 = load i32, ptr %771, align 8, !tbaa !12
  %773 = icmp eq i32 %772, 0
  %774 = load i64, ptr %770, align 8, !tbaa !9
  br i1 %773, label %775, label %784

775:                                              ; preds = %767
  %776 = load i64, ptr @_text, align 8, !tbaa !9
  %777 = icmp ugt i64 %776, %774
  br i1 %777, label %781, label %778

778:                                              ; preds = %775
  %779 = sub i64 %774, %776
  %780 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i64 noundef %779) #22
  br label %786

781:                                              ; preds = %775
  %782 = sub i64 %776, %774
  %783 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, i64 noundef %782) #22
  br label %786

784:                                              ; preds = %767
  %785 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.66, i64 noundef %774) #22
  br label %786

786:                                              ; preds = %784, %781, %778, %763
  %787 = add nuw nsw i64 %727, 1
  %788 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %789 = zext i32 %788 to i64
  %790 = icmp ult i64 %787, %789
  br i1 %790, label %726, label %791

791:                                              ; preds = %786, %709
  %792 = call i32 @putchar(i32 10) #22
  %793 = load i1, ptr @base_relative, align 4
  br i1 %793, label %794, label %809

794:                                              ; preds = %791
  %795 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.12) #22
  %796 = call i32 @puts(ptr nonnull @str.87) #22
  %797 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.12) #22
  %798 = load i64, ptr @relative_base, align 8, !tbaa !9
  %799 = load i64, ptr @_text, align 8, !tbaa !9
  %800 = icmp ugt i64 %799, %798
  br i1 %800, label %804, label %801

801:                                              ; preds = %794
  %802 = sub i64 %798, %799
  %803 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i64 noundef %802) #22
  br label %807

804:                                              ; preds = %794
  %805 = sub i64 %799, %798
  %806 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, i64 noundef %805) #22
  br label %807

807:                                              ; preds = %804, %801
  %808 = call i32 @putchar(i32 10) #22
  br label %809

809:                                              ; preds = %807, %791
  %810 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.13) #22
  %811 = call i32 @puts(ptr nonnull @str.87) #22
  %812 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.13) #22
  %813 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %814 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68, i32 noundef %813) #22
  %815 = call i32 @putchar(i32 10) #22
  %816 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %817 = add i32 %816, 255
  %818 = lshr i32 %817, 6
  %819 = and i32 %818, 67108860
  %820 = zext i32 %819 to i64
  %821 = call noalias ptr @malloc(i64 noundef %820) #24
  %822 = icmp eq ptr %821, null
  br i1 %822, label %823, label %826

823:                                              ; preds = %809
  %824 = load ptr, ptr @stderr, align 8, !tbaa !5
  %825 = call i64 @fwrite(ptr nonnull @.str.69, i64 53, i64 1, ptr %824) #20
  call void @exit(i32 noundef 1) #21
  unreachable

826:                                              ; preds = %809
  %827 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.14) #22
  %828 = call i32 @puts(ptr nonnull @str.87) #22
  %829 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.14) #22
  %830 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %882, label %832

832:                                              ; preds = %869, %826
  %833 = phi i64 [ %878, %869 ], [ 0, %826 ]
  %834 = phi i32 [ %877, %869 ], [ 0, %826 ]
  %835 = and i64 %833, 255
  %836 = icmp eq i64 %835, 0
  br i1 %836, label %837, label %841

837:                                              ; preds = %832
  %838 = lshr i64 %833, 8
  %839 = and i64 %838, 16777215
  %840 = getelementptr inbounds i32, ptr %821, i64 %839
  store i32 %834, ptr %840, align 4, !tbaa !12
  br label %841

841:                                              ; preds = %837, %832
  %842 = load ptr, ptr @table, align 8, !tbaa !5
  %843 = getelementptr inbounds ptr, ptr %842, i64 %833
  %844 = load ptr, ptr %843, align 8, !tbaa !5
  %845 = getelementptr inbounds %struct.sym_entry, ptr %844, i64 0, i32 1
  %846 = load i32, ptr %845, align 8, !tbaa !12
  %847 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.70, i32 noundef %846) #22
  %848 = load ptr, ptr @table, align 8, !tbaa !5
  %849 = getelementptr inbounds ptr, ptr %848, i64 %833
  %850 = load ptr, ptr %849, align 8, !tbaa !5
  %851 = getelementptr inbounds %struct.sym_entry, ptr %850, i64 0, i32 1
  %852 = load i32, ptr %851, align 8, !tbaa !12
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %869, label %854

854:                                              ; preds = %854, %841
  %855 = phi i64 [ %861, %854 ], [ 0, %841 ]
  %856 = phi ptr [ %864, %854 ], [ %850, %841 ]
  %857 = getelementptr inbounds %struct.sym_entry, ptr %856, i64 0, i32 4, i64 %855
  %858 = load i8, ptr %857, align 1, !tbaa !11
  %859 = zext i8 %858 to i32
  %860 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.71, i32 noundef %859) #22
  %861 = add nuw nsw i64 %855, 1
  %862 = load ptr, ptr @table, align 8, !tbaa !5
  %863 = getelementptr inbounds ptr, ptr %862, i64 %833
  %864 = load ptr, ptr %863, align 8, !tbaa !5
  %865 = getelementptr inbounds %struct.sym_entry, ptr %864, i64 0, i32 1
  %866 = load i32, ptr %865, align 8, !tbaa !12
  %867 = zext i32 %866 to i64
  %868 = icmp ult i64 %861, %867
  br i1 %868, label %854, label %869

869:                                              ; preds = %854, %841
  %870 = call i32 @putchar(i32 10) #22
  %871 = load ptr, ptr @table, align 8, !tbaa !5
  %872 = getelementptr inbounds ptr, ptr %871, i64 %833
  %873 = load ptr, ptr %872, align 8, !tbaa !5
  %874 = getelementptr inbounds %struct.sym_entry, ptr %873, i64 0, i32 1
  %875 = load i32, ptr %874, align 8, !tbaa !12
  %876 = add i32 %834, 1
  %877 = add i32 %876, %875
  %878 = add nuw nsw i64 %833, 1
  %879 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %880 = zext i32 %879 to i64
  %881 = icmp ult i64 %878, %880
  br i1 %881, label %832, label %882

882:                                              ; preds = %869, %826
  %883 = call i32 @putchar(i32 10) #22
  %884 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.15) #22
  %885 = call i32 @puts(ptr nonnull @str.87) #22
  %886 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.15) #22
  %887 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %888 = add i32 %887, 255
  %889 = icmp ult i32 %888, 256
  br i1 %889, label %901, label %890

890:                                              ; preds = %890, %882
  %891 = phi i64 [ %895, %890 ], [ 0, %882 ]
  %892 = getelementptr inbounds i32, ptr %821, i64 %891
  %893 = load i32, ptr %892, align 4, !tbaa !12
  %894 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68, i32 noundef %893) #22
  %895 = add nuw nsw i64 %891, 1
  %896 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %897 = add i32 %896, 255
  %898 = lshr i32 %897, 8
  %899 = zext i32 %898 to i64
  %900 = icmp ult i64 %895, %899
  br i1 %900, label %890, label %901

901:                                              ; preds = %890, %882
  %902 = call i32 @putchar(i32 10) #22
  call void @free(ptr noundef %821) #22
  %903 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.16) #22
  %904 = call i32 @puts(ptr nonnull @str.87) #22
  %905 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.16) #22
  br label %906

906:                                              ; preds = %906, %901
  %907 = phi i64 [ 0, %901 ], [ %920, %906 ]
  %908 = phi i32 [ 0, %901 ], [ %919, %906 ]
  %909 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %907
  store i32 %908, ptr %909, align 4, !tbaa !12
  %910 = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %907
  %911 = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %907
  %912 = load i8, ptr %911, align 1, !tbaa !11
  %913 = zext i8 %912 to i32
  %914 = call fastcc i32 @expand_symbol(ptr noundef nonnull %910, i32 noundef %913, ptr noundef nonnull %4) #22
  %915 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.72, ptr noundef nonnull %4) #22
  %916 = call i64 @strlen(ptr noundef nonnull %4) #19
  %917 = trunc i64 %916 to i32
  %918 = add i32 %908, 1
  %919 = add i32 %918, %917
  %920 = add nuw nsw i64 %907, 1
  %921 = icmp eq i64 %920, 256
  br i1 %921, label %922, label %906

922:                                              ; preds = %906
  %923 = call i32 @putchar(i32 10) #22
  %924 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.17) #22
  %925 = call i32 @puts(ptr nonnull @str.87) #22
  %926 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.17) #22
  br label %927

927:                                              ; preds = %927, %922
  %928 = phi i64 [ 0, %922 ], [ %932, %927 ]
  %929 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %928
  %930 = load i32, ptr %929, align 4, !tbaa !12
  %931 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.73, i32 noundef %930) #22
  %932 = add nuw nsw i64 %928, 1
  %933 = icmp eq i64 %932, 256
  br i1 %933, label %934, label %927

934:                                              ; preds = %927
  %935 = call i32 @putchar(i32 10) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #22
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @compare_symbols(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = load i64, ptr %3, align 8, !tbaa !9
  %6 = load i64, ptr %4, align 8, !tbaa !9
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = icmp ult i64 %5, %6
  br i1 %9, label %46, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sym_entry, ptr %3, i64 0, i32 4
  %12 = load i8, ptr %11, align 4, !tbaa !11
  %13 = and i8 %12, -33
  %14 = icmp eq i8 %13, 87
  %15 = getelementptr inbounds %struct.sym_entry, ptr %4, i64 0, i32 4
  %16 = load i8, ptr %15, align 4, !tbaa !11
  %17 = and i8 %16, -33
  %18 = icmp eq i8 %17, 87
  %19 = xor i1 %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = sext i1 %18 to i32
  %22 = zext i1 %14 to i32
  %23 = add nsw i32 %21, %22
  br label %46

24:                                               ; preds = %10
  %25 = tail call fastcc i32 @may_be_linker_script_provide_symbol(ptr noundef nonnull %3)
  %26 = tail call fastcc i32 @may_be_linker_script_provide_symbol(ptr noundef nonnull %4)
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = sub nsw i32 %25, %26
  br label %46

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sym_entry, ptr %3, i64 0, i32 4, i64 1
  %32 = tail call i64 @strspn(ptr noundef nonnull %31, ptr noundef nonnull @.str.47) #19
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.sym_entry, ptr %4, i64 0, i32 4, i64 1
  %35 = tail call i64 @strspn(ptr noundef nonnull %34, ptr noundef nonnull @.str.47) #19
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = sub nsw i32 %33, %36
  br label %46

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.sym_entry, ptr %3, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !12
  %43 = getelementptr inbounds %struct.sym_entry, ptr %4, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !12
  %45 = sub i32 %42, %44
  br label %46

46:                                               ; preds = %40, %38, %28, %20, %8, %2
  %47 = phi i32 [ %23, %20 ], [ %29, %28 ], [ %39, %38 ], [ %45, %40 ], [ 1, %2 ], [ -1, %8 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc i32 @may_be_linker_script_provide_symbol(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.sym_entry, ptr %0, i64 0, i32 4, i64 1
  %3 = getelementptr inbounds %struct.sym_entry, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = add i32 %4, -1
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = load i8, ptr %2, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 95
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sym_entry, ptr %0, i64 0, i32 4, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !11
  %13 = icmp eq i8 %12, 95
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sym_entry, ptr %0, i64 0, i32 4, i64 3
  %16 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %15, ptr noundef nonnull dereferenceable(6) @.str.48, i64 6)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %15, ptr noundef nonnull dereferenceable(5) @.str.49, i64 5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %15, ptr noundef nonnull dereferenceable(4) @.str.50, i64 4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = zext i32 %5 to i64
  %26 = getelementptr inbounds i8, ptr %2, i64 %25
  %27 = getelementptr inbounds i8, ptr %26, i64 -6
  %28 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %27, ptr noundef nonnull dereferenceable(6) @.str.51, i64 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, ptr %26, i64 -4
  %32 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %31, ptr noundef nonnull dereferenceable(4) @.str.52, i64 4)
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %30, %24, %21, %18, %14, %10, %7, %1
  %36 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %7 ], [ 1, %14 ], [ 1, %18 ], [ 1, %21 ], [ 1, %24 ], [ %34, %30 ]
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc i32 @expand_symbol(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %28, %3
  %6 = phi i32 [ %30, %28 ], [ 0, %3 ]
  %7 = phi ptr [ %31, %28 ], [ %0, %3 ]
  %8 = phi i32 [ %32, %28 ], [ %1, %3 ]
  %9 = phi ptr [ %29, %28 ], [ %2, %3 ]
  %10 = load i8, ptr %7, align 1, !tbaa !11
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %11
  %13 = load i8, ptr %12, align 2, !tbaa !11
  %14 = icmp eq i8 %13, %10
  %15 = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %11
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 1
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %10, ptr %9, align 1, !tbaa !11
  %21 = add nsw i32 %6, 1
  br label %28

22:                                               ; preds = %5
  %23 = zext i8 %16 to i32
  %24 = tail call fastcc i32 @expand_symbol(ptr noundef nonnull %12, i32 noundef %23, ptr noundef %9)
  %25 = add nsw i32 %24, %6
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, ptr %9, i64 %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi ptr [ %20, %19 ], [ %27, %22 ]
  %30 = phi i32 [ %21, %19 ], [ %25, %22 ]
  %31 = getelementptr inbounds i8, ptr %7, i64 1
  %32 = add nsw i32 %8, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %5

34:                                               ; preds = %28, %3
  %35 = phi ptr [ %2, %3 ], [ %29, %28 ]
  %36 = phi i32 [ 0, %3 ], [ %30, %28 ]
  store i8 0, ptr %35, align 1, !tbaa !11
  ret i32 %36
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { nounwind readnone willreturn }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"addr_range", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 24}
!16 = !{!15, !6, i64 8}
!17 = !{!15, !10, i64 16}
!18 = !{!15, !10, i64 24}
