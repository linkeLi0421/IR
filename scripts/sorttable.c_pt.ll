; ModuleID = '/llk/IR/scripts/sorttable.c_pt.bc'
source_filename = "../scripts/sorttable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.Elf64_Sym = type { i32, i8, i8, i16, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"usage: sorttable vmlinux...\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"not a regular file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not mmap file: %s\0A\00", align 1
@r = internal unnamed_addr global ptr null, align 8
@r2 = internal unnamed_addr global ptr null, align 8
@r8 = internal unnamed_addr global ptr null, align 8
@w = internal unnamed_addr global ptr null, align 8
@w8 = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"unrecognized ELF data encoding %d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"unrecognized ET_EXEC/ET_DYN file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unrecognized e_machine %d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"unrecognized ET_EXEC/ET_DYN file: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"unrecognized ELF class %d %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"__ex_table\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"no __ex_table in file: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"no .symtab in file: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"no .strtab in file: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"main_extable_sort_needed\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"no main_extable_sort_needed symbol in file: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %7 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %8 = zext i32 %0 to i64
  br label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %10) #12
  br label %564

12:                                               ; preds = %556, %5
  %13 = phi i64 [ 1, %5 ], [ %559, %556 ]
  %14 = phi i32 [ 0, %5 ], [ %558, %556 ]
  %15 = phi i64 [ 0, %5 ], [ %557, %556 ]
  %16 = getelementptr inbounds ptr, ptr %1, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #13
  %18 = call i32 (ptr, i32, ...) @open(ptr noundef %17, i32 noundef 2) #13
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  call void @perror(ptr noundef %17) #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #13
  br label %46

21:                                               ; preds = %12
  %22 = call i32 @__fxstat(i32 noundef 1, i32 noundef %18, ptr noundef nonnull %3) #13
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @perror(ptr noundef %17) #14
  br label %40

25:                                               ; preds = %21
  %26 = load i32, ptr %6, align 8, !tbaa !9
  %27 = and i32 %26, 61440
  %28 = icmp eq i32 %27, 32768
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef %17) #14
  br label %40

32:                                               ; preds = %25
  %33 = load i64, ptr %7, align 8, !tbaa !14
  %34 = call ptr @mmap(ptr noundef null, i64 noundef %33, i32 noundef 3, i32 noundef 1, i32 noundef %18, i64 noundef 0) #13
  %35 = icmp eq ptr %34, inttoptr (i64 -1 to ptr)
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !5
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.2, ptr noundef %17) #14
  %39 = call i32 @close(i32 noundef %18) #13
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #13
  br label %49

40:                                               ; preds = %29, %24
  %41 = call i32 @close(i32 noundef %18) #13
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #13
  br label %46

42:                                               ; preds = %32
  %43 = load i64, ptr %7, align 8, !tbaa !14
  %44 = call i32 @close(i32 noundef %18) #13
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #13
  %45 = icmp eq ptr %34, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %40, %20
  %47 = phi i64 [ %15, %20 ], [ %43, %42 ], [ %15, %40 ]
  %48 = add nsw i32 %14, 1
  br label %556

49:                                               ; preds = %42, %36
  %50 = phi i64 [ %15, %36 ], [ %43, %42 ]
  %51 = load ptr, ptr %16, align 8, !tbaa !5
  %52 = getelementptr inbounds [16 x i8], ptr %34, i64 0, i64 5
  %53 = load i8, ptr %52, align 1, !tbaa !15
  switch i8 %53, label %55 [
    i8 1, label %59
    i8 2, label %54
  ]

54:                                               ; preds = %49
  br label %59

55:                                               ; preds = %49
  %56 = zext i8 %53 to i32
  %57 = load ptr, ptr @stderr, align 8, !tbaa !5
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.3, i32 noundef %56, ptr noundef %51) #14
  br label %551

59:                                               ; preds = %54, %49
  %60 = phi ptr [ @rbe, %54 ], [ @rle, %49 ]
  %61 = phi ptr [ @r2be, %54 ], [ @r2le, %49 ]
  %62 = phi ptr [ @r8be, %54 ], [ @r8le, %49 ]
  %63 = phi ptr [ @wbe, %54 ], [ @wle, %49 ]
  %64 = phi ptr [ @w8be, %54 ], [ @w8le, %49 ]
  store ptr %60, ptr @r, align 8, !tbaa !5
  store ptr %61, ptr @r2, align 8, !tbaa !5
  store ptr %62, ptr @r8, align 8, !tbaa !5
  store ptr %63, ptr @w, align 8, !tbaa !5
  store ptr %64, ptr @w8, align 8, !tbaa !5
  %65 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.4, ptr noundef nonnull dereferenceable(4) %34, i64 4) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %34, i64 0, i32 1
  %69 = call zeroext i16 %61(ptr noundef nonnull %68) #13, !callees !16
  %70 = icmp eq i16 %69, 2
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @r2, align 8, !tbaa !5
  %73 = call zeroext i16 %72(ptr noundef nonnull %68) #13, !callees !16
  %74 = icmp eq i16 %73, 3
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %67
  %76 = getelementptr inbounds [16 x i8], ptr %34, i64 0, i64 6
  %77 = load i8, ptr %76, align 2, !tbaa !15
  %78 = icmp eq i8 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %75, %71, %59
  %80 = load ptr, ptr @stderr, align 8, !tbaa !5
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.5, ptr noundef %51) #14
  br label %551

82:                                               ; preds = %75
  %83 = load ptr, ptr @r2, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %34, i64 0, i32 2
  %85 = call zeroext i16 %83(ptr noundef nonnull %84) #13, !callees !16
  switch i16 %85, label %89 [
    i16 3, label %86
    i16 183, label %86
    i16 243, label %86
    i16 62, label %86
    i16 22, label %87
    i16 15, label %88
    i16 20, label %88
    i16 21, label %88
    i16 93, label %95
    i16 195, label %95
    i16 40, label %95
    i16 189, label %95
    i16 8, label %95
    i16 94, label %95
  ]

86:                                               ; preds = %82, %82, %82, %82
  br label %95

87:                                               ; preds = %82
  br label %95

88:                                               ; preds = %82, %82, %82
  br label %95

89:                                               ; preds = %82
  %90 = load ptr, ptr @stderr, align 8, !tbaa !5
  %91 = load ptr, ptr @r2, align 8, !tbaa !5
  %92 = call zeroext i16 %91(ptr noundef nonnull %84) #13, !callees !16
  %93 = zext i16 %92 to i32
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.6, i32 noundef %93, ptr noundef %51) #14
  br label %551

95:                                               ; preds = %88, %87, %86, %82, %82, %82, %82, %82, %82
  %96 = phi i1 [ true, %82 ], [ true, %82 ], [ true, %82 ], [ true, %82 ], [ true, %82 ], [ true, %82 ], [ false, %88 ], [ false, %87 ], [ false, %86 ]
  %97 = phi ptr [ null, %82 ], [ null, %82 ], [ null, %82 ], [ null, %82 ], [ null, %82 ], [ null, %82 ], [ @sort_relative_table, %88 ], [ @s390_sort_relative_table, %87 ], [ @sort_relative_table_with_data, %86 ]
  %98 = getelementptr inbounds [16 x i8], ptr %34, i64 0, i64 4
  %99 = load i8, ptr %98, align 4, !tbaa !15
  switch i8 %99, label %547 [
    i8 1, label %100
    i8 2, label %328
  ]

100:                                              ; preds = %95
  %101 = load ptr, ptr @r2, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %34, i64 0, i32 8
  %103 = call zeroext i16 %101(ptr noundef nonnull %102) #13, !callees !16
  %104 = icmp eq i16 %103, 52
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load ptr, ptr @r2, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %34, i64 0, i32 11
  %108 = call zeroext i16 %106(ptr noundef nonnull %107) #13, !callees !16
  %109 = icmp eq i16 %108, 40
  br i1 %109, label %113, label %110

110:                                              ; preds = %105, %100
  %111 = load ptr, ptr @stderr, align 8, !tbaa !5
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.7, ptr noundef %51) #14
  br label %551

113:                                              ; preds = %105
  %114 = load ptr, ptr @r, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %34, i64 0, i32 6
  %116 = call i32 %114(ptr noundef nonnull %115) #13, !callees !17
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %34, i64 %117
  %119 = load ptr, ptr @r2, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %34, i64 0, i32 13
  %121 = call zeroext i16 %119(ptr noundef nonnull %120) #13, !callees !16
  %122 = zext i16 %121 to i32
  %123 = icmp eq i16 %121, -1
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load ptr, ptr @r, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.Elf32_Shdr, ptr %118, i64 0, i32 6
  %127 = call i32 %125(ptr noundef nonnull %126) #13, !callees !17
  br label %128

128:                                              ; preds = %124, %113
  %129 = phi i32 [ %127, %124 ], [ %122, %113 ]
  %130 = load ptr, ptr @r, align 8, !tbaa !5
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds %struct.Elf32_Shdr, ptr %118, i64 %131
  %133 = getelementptr inbounds %struct.Elf32_Shdr, ptr %132, i64 0, i32 4
  %134 = call i32 %130(ptr noundef nonnull %133) #13, !callees !17
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %34, i64 %135
  %137 = load ptr, ptr @r2, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %34, i64 0, i32 12
  %139 = call zeroext i16 %137(ptr noundef nonnull %138) #13, !callees !16
  %140 = zext i16 %139 to i32
  %141 = icmp eq i16 %139, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = load ptr, ptr @r, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.Elf32_Shdr, ptr %118, i64 0, i32 5
  %145 = call i32 %143(ptr noundef nonnull %144) #13, !callees !17
  br label %146

146:                                              ; preds = %142, %128
  %147 = phi i32 [ %145, %142 ], [ %140, %128 ]
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.Elf32_Shdr, ptr %118, i64 %148
  %150 = icmp eq i32 %147, 0
  br i1 %150, label %216, label %151

151:                                              ; preds = %209, %146
  %152 = phi ptr [ %212, %209 ], [ %118, %146 ]
  %153 = phi i32 [ %211, %209 ], [ 0, %146 ]
  %154 = phi i32 [ %168, %209 ], [ 0, %146 ]
  %155 = phi ptr [ %174, %209 ], [ null, %146 ]
  %156 = phi ptr [ %171, %209 ], [ null, %146 ]
  %157 = phi ptr [ %167, %209 ], [ null, %146 ]
  %158 = phi i32 [ %199, %209 ], [ 0, %146 ]
  %159 = phi ptr [ %198, %209 ], [ null, %146 ]
  %160 = phi ptr [ %210, %209 ], [ null, %146 ]
  %161 = load ptr, ptr @r, align 8, !tbaa !5
  %162 = call i32 %161(ptr noundef %152) #13, !callees !17
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %136, i64 %163
  %165 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(11) @.str.9) #15
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %166, ptr %152, ptr %157
  %168 = select i1 %166, i32 %153, i32 %154
  %169 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(8) @.str.10) #15
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, ptr %152, ptr %156
  %172 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(8) @.str.11) #15
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, ptr %152, ptr %155
  %175 = load ptr, ptr @r, align 8, !tbaa !5
  %176 = getelementptr inbounds %struct.Elf32_Shdr, ptr %152, i64 0, i32 1
  %177 = call i32 %175(ptr noundef nonnull %176) #13, !callees !17
  %178 = icmp eq i32 %177, 9
  br i1 %178, label %183, label %179

179:                                              ; preds = %151
  %180 = load ptr, ptr @r, align 8, !tbaa !5
  %181 = call i32 %180(ptr noundef nonnull %176) #13, !callees !17
  %182 = icmp eq i32 %181, 4
  br i1 %182, label %183, label %197

183:                                              ; preds = %179, %151
  %184 = load ptr, ptr @r, align 8, !tbaa !5
  %185 = getelementptr inbounds %struct.Elf32_Shdr, ptr %152, i64 0, i32 7
  %186 = call i32 %184(ptr noundef nonnull %185) #13, !callees !17
  %187 = icmp eq i32 %186, %168
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load ptr, ptr @r, align 8, !tbaa !5
  %190 = getelementptr inbounds %struct.Elf32_Shdr, ptr %152, i64 0, i32 4
  %191 = call i32 %189(ptr noundef nonnull %190) #13, !callees !17
  %192 = zext i32 %191 to i64
  %193 = getelementptr i8, ptr %34, i64 %192
  %194 = load ptr, ptr @r, align 8, !tbaa !5
  %195 = getelementptr inbounds %struct.Elf32_Shdr, ptr %152, i64 0, i32 5
  %196 = call i32 %194(ptr noundef nonnull %195) #13, !callees !17
  br label %197

197:                                              ; preds = %188, %183, %179
  %198 = phi ptr [ %193, %188 ], [ %159, %183 ], [ %159, %179 ]
  %199 = phi i32 [ %196, %188 ], [ %158, %183 ], [ %158, %179 ]
  %200 = load ptr, ptr @r, align 8, !tbaa !5
  %201 = call i32 %200(ptr noundef nonnull %176) #13, !callees !17
  %202 = icmp eq i32 %201, 18
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load ptr, ptr @r, align 8, !tbaa !5
  %205 = getelementptr inbounds %struct.Elf32_Shdr, ptr %152, i64 0, i32 4
  %206 = call i32 %204(ptr noundef nonnull %205) #13, !callees !17
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %34, i64 %207
  br label %209

209:                                              ; preds = %203, %197
  %210 = phi ptr [ %208, %203 ], [ %160, %197 ]
  %211 = add nuw nsw i32 %153, 1
  %212 = getelementptr inbounds %struct.Elf32_Shdr, ptr %152, i64 1
  %213 = icmp ult ptr %212, %149
  br i1 %213, label %151, label %214

214:                                              ; preds = %209
  %215 = icmp eq ptr %167, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %214, %146
  %217 = load ptr, ptr @stderr, align 8, !tbaa !5
  %218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.12, ptr noundef %51) #14
  br label %551

219:                                              ; preds = %214
  %220 = icmp eq ptr %171, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %219
  %222 = load ptr, ptr @stderr, align 8, !tbaa !5
  %223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.13, ptr noundef %51) #14
  br label %551

224:                                              ; preds = %219
  %225 = icmp eq ptr %174, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %224
  %227 = load ptr, ptr @stderr, align 8, !tbaa !5
  %228 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.14, ptr noundef %51) #14
  br label %551

229:                                              ; preds = %224
  %230 = load ptr, ptr @r, align 8, !tbaa !5
  %231 = getelementptr inbounds %struct.Elf32_Shdr, ptr %167, i64 0, i32 4
  %232 = call i32 %230(ptr noundef nonnull %231) #13, !callees !17
  %233 = zext i32 %232 to i64
  %234 = getelementptr i8, ptr %34, i64 %233
  %235 = load ptr, ptr @r, align 8, !tbaa !5
  %236 = getelementptr inbounds %struct.Elf32_Shdr, ptr %174, i64 0, i32 4
  %237 = call i32 %235(ptr noundef nonnull %236) #13, !callees !17
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %34, i64 %238
  %240 = load ptr, ptr @r, align 8, !tbaa !5
  %241 = getelementptr inbounds %struct.Elf32_Shdr, ptr %171, i64 0, i32 4
  %242 = call i32 %240(ptr noundef nonnull %241) #13, !callees !17
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i8, ptr %34, i64 %243
  %245 = load ptr, ptr @r, align 8, !tbaa !5
  %246 = getelementptr inbounds %struct.Elf32_Shdr, ptr %167, i64 0, i32 5
  %247 = call i32 %245(ptr noundef nonnull %246) #13
  br i1 %96, label %249, label %248

248:                                              ; preds = %229
  call void %97(ptr noundef %234, i32 noundef %247) #13, !callees !18
  br label %252

249:                                              ; preds = %229
  %250 = lshr i32 %247, 3
  %251 = zext i32 %250 to i64
  call void @qsort(ptr noundef %234, i64 noundef %251, i64 noundef 8, ptr noundef nonnull @compare_extable_32) #13
  br label %252

252:                                              ; preds = %249, %248
  %253 = icmp eq ptr %198, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %252
  %255 = sext i32 %199 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %198, i8 0, i64 %255, i1 false) #13
  br label %256

256:                                              ; preds = %254, %252
  %257 = load ptr, ptr @r, align 8, !tbaa !5
  %258 = call i32 %257(ptr noundef nonnull %241) #13, !callees !17
  %259 = getelementptr inbounds %struct.Elf32_Shdr, ptr %171, i64 0, i32 5
  %260 = load ptr, ptr @r, align 8, !tbaa !5
  %261 = call i32 %260(ptr noundef nonnull %259) #13, !callees !17
  %262 = icmp ult i32 %261, 16
  br i1 %262, label %284, label %263

263:                                              ; preds = %256
  %264 = zext i32 %258 to i64
  %265 = getelementptr i8, ptr %34, i64 %264
  br label %266

266:                                              ; preds = %279, %263
  %267 = phi ptr [ %280, %279 ], [ %265, %263 ]
  %268 = getelementptr inbounds %struct.Elf32_Sym, ptr %267, i64 0, i32 3
  %269 = load i8, ptr %268, align 4, !tbaa !19
  %270 = and i8 %269, 15
  %271 = icmp eq i8 %270, 1
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = load ptr, ptr @r, align 8, !tbaa !5
  %274 = call i32 %273(ptr noundef nonnull %267) #13, !callees !17
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8, ptr %239, i64 %275
  %277 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %276, ptr noundef nonnull dereferenceable(25) @.str.15) #15
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %272, %266
  %280 = getelementptr inbounds %struct.Elf32_Sym, ptr %267, i64 1
  %281 = load ptr, ptr @r, align 8, !tbaa !5
  %282 = call i32 %281(ptr noundef nonnull %259) #13, !callees !17
  %283 = icmp ult i32 %282, 16
  br i1 %283, label %284, label %266

284:                                              ; preds = %279, %256
  %285 = load ptr, ptr @stderr, align 8, !tbaa !5
  %286 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %285, ptr noundef nonnull @.str.16, ptr noundef %51) #14
  br label %551

287:                                              ; preds = %272
  %288 = load ptr, ptr @r2, align 8, !tbaa !5
  %289 = getelementptr inbounds %struct.Elf32_Sym, ptr %267, i64 0, i32 5
  %290 = call zeroext i16 %288(ptr noundef nonnull %289) #13, !callees !16
  %291 = zext i16 %290 to i32
  %292 = ptrtoint ptr %267 to i64
  %293 = ptrtoint ptr %244 to i64
  %294 = sub i64 %292, %293
  %295 = lshr exact i64 %294, 4
  %296 = add i16 %290, 1
  %297 = icmp ult i16 %296, -255
  br i1 %297, label %300, label %298

298:                                              ; preds = %287
  %299 = or i32 %291, -65536
  br label %307

300:                                              ; preds = %287
  %301 = icmp eq i16 %290, -1
  br i1 %301, label %302, label %307

302:                                              ; preds = %300
  %303 = load ptr, ptr @r, align 8, !tbaa !5
  %304 = and i64 %295, 4294967295
  %305 = getelementptr inbounds i32, ptr %210, i64 %304
  %306 = call i32 %303(ptr noundef %305) #13, !callees !17
  br label %307

307:                                              ; preds = %302, %300, %298
  %308 = phi i32 [ %299, %298 ], [ %306, %302 ], [ %291, %300 ]
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.Elf32_Shdr, ptr %118, i64 %309
  %311 = load ptr, ptr @r, align 8, !tbaa !5
  %312 = getelementptr inbounds %struct.Elf32_Shdr, ptr %310, i64 0, i32 4
  %313 = call i32 %311(ptr noundef nonnull %312) #13, !callees !17
  %314 = zext i32 %313 to i64
  %315 = getelementptr i8, ptr %34, i64 %314
  %316 = load ptr, ptr @r, align 8, !tbaa !5
  %317 = getelementptr inbounds %struct.Elf32_Sym, ptr %267, i64 0, i32 1
  %318 = call i32 %316(ptr noundef nonnull %317) #13, !callees !17
  %319 = zext i32 %318 to i64
  %320 = getelementptr i8, ptr %315, i64 %319
  %321 = load ptr, ptr @r, align 8, !tbaa !5
  %322 = getelementptr inbounds %struct.Elf32_Shdr, ptr %310, i64 0, i32 3
  %323 = call i32 %321(ptr noundef nonnull %322) #13, !callees !17
  %324 = zext i32 %323 to i64
  %325 = sub nsw i64 0, %324
  %326 = getelementptr i8, ptr %320, i64 %325
  %327 = load ptr, ptr @w, align 8, !tbaa !5
  call void %327(i32 noundef 0, ptr noundef %326) #13, !callees !22
  br label %553

328:                                              ; preds = %95
  %329 = load ptr, ptr @r2, align 8, !tbaa !5
  %330 = getelementptr inbounds %struct.Elf64_Ehdr, ptr %34, i64 0, i32 8
  %331 = call zeroext i16 %329(ptr noundef nonnull %330) #13, !callees !16
  %332 = icmp eq i16 %331, 64
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load ptr, ptr @r2, align 8, !tbaa !5
  %335 = getelementptr inbounds %struct.Elf64_Ehdr, ptr %34, i64 0, i32 11
  %336 = call zeroext i16 %334(ptr noundef nonnull %335) #13, !callees !16
  %337 = icmp eq i16 %336, 64
  br i1 %337, label %341, label %338

338:                                              ; preds = %333, %328
  %339 = load ptr, ptr @stderr, align 8, !tbaa !5
  %340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.7, ptr noundef %51) #14
  br label %551

341:                                              ; preds = %333
  %342 = load ptr, ptr @r8, align 8, !tbaa !5
  %343 = getelementptr inbounds %struct.Elf64_Ehdr, ptr %34, i64 0, i32 6
  %344 = call i64 %342(ptr noundef nonnull %343) #13, !callees !23
  %345 = getelementptr inbounds i8, ptr %34, i64 %344
  %346 = load ptr, ptr @r2, align 8, !tbaa !5
  %347 = getelementptr inbounds %struct.Elf64_Ehdr, ptr %34, i64 0, i32 13
  %348 = call zeroext i16 %346(ptr noundef nonnull %347) #13, !callees !16
  %349 = zext i16 %348 to i32
  %350 = icmp eq i16 %348, -1
  br i1 %350, label %351, label %355

351:                                              ; preds = %341
  %352 = load ptr, ptr @r, align 8, !tbaa !5
  %353 = getelementptr inbounds %struct.Elf64_Shdr, ptr %345, i64 0, i32 6
  %354 = call i32 %352(ptr noundef nonnull %353) #13, !callees !17
  br label %355

355:                                              ; preds = %351, %341
  %356 = phi i32 [ %354, %351 ], [ %349, %341 ]
  %357 = load ptr, ptr @r8, align 8, !tbaa !5
  %358 = zext i32 %356 to i64
  %359 = getelementptr inbounds %struct.Elf64_Shdr, ptr %345, i64 %358
  %360 = getelementptr inbounds %struct.Elf64_Shdr, ptr %359, i64 0, i32 4
  %361 = call i64 %357(ptr noundef nonnull %360) #13, !callees !23
  %362 = getelementptr inbounds i8, ptr %34, i64 %361
  %363 = load ptr, ptr @r2, align 8, !tbaa !5
  %364 = getelementptr inbounds %struct.Elf64_Ehdr, ptr %34, i64 0, i32 12
  %365 = call zeroext i16 %363(ptr noundef nonnull %364) #13, !callees !16
  %366 = zext i16 %365 to i64
  %367 = icmp eq i16 %365, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %355
  %369 = load ptr, ptr @r8, align 8, !tbaa !5
  %370 = getelementptr inbounds %struct.Elf64_Shdr, ptr %345, i64 0, i32 5
  %371 = call i64 %369(ptr noundef nonnull %370) #13, !callees !23
  br label %372

372:                                              ; preds = %368, %355
  %373 = phi i64 [ %371, %368 ], [ %366, %355 ]
  %374 = and i64 %373, 4294967295
  %375 = getelementptr inbounds %struct.Elf64_Shdr, ptr %345, i64 %374
  %376 = icmp eq i64 %374, 0
  br i1 %376, label %441, label %377

377:                                              ; preds = %434, %372
  %378 = phi ptr [ %437, %434 ], [ %345, %372 ]
  %379 = phi i32 [ %436, %434 ], [ 0, %372 ]
  %380 = phi i32 [ %394, %434 ], [ 0, %372 ]
  %381 = phi ptr [ %400, %434 ], [ null, %372 ]
  %382 = phi ptr [ %397, %434 ], [ null, %372 ]
  %383 = phi ptr [ %393, %434 ], [ null, %372 ]
  %384 = phi i32 [ %425, %434 ], [ 0, %372 ]
  %385 = phi ptr [ %424, %434 ], [ null, %372 ]
  %386 = phi ptr [ %435, %434 ], [ null, %372 ]
  %387 = load ptr, ptr @r, align 8, !tbaa !5
  %388 = call i32 %387(ptr noundef %378) #13, !callees !17
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %362, i64 %389
  %391 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %390, ptr noundef nonnull dereferenceable(11) @.str.9) #15
  %392 = icmp eq i32 %391, 0
  %393 = select i1 %392, ptr %378, ptr %383
  %394 = select i1 %392, i32 %379, i32 %380
  %395 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %390, ptr noundef nonnull dereferenceable(8) @.str.10) #15
  %396 = icmp eq i32 %395, 0
  %397 = select i1 %396, ptr %378, ptr %382
  %398 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %390, ptr noundef nonnull dereferenceable(8) @.str.11) #15
  %399 = icmp eq i32 %398, 0
  %400 = select i1 %399, ptr %378, ptr %381
  %401 = load ptr, ptr @r, align 8, !tbaa !5
  %402 = getelementptr inbounds %struct.Elf64_Shdr, ptr %378, i64 0, i32 1
  %403 = call i32 %401(ptr noundef nonnull %402) #13, !callees !17
  %404 = icmp eq i32 %403, 9
  br i1 %404, label %409, label %405

405:                                              ; preds = %377
  %406 = load ptr, ptr @r, align 8, !tbaa !5
  %407 = call i32 %406(ptr noundef nonnull %402) #13, !callees !17
  %408 = icmp eq i32 %407, 4
  br i1 %408, label %409, label %423

409:                                              ; preds = %405, %377
  %410 = load ptr, ptr @r, align 8, !tbaa !5
  %411 = getelementptr inbounds %struct.Elf64_Shdr, ptr %378, i64 0, i32 7
  %412 = call i32 %410(ptr noundef nonnull %411) #13, !callees !17
  %413 = icmp eq i32 %412, %394
  br i1 %413, label %414, label %423

414:                                              ; preds = %409
  %415 = load ptr, ptr @r8, align 8, !tbaa !5
  %416 = getelementptr inbounds %struct.Elf64_Shdr, ptr %378, i64 0, i32 4
  %417 = call i64 %415(ptr noundef nonnull %416) #13, !callees !23
  %418 = getelementptr i8, ptr %34, i64 %417
  %419 = load ptr, ptr @r8, align 8, !tbaa !5
  %420 = getelementptr inbounds %struct.Elf64_Shdr, ptr %378, i64 0, i32 5
  %421 = call i64 %419(ptr noundef nonnull %420) #13, !callees !23
  %422 = trunc i64 %421 to i32
  br label %423

423:                                              ; preds = %414, %409, %405
  %424 = phi ptr [ %418, %414 ], [ %385, %409 ], [ %385, %405 ]
  %425 = phi i32 [ %422, %414 ], [ %384, %409 ], [ %384, %405 ]
  %426 = load ptr, ptr @r, align 8, !tbaa !5
  %427 = call i32 %426(ptr noundef nonnull %402) #13, !callees !17
  %428 = icmp eq i32 %427, 18
  br i1 %428, label %429, label %434

429:                                              ; preds = %423
  %430 = load ptr, ptr @r8, align 8, !tbaa !5
  %431 = getelementptr inbounds %struct.Elf64_Shdr, ptr %378, i64 0, i32 4
  %432 = call i64 %430(ptr noundef nonnull %431) #13, !callees !23
  %433 = getelementptr inbounds i8, ptr %34, i64 %432
  br label %434

434:                                              ; preds = %429, %423
  %435 = phi ptr [ %433, %429 ], [ %386, %423 ]
  %436 = add nuw nsw i32 %379, 1
  %437 = getelementptr inbounds %struct.Elf64_Shdr, ptr %378, i64 1
  %438 = icmp ult ptr %437, %375
  br i1 %438, label %377, label %439

439:                                              ; preds = %434
  %440 = icmp eq ptr %393, null
  br i1 %440, label %441, label %444

441:                                              ; preds = %439, %372
  %442 = load ptr, ptr @stderr, align 8, !tbaa !5
  %443 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %442, ptr noundef nonnull @.str.12, ptr noundef %51) #14
  br label %551

444:                                              ; preds = %439
  %445 = icmp eq ptr %397, null
  br i1 %445, label %446, label %449

446:                                              ; preds = %444
  %447 = load ptr, ptr @stderr, align 8, !tbaa !5
  %448 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %447, ptr noundef nonnull @.str.13, ptr noundef %51) #14
  br label %551

449:                                              ; preds = %444
  %450 = icmp eq ptr %400, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %449
  %452 = load ptr, ptr @stderr, align 8, !tbaa !5
  %453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef nonnull @.str.14, ptr noundef %51) #14
  br label %551

454:                                              ; preds = %449
  %455 = load ptr, ptr @r8, align 8, !tbaa !5
  %456 = getelementptr inbounds %struct.Elf64_Shdr, ptr %393, i64 0, i32 4
  %457 = call i64 %455(ptr noundef nonnull %456) #13, !callees !23
  %458 = getelementptr i8, ptr %34, i64 %457
  %459 = load ptr, ptr @r8, align 8, !tbaa !5
  %460 = getelementptr inbounds %struct.Elf64_Shdr, ptr %400, i64 0, i32 4
  %461 = call i64 %459(ptr noundef nonnull %460) #13, !callees !23
  %462 = getelementptr inbounds i8, ptr %34, i64 %461
  %463 = load ptr, ptr @r8, align 8, !tbaa !5
  %464 = getelementptr inbounds %struct.Elf64_Shdr, ptr %397, i64 0, i32 4
  %465 = call i64 %463(ptr noundef nonnull %464) #13, !callees !23
  %466 = getelementptr inbounds i8, ptr %34, i64 %465
  %467 = load ptr, ptr @r8, align 8, !tbaa !5
  %468 = getelementptr inbounds %struct.Elf64_Shdr, ptr %393, i64 0, i32 5
  %469 = call i64 %467(ptr noundef nonnull %468) #13
  br i1 %96, label %472, label %470

470:                                              ; preds = %454
  %471 = trunc i64 %469 to i32
  call void %97(ptr noundef %458, i32 noundef %471) #13, !callees !18
  br label %475

472:                                              ; preds = %454
  %473 = shl i64 %469, 28
  %474 = ashr i64 %473, 32
  call void @qsort(ptr noundef %458, i64 noundef %474, i64 noundef 16, ptr noundef nonnull @compare_extable_64) #13
  br label %475

475:                                              ; preds = %472, %470
  %476 = icmp eq ptr %424, null
  br i1 %476, label %479, label %477

477:                                              ; preds = %475
  %478 = sext i32 %425 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %424, i8 0, i64 %478, i1 false) #13
  br label %479

479:                                              ; preds = %477, %475
  %480 = load ptr, ptr @r8, align 8, !tbaa !5
  %481 = call i64 %480(ptr noundef nonnull %464) #13, !callees !23
  %482 = getelementptr inbounds %struct.Elf64_Shdr, ptr %397, i64 0, i32 5
  %483 = load ptr, ptr @r8, align 8, !tbaa !5
  %484 = call i64 %483(ptr noundef nonnull %482) #13, !callees !23
  %485 = icmp ult i64 %484, 24
  br i1 %485, label %506, label %486

486:                                              ; preds = %479
  %487 = getelementptr i8, ptr %34, i64 %481
  br label %488

488:                                              ; preds = %501, %486
  %489 = phi ptr [ %502, %501 ], [ %487, %486 ]
  %490 = getelementptr inbounds %struct.Elf64_Sym, ptr %489, i64 0, i32 1
  %491 = load i8, ptr %490, align 4, !tbaa !24
  %492 = and i8 %491, 15
  %493 = icmp eq i8 %492, 1
  br i1 %493, label %494, label %501

494:                                              ; preds = %488
  %495 = load ptr, ptr @r, align 8, !tbaa !5
  %496 = call i32 %495(ptr noundef nonnull %489) #13, !callees !17
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds i8, ptr %462, i64 %497
  %499 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %498, ptr noundef nonnull dereferenceable(25) @.str.15) #15
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %509, label %501

501:                                              ; preds = %494, %488
  %502 = getelementptr inbounds %struct.Elf64_Sym, ptr %489, i64 1
  %503 = load ptr, ptr @r8, align 8, !tbaa !5
  %504 = call i64 %503(ptr noundef nonnull %482) #13, !callees !23
  %505 = icmp ult i64 %504, 24
  br i1 %505, label %506, label %488

506:                                              ; preds = %501, %479
  %507 = load ptr, ptr @stderr, align 8, !tbaa !5
  %508 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.16, ptr noundef %51) #14
  br label %551

509:                                              ; preds = %494
  %510 = load ptr, ptr @r2, align 8, !tbaa !5
  %511 = getelementptr inbounds %struct.Elf64_Sym, ptr %489, i64 0, i32 3
  %512 = call zeroext i16 %510(ptr noundef nonnull %511) #13, !callees !16
  %513 = zext i16 %512 to i32
  %514 = ptrtoint ptr %489 to i64
  %515 = ptrtoint ptr %466 to i64
  %516 = sub i64 %514, %515
  %517 = sdiv exact i64 %516, 24
  %518 = add i16 %512, 1
  %519 = icmp ult i16 %518, -255
  br i1 %519, label %522, label %520

520:                                              ; preds = %509
  %521 = or i32 %513, -65536
  br label %529

522:                                              ; preds = %509
  %523 = icmp eq i16 %512, -1
  br i1 %523, label %524, label %529

524:                                              ; preds = %522
  %525 = load ptr, ptr @r, align 8, !tbaa !5
  %526 = and i64 %517, 4294967295
  %527 = getelementptr inbounds i32, ptr %435, i64 %526
  %528 = call i32 %525(ptr noundef %527) #13, !callees !17
  br label %529

529:                                              ; preds = %524, %522, %520
  %530 = phi i32 [ %521, %520 ], [ %528, %524 ], [ %513, %522 ]
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds %struct.Elf64_Shdr, ptr %345, i64 %531
  %533 = load ptr, ptr @r8, align 8, !tbaa !5
  %534 = getelementptr inbounds %struct.Elf64_Shdr, ptr %532, i64 0, i32 4
  %535 = call i64 %533(ptr noundef nonnull %534) #13, !callees !23
  %536 = getelementptr i8, ptr %34, i64 %535
  %537 = load ptr, ptr @r8, align 8, !tbaa !5
  %538 = getelementptr inbounds %struct.Elf64_Sym, ptr %489, i64 0, i32 4
  %539 = call i64 %537(ptr noundef nonnull %538) #13, !callees !23
  %540 = getelementptr i8, ptr %536, i64 %539
  %541 = load ptr, ptr @r8, align 8, !tbaa !5
  %542 = getelementptr inbounds %struct.Elf64_Shdr, ptr %532, i64 0, i32 3
  %543 = call i64 %541(ptr noundef nonnull %542) #13, !callees !23
  %544 = sub i64 0, %543
  %545 = getelementptr i8, ptr %540, i64 %544
  %546 = load ptr, ptr @w, align 8, !tbaa !5
  call void %546(i32 noundef 0, ptr noundef %545) #13, !callees !22
  br label %553

547:                                              ; preds = %95
  %548 = zext i8 %99 to i32
  %549 = load ptr, ptr @stderr, align 8, !tbaa !5
  %550 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %549, ptr noundef nonnull @.str.8, i32 noundef %548, ptr noundef %51) #14
  br label %551

551:                                              ; preds = %547, %506, %451, %446, %441, %338, %284, %226, %221, %216, %110, %89, %79, %55
  %552 = add nsw i32 %14, 1
  br label %553

553:                                              ; preds = %551, %529, %307
  %554 = phi i32 [ %552, %551 ], [ %14, %529 ], [ %14, %307 ]
  %555 = call i32 @munmap(ptr noundef nonnull %34, i64 noundef %50) #13
  br label %556

556:                                              ; preds = %553, %46
  %557 = phi i64 [ %50, %553 ], [ %47, %46 ]
  %558 = phi i32 [ %554, %553 ], [ %48, %46 ]
  %559 = add nuw nsw i64 %13, 1
  %560 = icmp eq i64 %559, %8
  br i1 %560, label %561, label %12

561:                                              ; preds = %556
  %562 = icmp ne i32 %558, 0
  %563 = zext i1 %562 to i32
  br label %564

564:                                              ; preds = %561, %9
  %565 = phi i32 [ 0, %9 ], [ %563, %561 ]
  ret i32 %565
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @rle(ptr nocapture noundef readonly %0) #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = zext i8 %2 to i32
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !15
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or i32 %7, %3
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %8, %12
  %14 = getelementptr inbounds i8, ptr %0, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 %16, 24
  %18 = or i32 %13, %17
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal zeroext i16 @r2le(ptr nocapture noundef readonly %0) #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = zext i8 %2 to i16
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !15
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  %8 = or i16 %7, %3
  ret i16 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i64 @r8le(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 4
  %3 = load i8, ptr %2, align 1, !tbaa !15
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 5
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 6
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 7
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i64
  %14 = shl nuw i64 %13, 56
  %15 = shl nuw nsw i64 %10, 48
  %16 = shl nuw nsw i64 %7, 40
  %17 = shl nuw nsw i64 %4, 32
  %18 = load i8, ptr %0, align 1, !tbaa !15
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 8
  %24 = getelementptr inbounds i8, ptr %0, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = getelementptr inbounds i8, ptr %0, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = or i64 %16, %17
  %33 = or i64 %32, %15
  %34 = or i64 %33, %14
  %35 = or i64 %34, %19
  %36 = or i64 %35, %23
  %37 = or i64 %36, %27
  %38 = or i64 %37, %31
  ret i64 %38
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @wle(i32 noundef %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = lshr i32 %0, 16
  %4 = getelementptr inbounds i8, ptr %1, i64 2
  %5 = trunc i32 %3 to i8
  %6 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %5, ptr %4, align 1, !tbaa !15
  %7 = lshr i32 %0, 24
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %6, align 1, !tbaa !15
  %9 = trunc i32 %0 to i8
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %9, ptr %1, align 1, !tbaa !15
  %11 = lshr i32 %0, 8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %10, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @w8le(i64 noundef %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = lshr i64 %0, 32
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  %5 = getelementptr inbounds i8, ptr %1, i64 6
  %6 = lshr i64 %0, 48
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %7, ptr %5, align 1, !tbaa !15
  %9 = lshr i64 %0, 56
  %10 = trunc i64 %9 to i8
  store i8 %10, ptr %8, align 1, !tbaa !15
  %11 = trunc i64 %3 to i8
  %12 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %11, ptr %4, align 1, !tbaa !15
  %13 = lshr i64 %0, 40
  %14 = trunc i64 %13 to i8
  store i8 %14, ptr %12, align 1, !tbaa !15
  %15 = getelementptr inbounds i8, ptr %1, i64 2
  %16 = lshr i64 %0, 16
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %17, ptr %15, align 1, !tbaa !15
  %19 = lshr i64 %0, 24
  %20 = trunc i64 %19 to i8
  store i8 %20, ptr %18, align 1, !tbaa !15
  %21 = trunc i64 %0 to i8
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %21, ptr %1, align 1, !tbaa !15
  %23 = lshr i64 %0, 8
  %24 = trunc i64 %23 to i8
  store i8 %24, ptr %22, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @rbe(ptr nocapture noundef readonly %0) #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %9, %13
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal zeroext i16 @r2be(ptr nocapture noundef readonly %0) #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = zext i8 %2 to i16
  %4 = shl nuw i16 %3, 8
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i16
  %8 = or i16 %4, %7
  ret i16 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i64 @r8be(ptr nocapture noundef readonly %0) #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or i64 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or i64 %9, %13
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = zext i8 %16 to i64
  %18 = or i64 %14, %17
  %19 = shl nuw i64 %18, 32
  %20 = getelementptr inbounds i8, ptr %0, i64 4
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 24
  %24 = getelementptr inbounds i8, ptr %0, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = or i64 %27, %23
  %29 = getelementptr inbounds i8, ptr %0, i64 6
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 8
  %33 = getelementptr inbounds i8, ptr %0, i64 7
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = zext i8 %34 to i64
  %36 = or i64 %28, %19
  %37 = or i64 %36, %32
  %38 = or i64 %37, %35
  ret i64 %38
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @wbe(i32 noundef %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = lshr i32 %0, 16
  %4 = lshr i32 %0, 24
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %5, ptr %1, align 1, !tbaa !15
  %7 = trunc i32 %3 to i8
  store i8 %7, ptr %6, align 1, !tbaa !15
  %8 = getelementptr inbounds i8, ptr %1, i64 2
  %9 = lshr i32 %0, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %10, ptr %8, align 1, !tbaa !15
  %12 = trunc i32 %0 to i8
  store i8 %12, ptr %11, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @w8be(i64 noundef %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = lshr i64 %0, 32
  %4 = lshr i64 %0, 56
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %5, ptr %1, align 1, !tbaa !15
  %7 = lshr i64 %0, 48
  %8 = trunc i64 %7 to i8
  store i8 %8, ptr %6, align 1, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %1, i64 2
  %10 = lshr i64 %0, 40
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %11, ptr %9, align 1, !tbaa !15
  %13 = trunc i64 %3 to i8
  store i8 %13, ptr %12, align 1, !tbaa !15
  %14 = getelementptr inbounds i8, ptr %1, i64 4
  %15 = lshr i64 %0, 24
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %16, ptr %14, align 1, !tbaa !15
  %18 = lshr i64 %0, 16
  %19 = trunc i64 %18 to i8
  store i8 %19, ptr %17, align 1, !tbaa !15
  %20 = getelementptr inbounds i8, ptr %1, i64 6
  %21 = lshr i64 %0, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %22, ptr %20, align 1, !tbaa !15
  %24 = trunc i64 %0 to i8
  store i8 %24, ptr %23, align 1, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_relative_table_with_data(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = sub i32 0, %1
  %6 = udiv i32 %5, 12
  %7 = sub nsw i32 0, %6
  %8 = sext i32 %7 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %8, i64 noundef 12, ptr noundef nonnull @compare_relative_table) #13
  br label %44

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %23, %9 ], [ 0, %2 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load ptr, ptr @w, align 8, !tbaa !5
  %14 = load ptr, ptr @r, align 8, !tbaa !5
  %15 = tail call i32 %14(ptr noundef %12) #13, !callees !17
  %16 = add i32 %15, %10
  tail call void %13(i32 noundef %16, ptr noundef %12) #13, !callees !22
  %17 = load ptr, ptr @w, align 8, !tbaa !5
  %18 = load ptr, ptr @r, align 8, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %12, i64 1
  %20 = tail call i32 %18(ptr noundef nonnull %19) #13, !callees !17
  %21 = add i32 %10, 4
  %22 = add i32 %21, %20
  tail call void %17(i32 noundef %22, ptr noundef nonnull %19) #13, !callees !22
  %23 = add i32 %10, 12
  %24 = icmp slt i32 %23, %1
  br i1 %24, label %9, label %25

25:                                               ; preds = %9
  %26 = sdiv i32 %1, 12
  %27 = sext i32 %26 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %27, i64 noundef 12, ptr noundef nonnull @compare_relative_table) #13
  br i1 %3, label %28, label %44

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %42, %28 ], [ 0, %25 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = load ptr, ptr @w, align 8, !tbaa !5
  %33 = load ptr, ptr @r, align 8, !tbaa !5
  %34 = tail call i32 %33(ptr noundef %31) #13, !callees !17
  %35 = sub i32 %34, %29
  tail call void %32(i32 noundef %35, ptr noundef %31) #13, !callees !22
  %36 = load ptr, ptr @w, align 8, !tbaa !5
  %37 = load ptr, ptr @r, align 8, !tbaa !5
  %38 = getelementptr inbounds i32, ptr %31, i64 1
  %39 = tail call i32 %37(ptr noundef nonnull %38) #13, !callees !17
  %40 = sub nuw nsw i32 -4, %29
  %41 = add i32 %40, %39
  tail call void %36(i32 noundef %41, ptr noundef nonnull %38) #13, !callees !22
  %42 = add i32 %29, 12
  %43 = icmp slt i32 %42, %1
  br i1 %43, label %28, label %44

44:                                               ; preds = %28, %25, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s390_sort_relative_table(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = sub i32 0, %1
  %6 = lshr i32 %5, 4
  %7 = sub nsw i32 0, %6
  %8 = sext i32 %7 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %8, i64 noundef 16, ptr noundef nonnull @compare_relative_table) #13
  br label %64

9:                                                ; preds = %9, %2
  %10 = phi i64 [ %32, %9 ], [ 0, %2 ]
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load ptr, ptr @w, align 8, !tbaa !5
  %13 = load ptr, ptr @r, align 8, !tbaa !5
  %14 = tail call i32 %13(ptr noundef %11) #13, !callees !17
  %15 = trunc i64 %10 to i32
  %16 = add i32 %14, %15
  tail call void %12(i32 noundef %16, ptr noundef %11) #13, !callees !22
  %17 = load ptr, ptr @w, align 8, !tbaa !5
  %18 = load ptr, ptr @r, align 8, !tbaa !5
  %19 = getelementptr inbounds i8, ptr %11, i64 4
  %20 = tail call i32 %18(ptr noundef nonnull %19) #13, !callees !17
  %21 = trunc i64 %10 to i32
  %22 = or i32 %21, 4
  %23 = add i32 %22, %20
  tail call void %17(i32 noundef %23, ptr noundef nonnull %19) #13, !callees !22
  %24 = load ptr, ptr @r8, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, ptr %11, i64 8
  %26 = tail call i64 %24(ptr noundef nonnull %25) #13, !callees !23
  %27 = icmp eq i64 %26, 0
  %28 = or i64 %10, 8
  %29 = add i64 %26, %28
  %30 = select i1 %27, i64 0, i64 %29
  %31 = load ptr, ptr @w8, align 8, !tbaa !5
  tail call void %31(i64 noundef %30, ptr noundef nonnull %25) #13, !callees !26
  %32 = add nuw i64 %10, 16
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %9, label %35

35:                                               ; preds = %9
  %36 = sdiv i32 %1, 16
  %37 = sext i32 %36 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %37, i64 noundef 16, ptr noundef nonnull @compare_relative_table) #13
  br i1 %3, label %38, label %64

38:                                               ; preds = %38, %35
  %39 = phi i64 [ %61, %38 ], [ 0, %35 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load ptr, ptr @w, align 8, !tbaa !5
  %42 = load ptr, ptr @r, align 8, !tbaa !5
  %43 = tail call i32 %42(ptr noundef %40) #13, !callees !17
  %44 = trunc i64 %39 to i32
  %45 = sub i32 %43, %44
  tail call void %41(i32 noundef %45, ptr noundef %40) #13, !callees !22
  %46 = load ptr, ptr @w, align 8, !tbaa !5
  %47 = load ptr, ptr @r, align 8, !tbaa !5
  %48 = getelementptr inbounds i8, ptr %40, i64 4
  %49 = tail call i32 %47(ptr noundef nonnull %48) #13, !callees !17
  %50 = trunc i64 %39 to i32
  %51 = sub nuw nsw i32 -4, %50
  %52 = add i32 %51, %49
  tail call void %46(i32 noundef %52, ptr noundef nonnull %48) #13, !callees !22
  %53 = load ptr, ptr @r8, align 8, !tbaa !5
  %54 = getelementptr inbounds i8, ptr %40, i64 8
  %55 = tail call i64 %53(ptr noundef nonnull %54) #13, !callees !23
  %56 = icmp eq i64 %55, 0
  %57 = or i64 %39, 8
  %58 = sub i64 %55, %57
  %59 = select i1 %56, i64 0, i64 %58
  %60 = load ptr, ptr @w8, align 8, !tbaa !5
  tail call void %60(i64 noundef %59, ptr noundef nonnull %54) #13, !callees !26
  %61 = add nuw i64 %39, 16
  %62 = trunc i64 %61 to i32
  %63 = icmp slt i32 %62, %1
  br i1 %63, label %38, label %64

64:                                               ; preds = %38, %35, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_relative_table(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = sub i32 0, %1
  %6 = lshr i32 %5, 3
  %7 = sub nsw i32 0, %6
  %8 = sext i32 %7 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %8, i64 noundef 8, ptr noundef nonnull @compare_relative_table) #13
  br label %34

9:                                                ; preds = %9, %2
  %10 = phi i64 [ %17, %9 ], [ 0, %2 ]
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load ptr, ptr @w, align 8, !tbaa !5
  %13 = load ptr, ptr @r, align 8, !tbaa !5
  %14 = tail call i32 %13(ptr noundef %11) #13, !callees !17
  %15 = trunc i64 %10 to i32
  %16 = add i32 %14, %15
  tail call void %12(i32 noundef %16, ptr noundef %11) #13, !callees !22
  %17 = add nuw i64 %10, 4
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, %1
  br i1 %19, label %9, label %20

20:                                               ; preds = %9
  %21 = sdiv i32 %1, 8
  %22 = sext i32 %21 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %22, i64 noundef 8, ptr noundef nonnull @compare_relative_table) #13
  br i1 %3, label %23, label %34

23:                                               ; preds = %23, %20
  %24 = phi i64 [ %31, %23 ], [ 0, %20 ]
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = load ptr, ptr @w, align 8, !tbaa !5
  %27 = load ptr, ptr @r, align 8, !tbaa !5
  %28 = tail call i32 %27(ptr noundef %25) #13, !callees !17
  %29 = trunc i64 %24 to i32
  %30 = sub i32 %28, %29
  tail call void %26(i32 noundef %30, ptr noundef %25) #13, !callees !22
  %31 = add nuw i64 %24, 4
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, %1
  br i1 %33, label %23, label %34

34:                                               ; preds = %23, %20, %4
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @compare_relative_table(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @r, align 8, !tbaa !5
  %4 = tail call i32 %3(ptr noundef %0) #13, !callees !17
  %5 = load ptr, ptr @r, align 8, !tbaa !5
  %6 = tail call i32 %5(ptr noundef %1) #13, !callees !17
  %7 = icmp slt i32 %4, %6
  %8 = icmp sgt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal i32 @compare_extable_32(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @r, align 8, !tbaa !5
  %4 = tail call i32 %3(ptr noundef %0) #13, !callees !17
  %5 = load ptr, ptr @r, align 8, !tbaa !5
  %6 = tail call i32 %5(ptr noundef %1) #13, !callees !17
  %7 = icmp ult i32 %4, %6
  %8 = icmp ugt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal i32 @compare_extable_64(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @r8, align 8, !tbaa !5
  %4 = tail call i64 %3(ptr noundef %0) #13, !callees !23
  %5 = load ptr, ptr @r8, align 8, !tbaa !5
  %6 = tail call i64 %5(ptr noundef %1) #13, !callees !23
  %7 = icmp ult i64 %4, %6
  %8 = icmp ugt i64 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { cold }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!9 = !{!10, !12, i64 24}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !13, i64 88, !13, i64 104, !7, i64 120}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"timespec", !11, i64 0, !11, i64 8}
!14 = !{!10, !11, i64 48}
!15 = !{!7, !7, i64 0}
!16 = !{ptr @r2be, ptr @r2le}
!17 = !{ptr @rbe, ptr @rle}
!18 = !{ptr @s390_sort_relative_table, ptr @sort_relative_table, ptr @sort_relative_table_with_data}
!19 = !{!20, !7, i64 12}
!20 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 12, !7, i64 13, !21, i64 14}
!21 = !{!"short", !7, i64 0}
!22 = !{ptr @wbe, ptr @wle}
!23 = !{ptr @r8be, ptr @r8le}
!24 = !{!25, !7, i64 4}
!25 = !{!"", !12, i64 0, !7, i64 4, !7, i64 5, !21, i64 6, !11, i64 8, !11, i64 16}
!26 = !{ptr @w8be, ptr @w8le}
