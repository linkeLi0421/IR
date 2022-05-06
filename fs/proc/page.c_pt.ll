; ModuleID = '/llk/IR/fs/proc/page.c_pt.bc'
source_filename = "../fs/proc/page.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.64, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.70 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_proc__252_338_proc_page_init5 = internal global ptr @proc_page_init, section ".initcall5.init", align 4
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"kpagecount\00", align 1
@kpagecount_proc_ops = internal constant %struct.proc_ops { i32 0, ptr null, ptr @kpagecount_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"kpageflags\00", align 1
@kpageflags_proc_ops = internal constant %struct.proc_ops { i32 0, ptr null, ptr @kpageflags_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__252_338_proc_page_init5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @stable_page_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %194, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !8

10:                                               ; preds = %3
  %11 = add i32 %7, -1
  br label %14

12:                                               ; preds = %3
  %13 = ptrtoint ptr %0 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = tail call zeroext i1 @page_mapped(ptr noundef nonnull %0) #5
  %22 = select i1 %21, i64 2048, i64 0
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i64 [ 0, %14 ], [ %22, %20 ]
  %25 = load volatile i32, ptr %6, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !8

28:                                               ; preds = %23
  %29 = add i32 %25, -1
  %30 = ptrtoint ptr %0 to i32
  br label %33

31:                                               ; preds = %23
  %32 = ptrtoint ptr %0 to i32
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = phi i32 [ %29, %28 ], [ %32, %31 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.anon.70, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = shl i32 %39, 12
  %41 = and i32 %40, 4096
  %42 = zext i32 %41 to i64
  %43 = or i64 %24, %42
  %44 = load volatile i32, ptr %0, align 4
  %45 = lshr i32 %44, 1
  %46 = and i32 %45, 32768
  %47 = zext i32 %46 to i64
  %48 = or i64 %43, %47
  %49 = load volatile i32, ptr %6, align 4
  %50 = shl i32 %49, 16
  %51 = and i32 %50, 65536
  %52 = zext i32 %51 to i64
  %53 = or i64 %48, %52
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = sub i32 %34, %55
  %57 = ashr exact i32 %56, 5
  %58 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %59 = add i32 %57, %58
  %60 = load i32, ptr @zero_pfn, align 4
  %61 = icmp eq i32 %60, %59
  %62 = or i64 %53, 16777216
  %63 = select i1 %61, i64 %62, i64 %53
  %64 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -268435328
  %67 = icmp eq i32 %66, -268435456
  br i1 %67, label %68, label %70

68:                                               ; preds = %33
  %69 = or i64 %63, 1024
  br label %87

70:                                               ; preds = %33
  %71 = load volatile i32, ptr %6, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !8

74:                                               ; preds = %70
  %75 = add i32 %71, -1
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %75, %74 ], [ %34, %70 ]
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 3
  %80 = load volatile i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = tail call zeroext i1 @is_free_buddy_page(ptr noundef nonnull %0) #5
  %84 = or i64 %63, 1024
  %85 = select i1 %83, i64 %84, i64 %63
  %86 = load i32, ptr %64, align 4
  br label %87

87:                                               ; preds = %82, %76, %68
  %88 = phi i32 [ %65, %68 ], [ %65, %76 ], [ %86, %82 ]
  %89 = phi i64 [ %69, %68 ], [ %63, %76 ], [ %85, %82 ]
  %90 = and i32 %88, -268435200
  %91 = icmp eq i32 %90, -268435456
  %92 = or i64 %89, 8388608
  %93 = select i1 %91, i64 %92, i64 %89
  %94 = and i32 %88, -268434944
  %95 = icmp eq i32 %94, -268435456
  %96 = or i64 %93, 67108864
  %97 = select i1 %95, i64 %96, i64 %93
  %98 = load volatile i32, ptr %6, align 4
  %99 = and i64 %5, 1
  %100 = or i64 %97, %99
  %101 = lshr i64 %5, 2
  %102 = and i64 %101, 128
  %103 = or i64 %100, %102
  %104 = load volatile i32, ptr %6, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %130, label %107

107:                                              ; preds = %87
  %108 = load volatile i32, ptr %6, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !8

111:                                              ; preds = %107
  %112 = add i32 %108, -1
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %112, %111 ], [ %34, %107 ]
  %115 = inttoptr i32 %114 to ptr
  %116 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 1
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120, !prof !8

120:                                              ; preds = %113
  %121 = add i32 %117, -1
  %122 = inttoptr i32 %121 to ptr
  br label %123

123:                                              ; preds = %120, %113
  %124 = phi ptr [ %115, %113 ], [ %122, %120 ]
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 512
  %127 = icmp eq i32 %126, 0
  %128 = or i64 %100, 128
  %129 = select i1 %127, i64 %103, i64 %128
  br label %130

130:                                              ; preds = %123, %87
  %131 = phi i64 [ %103, %87 ], [ %129, %123 ]
  %132 = lshr i64 %5, 7
  %133 = and i64 %132, 2
  %134 = shl nuw nsw i64 %5, 1
  %135 = and i64 %134, 16
  %136 = and i64 %134, 8
  %137 = and i64 %132, 256
  %138 = and i64 %134, 32
  %139 = and i64 %134, 4
  %140 = and i64 %134, 64
  %141 = lshr i64 %5, 9
  %142 = and i64 %141, 512
  %143 = or i64 %135, %133
  %144 = or i64 %143, %136
  %145 = or i64 %144, %137
  %146 = or i64 %145, %138
  %147 = or i64 %146, %139
  %148 = or i64 %147, %140
  %149 = or i64 %148, %142
  %150 = or i64 %149, %131
  %151 = load volatile i32, ptr %6, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154, !prof !8

154:                                              ; preds = %130
  %155 = add i32 %151, -1
  br label %156

156:                                              ; preds = %154, %130
  %157 = phi i32 [ %155, %154 ], [ %34, %130 ]
  %158 = inttoptr i32 %157 to ptr
  %159 = load volatile i32, ptr %158, align 4
  %160 = and i32 %159, 524288
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load volatile i32, ptr %158, align 4
  %164 = shl i32 %163, 3
  %165 = and i32 %164, 8192
  %166 = zext i32 %165 to i64
  %167 = or i64 %150, %166
  br label %168

168:                                              ; preds = %162, %156
  %169 = phi i64 [ %150, %156 ], [ %167, %162 ]
  %170 = lshr i64 %5, 5
  %171 = and i64 %170, 16384
  %172 = and i64 %101, 262144
  %173 = shl nuw nsw i64 %5, 12
  %174 = and i64 %173, 8589934592
  %175 = shl nuw nsw i64 %5, 20
  %176 = and i64 %175, 4294967296
  %177 = shl nuw nsw i64 %5, 17
  %178 = and i64 %177, 17179869184
  %179 = shl nuw nsw i64 %5, 22
  %180 = and i64 %179, 34359738368
  %181 = and i64 %179, 68719476736
  %182 = shl nuw nsw i64 %5, 27
  %183 = and i64 %182, 137438953472
  %184 = and i64 %182, 274877906944
  %185 = or i64 %172, %171
  %186 = or i64 %185, %174
  %187 = or i64 %186, %176
  %188 = or i64 %187, %178
  %189 = or i64 %188, %180
  %190 = or i64 %189, %181
  %191 = or i64 %190, %183
  %192 = or i64 %191, %184
  %193 = or i64 %192, %169
  br label %194

194:                                              ; preds = %168, %1
  %195 = phi i64 [ %193, %168 ], [ 1048576, %1 ]
  ret i64 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_free_buddy_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_page_init() #2 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @kpagecount_proc_ops) #5
  %2 = tail call ptr @proc_create(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @kpageflags_proc_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kpagecount_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 3
  %8 = or i32 %6, %2
  %9 = and i32 %8, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %95

11:                                               ; preds = %4
  %12 = load i32, ptr @max_pfn, align 4
  %13 = shl i32 %12, 3
  %14 = icmp ugt i32 %13, %6
  br i1 %14, label %15, label %95

15:                                               ; preds = %11
  %16 = sub i32 %13, %6
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %95, label %19

19:                                               ; preds = %75, %15
  %20 = phi i32 [ %78, %75 ], [ %17, %15 ]
  %21 = phi ptr [ %77, %75 ], [ %1, %15 ]
  %22 = phi i32 [ %76, %75 ], [ %7, %15 ]
  %23 = tail call i32 @pfn_valid(i32 noundef %22) #5
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr @mem_map, align 4
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = sub i32 %22, %26
  %28 = getelementptr %struct.page, ptr %25, i32 %27
  %29 = icmp eq ptr %28, null
  %30 = select i1 %24, i1 true, i1 %29
  br i1 %30, label %66, label %31

31:                                               ; preds = %19
  %32 = getelementptr %struct.page, ptr %25, i32 %27, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !8

36:                                               ; preds = %31
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %31
  %39 = ptrtoint ptr %28 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 512
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = getelementptr %struct.page, ptr %25, i32 %27, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, -129
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load volatile i32, ptr %28, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load volatile i32, ptr %32, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !8

58:                                               ; preds = %54, %50
  %59 = tail call i32 @__page_mapcount(ptr noundef nonnull %28) #5
  br label %63

60:                                               ; preds = %54
  %61 = load volatile i32, ptr %47, align 4
  %62 = add i32 %61, 1
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  %65 = sext i32 %64 to i64
  br label %66

66:                                               ; preds = %63, %46, %40, %19
  %67 = phi i64 [ %65, %63 ], [ 0, %46 ], [ 0, %40 ], [ 0, %19 ]
  %68 = tail call ptr @llvm.thread.pointer() #5
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #6, !srcloc !9
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %73 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i64 %67, i32 -1090519041) #5, !srcloc !12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = add i32 %22, 1
  %77 = getelementptr i64, ptr %21, i32 1
  %78 = add i32 %20, -8
  %79 = tail call i32 @__cond_resched() #5
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %81, label %19

81:                                               ; preds = %75
  %82 = ptrtoint ptr %77 to i32
  %83 = ptrtoint ptr %1 to i32
  %84 = sub i32 %82, %83
  br label %89

85:                                               ; preds = %66
  %86 = ptrtoint ptr %21 to i32
  %87 = ptrtoint ptr %1 to i32
  %88 = sub i32 %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i32 [ %88, %85 ], [ %84, %81 ]
  %91 = phi i32 [ -14, %85 ], [ %84, %81 ]
  %92 = load i64, ptr %3, align 8
  %93 = sext i32 %90 to i64
  %94 = add i64 %92, %93
  store i64 %94, ptr %3, align 8
  br label %95

95:                                               ; preds = %89, %15, %11, %4
  %96 = phi i32 [ -22, %4 ], [ 0, %11 ], [ 0, %15 ], [ %91, %89 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mem_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kpageflags_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 3
  %8 = or i32 %6, %2
  %9 = and i32 %8, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %4
  %12 = load i32, ptr @max_pfn, align 4
  %13 = shl i32 %12, 3
  %14 = icmp ugt i32 %13, %6
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = sub i32 %13, %6
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %38, %15
  %20 = phi i32 [ %41, %38 ], [ %17, %15 ]
  %21 = phi ptr [ %40, %38 ], [ %1, %15 ]
  %22 = phi i32 [ %39, %38 ], [ %7, %15 ]
  %23 = tail call i32 @pfn_valid(i32 noundef %22) #5
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr @mem_map, align 4
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = sub i32 %22, %26
  %28 = getelementptr %struct.page, ptr %25, i32 %27
  %29 = select i1 %24, ptr null, ptr %28
  %30 = tail call i64 @stable_page_flags(ptr noundef %29)
  %31 = tail call ptr @llvm.thread.pointer() #5
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #6, !srcloc !9
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i64 %30, i32 -1090519041) #5, !srcloc !13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %19
  %39 = add i32 %22, 1
  %40 = getelementptr i64, ptr %21, i32 1
  %41 = add i32 %20, -8
  %42 = tail call i32 @__cond_resched() #5
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %19

44:                                               ; preds = %38
  %45 = ptrtoint ptr %40 to i32
  %46 = ptrtoint ptr %1 to i32
  %47 = sub i32 %45, %46
  br label %52

48:                                               ; preds = %19
  %49 = ptrtoint ptr %21 to i32
  %50 = ptrtoint ptr %1 to i32
  %51 = sub i32 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %51, %48 ], [ %47, %44 ]
  %54 = phi i32 [ -14, %48 ], [ %47, %44 ]
  %55 = load i64, ptr %3, align 8
  %56 = sext i32 %53 to i64
  %57 = add i64 %55, %56
  store i64 %57, ptr %3, align 8
  br label %58

58:                                               ; preds = %52, %15, %11, %4
  %59 = phi i32 [ -22, %4 ], [ 0, %11 ], [ 0, %15 ], [ %54, %52 ]
  ret i32 %59
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

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
!9 = !{i64 4024940}
!10 = !{i64 4025137}
!11 = !{i64 2151510416}
!12 = !{i64 2153463571, i64 2153463851, i64 2153464185, i64 2153464519}
!13 = !{i64 2153478952, i64 2153479232, i64 2153479566, i64 2153479900}
