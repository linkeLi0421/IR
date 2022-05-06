; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbmon.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_videomode_from_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_videomode_from_videomode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_videomode_from_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_fb_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_fb_videomode\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_fb_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_firmware_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_firmware_edid\22\09\09\09\09\09"
module asm "__kstrtabns_fb_firmware_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_parse_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_parse_edid\22\09\09\09\09\09"
module asm "__kstrtabns_fb_parse_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_edid_to_monspecs:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_edid_to_monspecs\22\09\09\09\09\09"
module asm "__kstrtabns_fb_edid_to_monspecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_get_mode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_validate_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_validate_mode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_validate_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_destroy_modedb:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_destroy_modedb\22\09\09\09\09\09"
module asm "__kstrtabns_fb_destroy_modedb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.broken_edid = type { [4 x i8], i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmt_videomode = type { i32, i32, i32, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { ptr }
%struct.__fb_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_fb_videomode_from_videomode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_videomode_from_videomode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_videomode_from_videomode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_videomode_from_videomode to i32), ptr @__kstrtab_fb_videomode_from_videomode, ptr @__kstrtabns_fb_videomode_from_videomode }, section "___ksymtab_gpl+fb_videomode_from_videomode", align 4
@__kstrtab_of_get_fb_videomode = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_fb_videomode = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_fb_videomode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_fb_videomode to i32), ptr @__kstrtab_of_get_fb_videomode, ptr @__kstrtabns_of_get_fb_videomode }, section "___ksymtab_gpl+of_get_fb_videomode", align 4
@__kstrtab_fb_firmware_edid = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_firmware_edid = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_firmware_edid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_firmware_edid to i32), ptr @__kstrtab_fb_firmware_edid, ptr @__kstrtabns_fb_firmware_edid }, section "___ksymtab+fb_firmware_edid", align 4
@__kstrtab_fb_parse_edid = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_parse_edid = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_parse_edid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_parse_edid to i32), ptr @__kstrtab_fb_parse_edid, ptr @__kstrtabns_fb_parse_edid }, section "___ksymtab+fb_parse_edid", align 4
@__kstrtab_fb_edid_to_monspecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_edid_to_monspecs = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_edid_to_monspecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_edid_to_monspecs to i32), ptr @__kstrtab_fb_edid_to_monspecs, ptr @__kstrtabns_fb_edid_to_monspecs }, section "___ksymtab+fb_edid_to_monspecs", align 4
@__kstrtab_fb_get_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_get_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_get_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_get_mode to i32), ptr @__kstrtab_fb_get_mode, ptr @__kstrtabns_fb_get_mode }, section "___ksymtab+fb_get_mode", align 4
@__kstrtab_fb_validate_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_validate_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_validate_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_validate_mode to i32), ptr @__kstrtab_fb_validate_mode, ptr @__kstrtabns_fb_validate_mode }, section "___ksymtab+fb_validate_mode", align 4
@__kstrtab_fb_destroy_modedb = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_destroy_modedb = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_destroy_modedb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_destroy_modedb to i32), ptr @__kstrtab_fb_destroy_modedb, ptr @__kstrtabns_fb_destroy_modedb }, section "___ksymtab+fb_destroy_modedb", align 4
@brokendb = internal constant [3 x %struct.broken_edid] [%struct.broken_edid { [4 x i8] c"DEC\00", i32 1850, i32 1 }, %struct.broken_edid { [4 x i8] c"VSC\00", i32 23108, i32 2 }, %struct.broken_edid { [4 x i8] c"SHP\00", i32 5006, i32 3 }], align 4
@.str = private unnamed_addr constant [78 x i8] c"fbmon: The EDID Block of Manufacturer: %s Model: 0x%x is known to be broken,\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"fbmon: trying a header reconstruct\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"fbmon: trying to fix input type\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"fbmon: trying to fix monitor timings\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"      Display is GTF capable\0A\00", align 1
@vesa_modes = external dso_local local_unnamed_addr constant [0 x %struct.fb_videomode], align 4
@dmt_modes = external dso_local local_unnamed_addr constant [0 x %struct.dmt_videomode], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_fb_destroy_modedb, ptr @__ksymtab_fb_edid_to_monspecs, ptr @__ksymtab_fb_firmware_edid, ptr @__ksymtab_fb_get_mode, ptr @__ksymtab_fb_parse_edid, ptr @__ksymtab_fb_validate_mode, ptr @__ksymtab_fb_videomode_from_videomode, ptr @__ksymtab_of_get_fb_videomode], section "llvm.metadata"
@switch.table.fb_edid_to_monspecs = private unnamed_addr constant [4 x i16] [i16 2, i16 4, i16 8, i16 16], align 2
@switch.table.fb_edid_to_monspecs.5 = private unnamed_addr constant [3 x i16] [i16 32, i16 64, i16 128], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_destroy_modedb(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_parse_edid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %261, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @check_edid(ptr noundef nonnull %0) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call fastcc void @fix_edid(ptr noundef nonnull %0, i32 noundef %7) #14
  br label %10

10:                                               ; preds = %9, %6
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi i32 [ %20, %11 ], [ 0, %10 ]
  %13 = phi i32 [ %19, %11 ], [ 0, %10 ]
  %14 = phi i32 [ %21, %11 ], [ 0, %10 ]
  %15 = getelementptr i8, ptr %0, i32 %12
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %14, %17
  %19 = or i32 %13, %17
  %20 = add nuw nsw i32 %12, 1
  %21 = and i32 %18, 255
  %22 = icmp eq i32 %20, 128
  br i1 %22, label %23, label %11

23:                                               ; preds = %11
  %24 = icmp ne i32 %21, 0
  %25 = icmp eq i32 %19, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %261, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @check_edid(ptr noundef %0) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call fastcc void @fix_edid(ptr noundef %0, i32 noundef %28) #14
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i8, ptr %0, align 1
  %33 = icmp ne i8 %32, 0
  %34 = getelementptr i8, ptr %0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = icmp ne i8 %35, -1
  %37 = getelementptr i8, ptr %0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = icmp ne i8 %38, -1
  %40 = getelementptr i8, ptr %0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = icmp ne i8 %41, -1
  %43 = getelementptr i8, ptr %0, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp ne i8 %44, -1
  %46 = getelementptr i8, ptr %0, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = icmp ne i8 %47, -1
  %49 = getelementptr i8, ptr %0, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = icmp ne i8 %50, -1
  %52 = getelementptr i8, ptr %0, i32 7
  %53 = load i8, ptr %52, align 1
  %54 = icmp ne i8 %53, 0
  %55 = select i1 %54, i1 true, i1 %51
  %56 = select i1 %55, i1 true, i1 %48
  %57 = select i1 %56, i1 true, i1 %45
  %58 = select i1 %57, i1 true, i1 %42
  %59 = select i1 %58, i1 true, i1 %39
  %60 = select i1 %59, i1 true, i1 %36
  %61 = select i1 %60, i1 true, i1 %33
  br i1 %61, label %261, label %62

62:                                               ; preds = %31
  %63 = getelementptr i8, ptr %0, i32 54
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %0, i32 55
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %0, i32 56
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %0, i32 58
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %213, label %78

78:                                               ; preds = %257, %253, %249, %245, %241, %237, %233, %229, %225, %221, %217, %213, %74, %70, %66, %62
  %79 = phi ptr [ %63, %62 ], [ %63, %66 ], [ %63, %70 ], [ %63, %74 ], [ %214, %213 ], [ %214, %217 ], [ %214, %221 ], [ %214, %225 ], [ %230, %229 ], [ %230, %233 ], [ %230, %237 ], [ %230, %241 ], [ %246, %245 ], [ %246, %249 ], [ %246, %253 ], [ %246, %257 ]
  %80 = getelementptr i8, ptr %79, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = lshr i8 %81, 4
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 8
  %85 = getelementptr i8, ptr %79, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %84, %87
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 2
  store i32 %88, ptr %89, align 4
  store i32 %88, ptr %1, align 4
  %90 = getelementptr i8, ptr %79, i32 7
  %91 = load i8, ptr %90, align 1
  %92 = lshr i8 %91, 4
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = getelementptr i8, ptr %79, i32 5
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %94, %97
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 1
  store i32 %98, ptr %100, align 4
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 15
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 14
  store i32 0, ptr %102, align 4
  %103 = getelementptr i8, ptr %79, i32 11
  %104 = load i8, ptr %103, align 1
  %105 = lshr i8 %104, 6
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = getelementptr i8, ptr %79, i32 8
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %107, %110
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 19
  store i32 %111, ptr %112, align 4
  %113 = load i8, ptr %80, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = and i32 %115, 3840
  %117 = getelementptr i8, ptr %79, i32 3
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, ptr %103, align 1
  %121 = zext i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 2
  %123 = and i32 %122, 768
  %124 = load i8, ptr %108, align 1
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %121, 4
  %127 = and i32 %126, 768
  %128 = getelementptr i8, ptr %79, i32 9
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %116, %119
  %132 = add nuw nsw i32 %125, %130
  %133 = add nuw nsw i32 %132, %127
  %134 = add nuw nsw i32 %133, %123
  %135 = sub nsw i32 %131, %134
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 18
  store i32 %135, ptr %136, align 4
  %137 = load i8, ptr %90, align 1
  %138 = and i8 %137, 15
  %139 = zext i8 %138 to i32
  %140 = shl nuw nsw i32 %139, 8
  %141 = getelementptr i8, ptr %79, i32 6
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, ptr %103, align 1
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 2
  %147 = and i32 %146, 48
  %148 = getelementptr i8, ptr %79, i32 10
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = lshr i32 %150, 4
  %152 = shl nuw nsw i32 %145, 4
  %153 = and i32 %152, 48
  %154 = and i32 %150, 15
  %155 = or i32 %140, %143
  %156 = or i32 %151, %147
  %157 = add nuw nsw i32 %156, %154
  %158 = add nuw nsw i32 %157, %153
  %159 = sub nsw i32 %155, %158
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 20
  store i32 %159, ptr %160, align 4
  %161 = load i8, ptr %103, align 1
  %162 = shl i8 %161, 2
  %163 = and i8 %162, 48
  %164 = load i8, ptr %148, align 1
  %165 = lshr i8 %164, 4
  %166 = or i8 %163, %165
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 21
  store i32 %167, ptr %168, align 4
  %169 = load i8, ptr %103, align 1
  %170 = lshr i8 %169, 4
  %171 = and i8 %170, 3
  %172 = zext i8 %171 to i32
  %173 = shl nuw nsw i32 %172, 8
  %174 = load i8, ptr %128, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %173, %175
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 22
  store i32 %176, ptr %177, align 4
  %178 = load i8, ptr %103, align 1
  %179 = shl i8 %178, 4
  %180 = and i8 %179, 48
  %181 = load i8, ptr %148, align 1
  %182 = and i8 %181, 15
  %183 = or i8 %180, %182
  %184 = zext i8 %183 to i32
  %185 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 23
  store i32 %184, ptr %185, align 4
  %186 = getelementptr i8, ptr %79, i32 1
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl nuw nsw i32 %188, 8
  %190 = load i8, ptr %79, align 1
  %191 = zext i8 %190 to i32
  %192 = or i32 %189, %191
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 17
  %194 = mul nuw nsw i32 %192, 10
  %195 = udiv i32 1000000000, %194
  store i32 %195, ptr %193, align 4
  %196 = getelementptr i8, ptr %79, i32 17
  %197 = load i8, ptr %196, align 1
  %198 = and i8 %197, 4
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %78
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 24
  %202 = load i32, ptr %201, align 4
  %203 = or i32 %202, 1
  store i32 %203, ptr %201, align 4
  %204 = load i8, ptr %196, align 1
  br label %205

205:                                              ; preds = %200, %78
  %206 = phi i8 [ %204, %200 ], [ %197, %78 ]
  %207 = and i8 %206, 2
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %261, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 24
  %211 = load i32, ptr %210, align 4
  %212 = or i32 %211, 2
  store i32 %212, ptr %210, align 4
  br label %261

213:                                              ; preds = %74
  %214 = getelementptr i8, ptr %0, i32 72
  %215 = load i8, ptr %214, align 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %78

217:                                              ; preds = %213
  %218 = getelementptr i8, ptr %0, i32 73
  %219 = load i8, ptr %218, align 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %78

221:                                              ; preds = %217
  %222 = getelementptr i8, ptr %0, i32 74
  %223 = load i8, ptr %222, align 1
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %78

225:                                              ; preds = %221
  %226 = getelementptr i8, ptr %0, i32 76
  %227 = load i8, ptr %226, align 1
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %78

229:                                              ; preds = %225
  %230 = getelementptr i8, ptr %0, i32 90
  %231 = load i8, ptr %230, align 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %78

233:                                              ; preds = %229
  %234 = getelementptr i8, ptr %0, i32 91
  %235 = load i8, ptr %234, align 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %78

237:                                              ; preds = %233
  %238 = getelementptr i8, ptr %0, i32 92
  %239 = load i8, ptr %238, align 1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %78

241:                                              ; preds = %237
  %242 = getelementptr i8, ptr %0, i32 94
  %243 = load i8, ptr %242, align 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %78

245:                                              ; preds = %241
  %246 = getelementptr i8, ptr %0, i32 108
  %247 = load i8, ptr %246, align 1
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %78

249:                                              ; preds = %245
  %250 = getelementptr i8, ptr %0, i32 109
  %251 = load i8, ptr %250, align 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %78

253:                                              ; preds = %249
  %254 = getelementptr i8, ptr %0, i32 110
  %255 = load i8, ptr %254, align 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %78

257:                                              ; preds = %253
  %258 = getelementptr i8, ptr %0, i32 112
  %259 = load i8, ptr %258, align 1
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %78

261:                                              ; preds = %257, %209, %205, %31, %23, %2
  %262 = phi i32 [ 1, %2 ], [ 1, %23 ], [ 1, %31 ], [ 0, %209 ], [ 0, %205 ], [ 1, %257 ]
  ret i32 %262
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_edid_to_monspecs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %585, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @check_edid(ptr noundef nonnull %0) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @fix_edid(ptr noundef nonnull %0, i32 noundef %6) #14
  br label %9

9:                                                ; preds = %8, %5
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i32 [ %19, %10 ], [ 0, %9 ]
  %12 = phi i32 [ %18, %10 ], [ 0, %9 ]
  %13 = phi i32 [ %20, %10 ], [ 0, %9 ]
  %14 = getelementptr i8, ptr %0, i32 %11
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %13, %16
  %18 = or i32 %12, %16
  %19 = add nuw nsw i32 %11, 1
  %20 = and i32 %17, 255
  %21 = icmp eq i32 %19, 128
  br i1 %21, label %22, label %10

22:                                               ; preds = %10
  %23 = icmp ne i32 %20, 0
  %24 = icmp eq i32 %18, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %585, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @check_edid(ptr noundef %0) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call fastcc void @fix_edid(ptr noundef %0, i32 noundef %27) #14
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8, ptr %0, align 1
  %32 = icmp ne i8 %31, 0
  %33 = getelementptr i8, ptr %0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp ne i8 %34, -1
  %36 = getelementptr i8, ptr %0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = icmp ne i8 %37, -1
  %39 = getelementptr i8, ptr %0, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = icmp ne i8 %40, -1
  %42 = getelementptr i8, ptr %0, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = icmp ne i8 %43, -1
  %45 = getelementptr i8, ptr %0, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = icmp ne i8 %46, -1
  %48 = getelementptr i8, ptr %0, i32 6
  %49 = load i8, ptr %48, align 1
  %50 = icmp ne i8 %49, -1
  %51 = getelementptr i8, ptr %0, i32 7
  %52 = load i8, ptr %51, align 1
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %53, i1 true, i1 %50
  %55 = select i1 %54, i1 true, i1 %47
  %56 = select i1 %55, i1 true, i1 %44
  %57 = select i1 %56, i1 true, i1 %41
  %58 = select i1 %57, i1 true, i1 %38
  %59 = select i1 %58, i1 true, i1 %35
  %60 = select i1 %59, i1 true, i1 %32
  br i1 %60, label %585, label %61

61:                                               ; preds = %30
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(140) %1, i8 0, i32 140, i1 false)
  %62 = getelementptr i8, ptr %0, i32 18
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 23
  store i8 %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %0, i32 19
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 24
  store i8 %66, ptr %67, align 1
  %68 = getelementptr i8, ptr %0, i32 8
  %69 = load i8, ptr %68, align 1
  %70 = lshr i8 %69, 2
  %71 = and i8 %70, 31
  %72 = or i8 %71, 64
  %73 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 2
  store i8 %72, ptr %73, align 4
  %74 = load i8, ptr %68, align 1
  %75 = shl i8 %74, 3
  %76 = and i8 %75, 24
  %77 = getelementptr i8, ptr %0, i32 9
  %78 = load i8, ptr %77, align 1
  %79 = lshr i8 %78, 5
  %80 = or i8 %76, %79
  %81 = or i8 %80, 64
  %82 = getelementptr %struct.fb_monspecs, ptr %1, i32 0, i32 2, i32 1
  store i8 %81, ptr %82, align 1
  %83 = load i8, ptr %77, align 1
  %84 = and i8 %83, 31
  %85 = or i8 %84, 64
  %86 = getelementptr %struct.fb_monspecs, ptr %1, i32 0, i32 2, i32 2
  store i8 %85, ptr %86, align 2
  %87 = getelementptr %struct.fb_monspecs, ptr %1, i32 0, i32 2, i32 3
  store i8 0, ptr %87, align 1
  %88 = getelementptr i8, ptr %0, i32 10
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %0, i32 11
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = or i32 %94, %90
  %96 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 7
  store i32 %95, ptr %96, align 4
  %97 = getelementptr i8, ptr %0, i32 12
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = getelementptr i8, ptr %0, i32 13
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or i32 %103, %99
  %105 = getelementptr i8, ptr %0, i32 14
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = or i32 %104, %108
  %110 = getelementptr i8, ptr %0, i32 15
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw i32 %112, 24
  %114 = or i32 %109, %113
  %115 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 8
  store i32 %114, ptr %115, align 4
  %116 = getelementptr i8, ptr %0, i32 17
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %118, 1990
  %120 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 9
  store i32 %119, ptr %120, align 4
  %121 = getelementptr i8, ptr %0, i32 16
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 10
  store i32 %123, ptr %124, align 4
  %125 = getelementptr i8, ptr %0, i32 54
  %126 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 3
  %127 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 5
  %128 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 4
  br label %129

129:                                              ; preds = %176, %61
  %130 = phi ptr [ %125, %61 ], [ %178, %176 ]
  %131 = phi i32 [ 0, %61 ], [ %177, %176 ]
  %132 = load i8, ptr %130, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %176

134:                                              ; preds = %129
  %135 = getelementptr i8, ptr %130, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %176

138:                                              ; preds = %134
  %139 = getelementptr i8, ptr %130, i32 2
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %130, i32 3
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %130, i32 4
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %174, label %150

150:                                              ; preds = %146, %142, %138
  %151 = getelementptr i8, ptr %130, i32 2
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %130, i32 3
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, -2
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %130, i32 4
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %174, label %162

162:                                              ; preds = %158, %154, %150
  %163 = getelementptr i8, ptr %130, i32 2
  %164 = load i8, ptr %163, align 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %130, i32 3
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %168, -4
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = getelementptr i8, ptr %130, i32 4
  %172 = load i8, ptr %171, align 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170, %158, %146
  %175 = phi ptr [ %128, %146 ], [ %127, %158 ], [ %126, %170 ]
  tail call fastcc void @copy_string(ptr noundef %130, ptr noundef %175)
  br label %176

176:                                              ; preds = %174, %170, %166, %162, %134, %129
  %177 = add nuw nsw i32 %131, 1
  %178 = getelementptr i8, ptr %130, i32 18
  %179 = icmp eq i32 %177, 4
  br i1 %179, label %180, label %129

180:                                              ; preds = %176
  %181 = getelementptr i8, ptr %0, i32 20
  %182 = load i8, ptr %125, align 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %233

184:                                              ; preds = %180
  %185 = getelementptr i8, ptr %0, i32 55
  %186 = load i8, ptr %185, align 1
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %184
  %189 = getelementptr i8, ptr %0, i32 56
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %233

192:                                              ; preds = %188
  %193 = getelementptr i8, ptr %0, i32 57
  %194 = load i8, ptr %193, align 1
  %195 = icmp eq i8 %194, -3
  br i1 %195, label %196, label %233

196:                                              ; preds = %192
  %197 = getelementptr i8, ptr %0, i32 58
  %198 = load i8, ptr %197, align 1
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %233

200:                                              ; preds = %289, %269, %249, %196
  %201 = phi ptr [ %125, %196 ], [ %234, %249 ], [ %254, %269 ], [ %274, %289 ]
  %202 = getelementptr i8, ptr %201, i32 7
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = mul nuw nsw i32 %204, 1000
  %206 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 11
  store i32 %205, ptr %206, align 4
  %207 = getelementptr i8, ptr %201, i32 8
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i32
  %210 = mul nuw nsw i32 %209, 1000
  %211 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 12
  store i32 %210, ptr %211, align 4
  %212 = getelementptr i8, ptr %201, i32 5
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i16
  %215 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 18
  store i16 %214, ptr %215, align 2
  %216 = getelementptr i8, ptr %201, i32 6
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i16
  %219 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 19
  store i16 %218, ptr %219, align 4
  %220 = getelementptr i8, ptr %201, i32 9
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = mul nuw i32 %222, 10000000
  %224 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 14
  store i32 %223, ptr %224, align 4
  %225 = getelementptr i8, ptr %201, i32 10
  %226 = load i8, ptr %225, align 1
  %227 = icmp ne i8 %226, 0
  %228 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 21
  %229 = zext i1 %227 to i8
  %230 = load i8, ptr %228, align 4
  %231 = and i8 %230, -2
  %232 = or i8 %231, %229
  store i8 %232, ptr %228, align 4
  br label %398

233:                                              ; preds = %196, %192, %188, %184, %180
  %234 = getelementptr i8, ptr %0, i32 72
  %235 = load i8, ptr %234, align 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %233
  %238 = getelementptr i8, ptr %0, i32 73
  %239 = load i8, ptr %238, align 1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %237
  %242 = getelementptr i8, ptr %0, i32 74
  %243 = load i8, ptr %242, align 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %241
  %246 = getelementptr i8, ptr %0, i32 75
  %247 = load i8, ptr %246, align 1
  %248 = icmp eq i8 %247, -3
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = getelementptr i8, ptr %0, i32 76
  %251 = load i8, ptr %250, align 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %200, label %253

253:                                              ; preds = %249, %245, %241, %237, %233
  %254 = getelementptr i8, ptr %0, i32 90
  %255 = load i8, ptr %254, align 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %273

257:                                              ; preds = %253
  %258 = getelementptr i8, ptr %0, i32 91
  %259 = load i8, ptr %258, align 1
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %257
  %262 = getelementptr i8, ptr %0, i32 92
  %263 = load i8, ptr %262, align 1
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = getelementptr i8, ptr %0, i32 93
  %267 = load i8, ptr %266, align 1
  %268 = icmp eq i8 %267, -3
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = getelementptr i8, ptr %0, i32 94
  %271 = load i8, ptr %270, align 1
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %200, label %273

273:                                              ; preds = %269, %265, %261, %257, %253
  %274 = getelementptr i8, ptr %0, i32 108
  %275 = load i8, ptr %274, align 1
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %273
  %278 = getelementptr i8, ptr %0, i32 109
  %279 = load i8, ptr %278, align 1
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %277
  %282 = getelementptr i8, ptr %0, i32 110
  %283 = load i8, ptr %282, align 1
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %281
  %286 = getelementptr i8, ptr %0, i32 111
  %287 = load i8, ptr %286, align 1
  %288 = icmp eq i8 %287, -3
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = getelementptr i8, ptr %0, i32 112
  %291 = load i8, ptr %290, align 1
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %200, label %293

293:                                              ; preds = %289, %285, %281, %277, %273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %294 = call fastcc ptr @fb_create_modedb(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #14
  %295 = icmp eq ptr %294, null
  br i1 %295, label %397, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr %3, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %396

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 14
  %301 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 13
  %302 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 12
  %303 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 11
  %304 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 19
  %305 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 18
  %306 = load i32, ptr %300, align 4
  br label %307

307:                                              ; preds = %393, %299
  %308 = phi i32 [ %306, %299 ], [ %359, %393 ]
  %309 = phi i32 [ 0, %299 ], [ %394, %393 ]
  %310 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 4
  %311 = load i32, ptr %310, align 4
  %312 = udiv i32 1000000000, %311
  %313 = mul i32 %312, 1000
  %314 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 2
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 6
  %317 = load i32, ptr %316, align 4
  %318 = add i32 %317, %315
  %319 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 9
  %320 = load i32, ptr %319, align 4
  %321 = add i32 %318, %320
  %322 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 5
  %323 = load i32, ptr %322, align 4
  %324 = add i32 %321, %323
  %325 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 3
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 8
  %328 = load i32, ptr %327, align 4
  %329 = add i32 %328, %326
  %330 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 10
  %331 = load i32, ptr %330, align 4
  %332 = add i32 %329, %331
  %333 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 7
  %334 = load i32, ptr %333, align 4
  %335 = add i32 %332, %334
  %336 = getelementptr %struct.fb_videomode, ptr %294, i32 %309, i32 12
  %337 = load i32, ptr %336, align 4
  %338 = and i32 %337, 1
  %339 = icmp eq i32 %338, 0
  %340 = sdiv i32 %335, 2
  %341 = select i1 %339, i32 %335, i32 %340
  %342 = lshr i32 %337, 1
  %343 = and i32 %342, 1
  %344 = shl i32 %341, %343
  %345 = sdiv i32 %324, 2
  %346 = add i32 %345, %313
  %347 = sdiv i32 %346, %324
  %348 = add i32 %347, 500
  %349 = srem i32 %348, 1000
  %350 = sub i32 %348, %349
  %351 = sdiv i32 %344, 2
  %352 = add i32 %351, %350
  %353 = sdiv i32 %352, %344
  %354 = icmp eq i32 %308, 0
  %355 = icmp ult i32 %308, %313
  %356 = select i1 %354, i1 true, i1 %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %307
  store i32 %313, ptr %300, align 4
  br label %358

358:                                              ; preds = %357, %307
  %359 = phi i32 [ %308, %307 ], [ %313, %357 ]
  %360 = load i32, ptr %301, align 4
  %361 = icmp eq i32 %360, 0
  %362 = icmp ugt i32 %360, %313
  %363 = select i1 %361, i1 true, i1 %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %358
  store i32 %313, ptr %301, align 4
  br label %365

365:                                              ; preds = %364, %358
  %366 = load i32, ptr %302, align 4
  %367 = icmp eq i32 %366, 0
  %368 = icmp ult i32 %366, %350
  %369 = select i1 %367, i1 true, i1 %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %365
  store i32 %350, ptr %302, align 4
  br label %371

371:                                              ; preds = %370, %365
  %372 = load i32, ptr %303, align 4
  %373 = icmp eq i32 %372, 0
  %374 = icmp ugt i32 %372, %350
  %375 = select i1 %373, i1 true, i1 %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %371
  store i32 %350, ptr %303, align 4
  br label %377

377:                                              ; preds = %376, %371
  %378 = load i16, ptr %304, align 4
  %379 = icmp eq i16 %378, 0
  %380 = zext i16 %378 to i32
  %381 = icmp sgt i32 %353, %380
  %382 = select i1 %379, i1 true, i1 %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %377
  %384 = trunc i32 %353 to i16
  store i16 %384, ptr %304, align 4
  br label %385

385:                                              ; preds = %383, %377
  %386 = load i16, ptr %305, align 2
  %387 = icmp eq i16 %386, 0
  %388 = zext i16 %386 to i32
  %389 = icmp slt i32 %353, %388
  %390 = select i1 %387, i1 true, i1 %389
  br i1 %390, label %391, label %393

391:                                              ; preds = %385
  %392 = trunc i32 %353 to i16
  store i16 %392, ptr %305, align 2
  br label %393

393:                                              ; preds = %391, %385
  %394 = add nuw nsw i32 %309, 1
  %395 = icmp eq i32 %394, %297
  br i1 %395, label %396, label %307

396:                                              ; preds = %393, %296
  tail call void @kfree(ptr noundef nonnull %294) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %398

397:                                              ; preds = %293
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %398

398:                                              ; preds = %397, %396, %200
  %399 = load i8, ptr %181, align 1
  %400 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 15
  store i16 0, ptr %400, align 4
  %401 = icmp sgt i8 %399, -1
  br i1 %401, label %402, label %409

402:                                              ; preds = %398
  %403 = load i8, ptr %181, align 1
  %404 = lshr i8 %403, 5
  %405 = and i8 %404, 3
  %406 = zext i8 %405 to i32
  %407 = getelementptr inbounds [4 x i16], ptr @switch.table.fb_edid_to_monspecs, i32 0, i32 %406
  %408 = load i16, ptr %407, align 2
  br label %409

409:                                              ; preds = %402, %398
  %410 = phi i16 [ 1, %398 ], [ %408, %402 ]
  store i16 %410, ptr %400, align 4
  %411 = load i8, ptr %181, align 1
  %412 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 17
  %413 = trunc i8 %411 to i5
  %414 = tail call i5 @llvm.bitreverse.i5(i5 %413) #14
  %415 = and i5 %414, -2
  %416 = zext i5 %415 to i16
  store i16 %416, ptr %412, align 4
  %417 = getelementptr i8, ptr %0, i32 21
  %418 = load i8, ptr %417, align 1
  %419 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 25
  store i8 %418, ptr %419, align 2
  %420 = getelementptr i8, ptr %0, i32 22
  %421 = load i8, ptr %420, align 1
  %422 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 26
  store i8 %421, ptr %422, align 1
  %423 = getelementptr i8, ptr %0, i32 23
  %424 = load i8, ptr %423, align 1
  %425 = zext i8 %424 to i16
  %426 = add nuw nsw i16 %425, 100
  %427 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 20
  store i16 %426, ptr %427, align 2
  %428 = getelementptr i8, ptr %0, i32 24
  %429 = load i8, ptr %428, align 1
  %430 = lshr i8 %429, 5
  %431 = and i8 %430, 3
  %432 = zext i8 %431 to i16
  %433 = or i16 %432, 4
  %434 = icmp slt i8 %429, 0
  %435 = select i1 %434, i16 %433, i16 %432
  %436 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 16
  store i16 %435, ptr %436, align 2
  %437 = load i8, ptr %428, align 1
  %438 = lshr i8 %437, 3
  %439 = and i8 %438, 3
  %440 = icmp eq i8 %439, 3
  br i1 %440, label %445, label %441

441:                                              ; preds = %409
  %442 = zext i8 %439 to i32
  %443 = getelementptr inbounds [3 x i16], ptr @switch.table.fb_edid_to_monspecs.5, i32 0, i32 %442
  %444 = load i16, ptr %443, align 2
  br label %445

445:                                              ; preds = %441, %409
  %446 = phi i16 [ %444, %441 ], [ 256, %409 ]
  %447 = or i16 %446, %410
  store i16 %447, ptr %400, align 4
  %448 = getelementptr i8, ptr %0, i32 25
  %449 = load i8, ptr %448, align 1
  %450 = lshr i8 %449, 6
  %451 = zext i8 %450 to i32
  %452 = getelementptr i8, ptr %0, i32 27
  %453 = load i8, ptr %452, align 1
  %454 = zext i8 %453 to i32
  %455 = shl nuw nsw i32 %454, 2
  %456 = or i32 %455, %451
  %457 = mul nuw nsw i32 %456, 1000
  %458 = add nuw nsw i32 %457, 512
  %459 = lshr i32 %458, 10
  store i32 %459, ptr %1, align 4
  %460 = load i8, ptr %448, align 1
  %461 = lshr i8 %460, 4
  %462 = and i8 %461, 3
  %463 = zext i8 %462 to i32
  %464 = getelementptr i8, ptr %0, i32 28
  %465 = load i8, ptr %464, align 1
  %466 = zext i8 %465 to i32
  %467 = shl nuw nsw i32 %466, 2
  %468 = or i32 %467, %463
  %469 = mul nuw nsw i32 %468, 1000
  %470 = add nuw nsw i32 %469, 512
  %471 = lshr i32 %470, 10
  %472 = getelementptr inbounds %struct.fb_chroma, ptr %1, i32 0, i32 4
  store i32 %471, ptr %472, align 4
  %473 = load i8, ptr %448, align 1
  %474 = lshr i8 %473, 2
  %475 = and i8 %474, 3
  %476 = zext i8 %475 to i32
  %477 = getelementptr i8, ptr %0, i32 29
  %478 = load i8, ptr %477, align 1
  %479 = zext i8 %478 to i32
  %480 = shl nuw nsw i32 %479, 2
  %481 = or i32 %480, %476
  %482 = mul nuw nsw i32 %481, 1000
  %483 = add nuw nsw i32 %482, 512
  %484 = lshr i32 %483, 10
  %485 = getelementptr inbounds %struct.fb_chroma, ptr %1, i32 0, i32 1
  store i32 %484, ptr %485, align 4
  %486 = load i8, ptr %448, align 1
  %487 = and i8 %486, 3
  %488 = zext i8 %487 to i32
  %489 = getelementptr i8, ptr %0, i32 30
  %490 = load i8, ptr %489, align 1
  %491 = zext i8 %490 to i32
  %492 = shl nuw nsw i32 %491, 2
  %493 = or i32 %492, %488
  %494 = mul nuw nsw i32 %493, 1000
  %495 = add nuw nsw i32 %494, 512
  %496 = lshr i32 %495, 10
  %497 = getelementptr inbounds %struct.fb_chroma, ptr %1, i32 0, i32 5
  store i32 %496, ptr %497, align 4
  %498 = getelementptr i8, ptr %0, i32 26
  %499 = load i8, ptr %498, align 1
  %500 = lshr i8 %499, 6
  %501 = zext i8 %500 to i32
  %502 = getelementptr i8, ptr %0, i32 31
  %503 = load i8, ptr %502, align 1
  %504 = zext i8 %503 to i32
  %505 = shl nuw nsw i32 %504, 2
  %506 = or i32 %505, %501
  %507 = mul nuw nsw i32 %506, 1000
  %508 = add nuw nsw i32 %507, 512
  %509 = lshr i32 %508, 10
  %510 = getelementptr inbounds %struct.fb_chroma, ptr %1, i32 0, i32 2
  store i32 %509, ptr %510, align 4
  %511 = load i8, ptr %498, align 1
  %512 = lshr i8 %511, 4
  %513 = and i8 %512, 3
  %514 = zext i8 %513 to i32
  %515 = getelementptr i8, ptr %0, i32 32
  %516 = load i8, ptr %515, align 1
  %517 = zext i8 %516 to i32
  %518 = shl nuw nsw i32 %517, 2
  %519 = or i32 %518, %514
  %520 = mul nuw nsw i32 %519, 1000
  %521 = add nuw nsw i32 %520, 512
  %522 = lshr i32 %521, 10
  %523 = getelementptr inbounds %struct.fb_chroma, ptr %1, i32 0, i32 6
  store i32 %522, ptr %523, align 4
  %524 = load i8, ptr %498, align 1
  %525 = lshr i8 %524, 2
  %526 = and i8 %525, 3
  %527 = zext i8 %526 to i32
  %528 = getelementptr i8, ptr %0, i32 33
  %529 = load i8, ptr %528, align 1
  %530 = zext i8 %529 to i32
  %531 = shl nuw nsw i32 %530, 2
  %532 = or i32 %531, %527
  %533 = mul nuw nsw i32 %532, 1000
  %534 = add nuw nsw i32 %533, 512
  %535 = lshr i32 %534, 10
  %536 = getelementptr inbounds %struct.fb_chroma, ptr %1, i32 0, i32 3
  store i32 %535, ptr %536, align 4
  %537 = load i8, ptr %498, align 1
  %538 = and i8 %537, 3
  %539 = zext i8 %538 to i32
  %540 = getelementptr i8, ptr %0, i32 34
  %541 = load i8, ptr %540, align 1
  %542 = zext i8 %541 to i32
  %543 = shl nuw nsw i32 %542, 2
  %544 = or i32 %543, %539
  %545 = mul nuw nsw i32 %544, 1000
  %546 = add nuw nsw i32 %545, 512
  %547 = lshr i32 %546, 10
  %548 = getelementptr inbounds %struct.fb_chroma, ptr %1, i32 0, i32 7
  store i32 %547, ptr %548, align 4
  %549 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 22
  store i16 0, ptr %549, align 2
  %550 = load i8, ptr %428, align 1
  %551 = and i8 %550, 7
  %552 = zext i8 %551 to i32
  %553 = lshr i32 %552, 2
  %554 = trunc i32 %553 to i16
  %555 = and i8 %550, 2
  %556 = zext i8 %555 to i16
  %557 = or i16 %554, %556
  store i16 %557, ptr %549, align 2
  %558 = and i32 %552, 1
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %565, label %560

560:                                              ; preds = %445
  %561 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  %562 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 21
  %563 = load i8, ptr %562, align 4
  %564 = or i8 %563, 1
  store i8 %564, ptr %562, align 4
  br label %565

565:                                              ; preds = %560, %445
  %566 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 6
  %567 = tail call fastcc ptr @fb_create_modedb(ptr noundef nonnull %0, ptr noundef %566, ptr noundef %1)
  %568 = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 1
  store ptr %567, ptr %568, align 4
  %569 = icmp eq ptr %567, null
  br i1 %569, label %585, label %570

570:                                              ; preds = %565
  %571 = load i32, ptr %566, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %582, label %576

573:                                              ; preds = %576
  %574 = add nuw i32 %577, 1
  %575 = icmp eq i32 %574, %571
  br i1 %575, label %582, label %576

576:                                              ; preds = %573, %570
  %577 = phi i32 [ %574, %573 ], [ 0, %570 ]
  %578 = getelementptr %struct.fb_videomode, ptr %567, i32 %577, i32 13
  %579 = load i32, ptr %578, align 4
  %580 = and i32 %579, 1
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %573, label %585

582:                                              ; preds = %573, %570
  %583 = load i16, ptr %549, align 2
  %584 = and i16 %583, -3
  store i16 %584, ptr %549, align 2
  br label %585

585:                                              ; preds = %582, %576, %565, %30, %22, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @copy_string(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 10
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 6
  %8 = getelementptr i8, ptr %1, i32 1
  store i8 %4, ptr %1, align 1
  %9 = load i8, ptr %7, align 1
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %69, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 7
  %13 = getelementptr i8, ptr %1, i32 2
  store i8 %9, ptr %8, align 1
  %14 = load i8, ptr %12, align 1
  %15 = icmp eq i8 %14, 10
  br i1 %15, label %69, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 8
  %18 = getelementptr i8, ptr %1, i32 3
  store i8 %14, ptr %13, align 1
  %19 = load i8, ptr %17, align 1
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %69, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 9
  %23 = getelementptr i8, ptr %1, i32 4
  store i8 %19, ptr %18, align 1
  %24 = load i8, ptr %22, align 1
  %25 = icmp eq i8 %24, 10
  br i1 %25, label %69, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 10
  %28 = getelementptr i8, ptr %1, i32 5
  store i8 %24, ptr %23, align 1
  %29 = load i8, ptr %27, align 1
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %69, label %31

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 11
  %33 = getelementptr i8, ptr %1, i32 6
  store i8 %29, ptr %28, align 1
  %34 = load i8, ptr %32, align 1
  %35 = icmp eq i8 %34, 10
  br i1 %35, label %69, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %0, i32 12
  %38 = getelementptr i8, ptr %1, i32 7
  store i8 %34, ptr %33, align 1
  %39 = load i8, ptr %37, align 1
  %40 = icmp eq i8 %39, 10
  br i1 %40, label %69, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 13
  %43 = getelementptr i8, ptr %1, i32 8
  store i8 %39, ptr %38, align 1
  %44 = load i8, ptr %42, align 1
  %45 = icmp eq i8 %44, 10
  br i1 %45, label %69, label %46

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %0, i32 14
  %48 = getelementptr i8, ptr %1, i32 9
  store i8 %44, ptr %43, align 1
  %49 = load i8, ptr %47, align 1
  %50 = icmp eq i8 %49, 10
  br i1 %50, label %69, label %51

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %0, i32 15
  %53 = getelementptr i8, ptr %1, i32 10
  store i8 %49, ptr %48, align 1
  %54 = load i8, ptr %52, align 1
  %55 = icmp eq i8 %54, 10
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %0, i32 16
  %58 = getelementptr i8, ptr %1, i32 11
  store i8 %54, ptr %53, align 1
  %59 = load i8, ptr %57, align 1
  %60 = icmp eq i8 %59, 10
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %0, i32 17
  %63 = getelementptr i8, ptr %1, i32 12
  store i8 %59, ptr %58, align 1
  %64 = load i8, ptr %62, align 1
  %65 = icmp eq i8 %64, 10
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %1, i32 13
  store i8 %64, ptr %63, align 1
  br label %69

68:                                               ; preds = %2
  store i8 0, ptr %1, align 1
  br label %81

69:                                               ; preds = %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %11, %6
  %70 = phi ptr [ %67, %66 ], [ %63, %61 ], [ %58, %56 ], [ %53, %51 ], [ %48, %46 ], [ %43, %41 ], [ %38, %36 ], [ %33, %31 ], [ %28, %26 ], [ %23, %21 ], [ %18, %16 ], [ %13, %11 ], [ %8, %6 ]
  %71 = phi i32 [ 13, %66 ], [ 12, %61 ], [ 11, %56 ], [ 10, %51 ], [ 9, %46 ], [ 8, %41 ], [ 7, %36 ], [ 6, %31 ], [ 5, %26 ], [ 4, %21 ], [ 3, %16 ], [ 2, %11 ], [ 1, %6 ]
  store i8 0, ptr %70, align 1
  br label %72

72:                                               ; preds = %78, %69
  %73 = phi i32 [ %79, %78 ], [ %71, %69 ]
  %74 = phi ptr [ %75, %78 ], [ %70, %69 ]
  %75 = getelementptr i8, ptr %74, i32 -1
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 32
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = add nsw i32 %73, -1
  store i8 0, ptr %75, align 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %72

81:                                               ; preds = %78, %72, %68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fb_create_modedb(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2800) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %581, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  br i1 %8, label %579, label %9

9:                                                ; preds = %7
  %10 = tail call fastcc i32 @check_edid(ptr noundef nonnull %0) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @fix_edid(ptr noundef nonnull %0, i32 noundef %10) #14
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %23, %14 ], [ 0, %13 ]
  %16 = phi i32 [ %22, %14 ], [ 0, %13 ]
  %17 = phi i32 [ %24, %14 ], [ 0, %13 ]
  %18 = getelementptr i8, ptr %0, i32 %15
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %17, %20
  %22 = or i32 %16, %20
  %23 = add nuw nsw i32 %15, 1
  %24 = and i32 %21, 255
  %25 = icmp eq i32 %23, 128
  br i1 %25, label %26, label %14

26:                                               ; preds = %14
  %27 = icmp ne i32 %24, 0
  %28 = icmp eq i32 %22, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %579, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @check_edid(ptr noundef nonnull %0) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @fix_edid(ptr noundef nonnull %0, i32 noundef %31) #14
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i8, ptr %0, align 1
  %36 = icmp ne i8 %35, 0
  %37 = getelementptr i8, ptr %0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp ne i8 %38, -1
  %40 = getelementptr i8, ptr %0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = icmp ne i8 %41, -1
  %43 = getelementptr i8, ptr %0, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = icmp ne i8 %44, -1
  %46 = getelementptr i8, ptr %0, i32 4
  %47 = load i8, ptr %46, align 1
  %48 = icmp ne i8 %47, -1
  %49 = getelementptr i8, ptr %0, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = icmp ne i8 %50, -1
  %52 = getelementptr i8, ptr %0, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = icmp ne i8 %53, -1
  %55 = getelementptr i8, ptr %0, i32 7
  %56 = load i8, ptr %55, align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %57, i1 true, i1 %54
  %59 = select i1 %58, i1 true, i1 %51
  %60 = select i1 %59, i1 true, i1 %48
  %61 = select i1 %60, i1 true, i1 %45
  %62 = select i1 %61, i1 true, i1 %42
  %63 = select i1 %62, i1 true, i1 %39
  %64 = select i1 %63, i1 true, i1 %36
  br i1 %64, label %579, label %65

65:                                               ; preds = %34
  %66 = getelementptr i8, ptr %0, i32 18
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i32 19
  %69 = load i8, ptr %68, align 1
  store i32 0, ptr %1, align 4
  %70 = getelementptr i8, ptr %0, i32 54
  br label %71

71:                                               ; preds = %224, %65
  %72 = phi i32 [ 1, %65 ], [ %226, %224 ]
  %73 = phi i32 [ 0, %65 ], [ %227, %224 ]
  %74 = phi i32 [ 0, %65 ], [ %225, %224 ]
  %75 = phi ptr [ %70, %65 ], [ %228, %224 ]
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 0
  %78 = getelementptr i8, ptr %75, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %77, i1 %80, i1 false
  br i1 %81, label %224, label %82

82:                                               ; preds = %71
  %83 = getelementptr i8, ptr %75, i32 4
  %84 = load i8, ptr %83, align 1
  %85 = lshr i8 %84, 4
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = getelementptr i8, ptr %75, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %87, %90
  %92 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 2
  store i32 %91, ptr %92, align 8
  %93 = getelementptr i8, ptr %75, i32 7
  %94 = load i8, ptr %93, align 1
  %95 = lshr i8 %94, 4
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = getelementptr i8, ptr %75, i32 5
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 3
  store i32 %101, ptr %102, align 4
  %103 = zext i8 %79 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = zext i8 %76 to i32
  %106 = or i32 %104, %105
  %107 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 4
  %108 = mul nuw nsw i32 %106, 10
  %109 = udiv i32 1000000000, %108
  store i32 %109, ptr %107, align 8
  %110 = getelementptr i8, ptr %75, i32 11
  %111 = load i8, ptr %110, align 1
  %112 = lshr i8 %111, 6
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = getelementptr i8, ptr %75, i32 8
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %114, %117
  %119 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 6
  store i32 %118, ptr %119, align 8
  %120 = zext i8 %84 to i32
  %121 = shl nuw nsw i32 %120, 8
  %122 = and i32 %121, 3840
  %123 = getelementptr i8, ptr %75, i32 3
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = zext i8 %111 to i32
  %127 = shl nuw nsw i32 %126, 2
  %128 = and i32 %127, 768
  %129 = shl nuw nsw i32 %126, 4
  %130 = and i32 %129, 768
  %131 = getelementptr i8, ptr %75, i32 9
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %130, %117
  %135 = add nuw nsw i32 %134, %128
  %136 = or i32 %122, %125
  %137 = add nuw nsw i32 %135, %133
  %138 = sub nsw i32 %136, %137
  %139 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 5
  store i32 %138, ptr %139, align 4
  %140 = and i8 %94, 15
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = getelementptr i8, ptr %75, i32 6
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %127, 48
  %147 = getelementptr i8, ptr %75, i32 10
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = lshr i32 %149, 4
  %151 = and i32 %129, 48
  %152 = and i32 %149, 15
  %153 = add nuw nsw i32 %146, %151
  %154 = or i32 %142, %145
  %155 = or i32 %153, %150
  %156 = add nuw nsw i32 %155, %152
  %157 = sub nsw i32 %154, %156
  %158 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 7
  store i32 %157, ptr %158, align 4
  %159 = shl i8 %111, 2
  %160 = and i8 %159, 48
  %161 = lshr i8 %148, 4
  %162 = or i8 %161, %160
  %163 = zext i8 %162 to i32
  %164 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 8
  store i32 %163, ptr %164, align 8
  %165 = lshr i8 %111, 4
  %166 = and i8 %165, 3
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 8
  %169 = or i32 %168, %133
  %170 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 9
  store i32 %169, ptr %170, align 4
  %171 = shl i8 %111, 4
  %172 = and i8 %171, 48
  %173 = and i8 %148, 15
  %174 = or i8 %173, %172
  %175 = zext i8 %174 to i32
  %176 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 10
  store i32 %175, ptr %176, align 8
  %177 = getelementptr i8, ptr %75, i32 17
  %178 = load i8, ptr %177, align 1
  %179 = and i8 %178, 4
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %82
  %182 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 11
  %183 = load i32, ptr %182, align 4
  %184 = or i32 %183, 1
  store i32 %184, ptr %182, align 4
  br label %185

185:                                              ; preds = %181, %82
  %186 = and i8 %178, 2
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 11
  %190 = load i32, ptr %189, align 4
  %191 = or i32 %190, 2
  store i32 %191, ptr %189, align 4
  br label %192

192:                                              ; preds = %188, %185
  %193 = mul nuw nsw i32 %106, 10000
  %194 = shl nuw nsw i32 %120, 4
  %195 = and i32 %194, 3840
  %196 = or i32 %195, %90
  %197 = add nuw nsw i32 %196, %122
  %198 = add nuw nsw i32 %197, %125
  %199 = zext i8 %94 to i32
  %200 = shl nuw nsw i32 %199, 4
  %201 = and i32 %200, 3840
  %202 = shl nuw nsw i32 %199, 8
  %203 = and i32 %202, 3840
  %204 = or i32 %201, %100
  %205 = add nuw nsw i32 %204, %203
  %206 = add nuw nsw i32 %205, %145
  %207 = mul nuw nsw i32 %206, %198
  %208 = udiv i32 %193, %207
  %209 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 1
  store i32 %208, ptr %209, align 4
  %210 = icmp sgt i8 %178, -1
  br i1 %210, label %219, label %211

211:                                              ; preds = %192
  %212 = shl nuw nsw i32 %101, 1
  store i32 %212, ptr %102, align 4
  %213 = shl nsw i32 %157, 1
  store i32 %213, ptr %158, align 4
  %214 = shl nuw nsw i32 %163, 1
  store i32 %214, ptr %164, align 8
  %215 = shl nuw nsw i32 %175, 1
  store i32 %215, ptr %176, align 8
  %216 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 12
  %217 = load i32, ptr %216, align 8
  %218 = or i32 %217, 1
  store i32 %218, ptr %216, align 8
  br label %219

219:                                              ; preds = %211, %192
  %220 = getelementptr %struct.fb_videomode, ptr %5, i32 %74, i32 13
  %221 = icmp eq i32 %72, 0
  %222 = select i1 %221, i32 1, i32 17
  store i32 %222, ptr %220, align 4
  %223 = add i32 %74, 1
  br label %224

224:                                              ; preds = %219, %71
  %225 = phi i32 [ %223, %219 ], [ %74, %71 ]
  %226 = phi i32 [ 0, %219 ], [ %72, %71 ]
  %227 = add nuw nsw i32 %73, 1
  %228 = getelementptr i8, ptr %75, i32 18
  %229 = icmp eq i32 %227, 4
  br i1 %229, label %230, label %71

230:                                              ; preds = %224
  %231 = zext i8 %67 to i32
  %232 = zext i8 %69 to i32
  %233 = getelementptr i8, ptr %0, i32 35
  %234 = getelementptr %struct.fb_videomode, ptr %5, i32 %225
  %235 = load i8, ptr %233, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 128
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %274, label %239

239:                                              ; preds = %230
  %240 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %241 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %240, i32 noundef 3520, i32 noundef 160) #16
  %242 = icmp eq ptr %241, null
  br i1 %242, label %272, label %243

243:                                              ; preds = %239
  store i32 720, ptr %241, align 8
  %244 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 1
  store i32 400, ptr %244, align 4
  %245 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef 70, ptr noundef nonnull %241, ptr noundef null) #14
  %246 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 2
  store i32 720, ptr %246, align 8
  %247 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 3
  store i32 400, ptr %247, align 4
  %248 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 17
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 4
  store i32 %249, ptr %250, align 8
  %251 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 1
  store i32 70, ptr %251, align 4
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 18
  %253 = load i32, ptr %252, align 8
  %254 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 5
  store i32 %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 19
  %256 = load i32, ptr %255, align 4
  %257 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 6
  store i32 %256, ptr %257, align 8
  %258 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 20
  %259 = load i32, ptr %258, align 8
  %260 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 7
  store i32 %259, ptr %260, align 4
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 21
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 8
  store i32 %262, ptr %263, align 8
  %264 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 22
  %265 = load i32, ptr %264, align 8
  %266 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 9
  store i32 %265, ptr %266, align 4
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %241, i32 0, i32 23
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 10
  store i32 %268, ptr %269, align 8
  %270 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 12
  store i32 0, ptr %270, align 8
  %271 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 11
  store i32 0, ptr %271, align 4
  tail call void @kfree(ptr noundef nonnull %241) #14
  br label %272

272:                                              ; preds = %243, %239
  %273 = getelementptr %struct.fb_videomode, ptr %5, i32 %225, i32 13
  store i32 8, ptr %273, align 4
  br label %274

274:                                              ; preds = %272, %230
  %275 = phi i32 [ 1, %272 ], [ 0, %230 ]
  %276 = and i32 %236, 64
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %314, label %278

278:                                              ; preds = %274
  %279 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %280 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %279, i32 noundef 3520, i32 noundef 160) #16
  %281 = icmp eq ptr %280, null
  br i1 %281, label %311, label %282

282:                                              ; preds = %278
  store i32 720, ptr %280, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 1
  store i32 400, ptr %283, align 4
  %284 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef 88, ptr noundef nonnull %280, ptr noundef null) #14
  %285 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 2
  store i32 720, ptr %285, align 8
  %286 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 3
  store i32 400, ptr %286, align 4
  %287 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 17
  %288 = load i32, ptr %287, align 4
  %289 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 4
  store i32 %288, ptr %289, align 8
  %290 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 1
  store i32 88, ptr %290, align 4
  %291 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 18
  %292 = load i32, ptr %291, align 8
  %293 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 5
  store i32 %292, ptr %293, align 4
  %294 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 19
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 6
  store i32 %295, ptr %296, align 8
  %297 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 20
  %298 = load i32, ptr %297, align 8
  %299 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 7
  store i32 %298, ptr %299, align 4
  %300 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 21
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 8
  store i32 %301, ptr %302, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 22
  %304 = load i32, ptr %303, align 8
  %305 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 9
  store i32 %304, ptr %305, align 4
  %306 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %280, i32 0, i32 23
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 10
  store i32 %307, ptr %308, align 8
  %309 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 12
  store i32 0, ptr %309, align 8
  %310 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 11
  store i32 0, ptr %310, align 4
  tail call void @kfree(ptr noundef nonnull %280) #14
  br label %311

311:                                              ; preds = %282, %278
  %312 = add nuw nsw i32 %275, 1
  %313 = getelementptr %struct.fb_videomode, ptr %234, i32 %275, i32 13
  store i32 8, ptr %313, align 4
  br label %314

314:                                              ; preds = %311, %274
  %315 = phi i32 [ %312, %311 ], [ %275, %274 ]
  %316 = and i32 %236, 32
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %314
  %319 = add nuw nsw i32 %315, 1
  %320 = getelementptr %struct.fb_videomode, ptr %234, i32 %315
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %320, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 3), i32 56, i1 false) #14
  br label %321

321:                                              ; preds = %318, %314
  %322 = phi i32 [ %319, %318 ], [ %315, %314 ]
  %323 = and i32 %236, 16
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %361, label %325

325:                                              ; preds = %321
  %326 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %327 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %326, i32 noundef 3520, i32 noundef 160) #16
  %328 = icmp eq ptr %327, null
  br i1 %328, label %358, label %329

329:                                              ; preds = %325
  store i32 640, ptr %327, align 8
  %330 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 1
  store i32 480, ptr %330, align 4
  %331 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef 67, ptr noundef nonnull %327, ptr noundef null) #14
  %332 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 2
  store i32 640, ptr %332, align 8
  %333 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 3
  store i32 480, ptr %333, align 4
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 17
  %335 = load i32, ptr %334, align 4
  %336 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 4
  store i32 %335, ptr %336, align 8
  %337 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 1
  store i32 67, ptr %337, align 4
  %338 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 18
  %339 = load i32, ptr %338, align 8
  %340 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 5
  store i32 %339, ptr %340, align 4
  %341 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 19
  %342 = load i32, ptr %341, align 4
  %343 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 6
  store i32 %342, ptr %343, align 8
  %344 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 20
  %345 = load i32, ptr %344, align 8
  %346 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 7
  store i32 %345, ptr %346, align 4
  %347 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 21
  %348 = load i32, ptr %347, align 4
  %349 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 8
  store i32 %348, ptr %349, align 8
  %350 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 22
  %351 = load i32, ptr %350, align 8
  %352 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 9
  store i32 %351, ptr %352, align 4
  %353 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %327, i32 0, i32 23
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 10
  store i32 %354, ptr %355, align 8
  %356 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 12
  store i32 0, ptr %356, align 8
  %357 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 11
  store i32 0, ptr %357, align 4
  tail call void @kfree(ptr noundef nonnull %327) #14
  br label %358

358:                                              ; preds = %329, %325
  %359 = add nuw nsw i32 %322, 1
  %360 = getelementptr %struct.fb_videomode, ptr %234, i32 %322, i32 13
  store i32 8, ptr %360, align 4
  br label %361

361:                                              ; preds = %358, %321
  %362 = phi i32 [ %359, %358 ], [ %322, %321 ]
  %363 = and i32 %236, 8
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %361
  %366 = add nuw nsw i32 %362, 1
  %367 = getelementptr %struct.fb_videomode, ptr %234, i32 %362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %367, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 4), i32 56, i1 false) #14
  br label %368

368:                                              ; preds = %365, %361
  %369 = phi i32 [ %366, %365 ], [ %362, %361 ]
  %370 = and i32 %236, 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %368
  %373 = add nuw nsw i32 %369, 1
  %374 = getelementptr %struct.fb_videomode, ptr %234, i32 %369
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %374, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 5), i32 56, i1 false) #14
  br label %375

375:                                              ; preds = %372, %368
  %376 = phi i32 [ %373, %372 ], [ %369, %368 ]
  %377 = and i32 %236, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = add nuw nsw i32 %376, 1
  %381 = getelementptr %struct.fb_videomode, ptr %234, i32 %376
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %381, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 7), i32 56, i1 false) #14
  br label %382

382:                                              ; preds = %379, %375
  %383 = phi i32 [ %380, %379 ], [ %376, %375 ]
  %384 = and i32 %236, 1
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %382
  %387 = add nuw nsw i32 %383, 1
  %388 = getelementptr %struct.fb_videomode, ptr %234, i32 %383
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %388, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 8), i32 56, i1 false) #14
  br label %389

389:                                              ; preds = %386, %382
  %390 = phi i32 [ %387, %386 ], [ %383, %382 ]
  %391 = getelementptr i8, ptr %0, i32 36
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i32
  %394 = and i32 %393, 128
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %389
  %397 = add nuw nsw i32 %390, 1
  %398 = getelementptr %struct.fb_videomode, ptr %234, i32 %390
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %398, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 9), i32 56, i1 false) #14
  br label %399

399:                                              ; preds = %396, %389
  %400 = phi i32 [ %397, %396 ], [ %390, %389 ]
  %401 = and i32 %393, 64
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %399
  %404 = add nuw nsw i32 %400, 1
  %405 = getelementptr %struct.fb_videomode, ptr %234, i32 %400
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %405, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 10), i32 56, i1 false) #14
  br label %406

406:                                              ; preds = %403, %399
  %407 = phi i32 [ %404, %403 ], [ %400, %399 ]
  %408 = and i32 %393, 32
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %446, label %410

410:                                              ; preds = %406
  %411 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %412 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %411, i32 noundef 3520, i32 noundef 160) #16
  %413 = icmp eq ptr %412, null
  br i1 %413, label %443, label %414

414:                                              ; preds = %410
  store i32 832, ptr %412, align 8
  %415 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 1
  store i32 624, ptr %415, align 4
  %416 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef 75, ptr noundef nonnull %412, ptr noundef null) #14
  %417 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 2
  store i32 832, ptr %417, align 8
  %418 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 3
  store i32 624, ptr %418, align 4
  %419 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 17
  %420 = load i32, ptr %419, align 4
  %421 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 4
  store i32 %420, ptr %421, align 8
  %422 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 1
  store i32 75, ptr %422, align 4
  %423 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 18
  %424 = load i32, ptr %423, align 8
  %425 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 5
  store i32 %424, ptr %425, align 4
  %426 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 19
  %427 = load i32, ptr %426, align 4
  %428 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 6
  store i32 %427, ptr %428, align 8
  %429 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 20
  %430 = load i32, ptr %429, align 8
  %431 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 7
  store i32 %430, ptr %431, align 4
  %432 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 21
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 8
  store i32 %433, ptr %434, align 8
  %435 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 22
  %436 = load i32, ptr %435, align 8
  %437 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 9
  store i32 %436, ptr %437, align 4
  %438 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %412, i32 0, i32 23
  %439 = load i32, ptr %438, align 4
  %440 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 10
  store i32 %439, ptr %440, align 8
  %441 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 12
  store i32 0, ptr %441, align 8
  %442 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 11
  store i32 0, ptr %442, align 4
  tail call void @kfree(ptr noundef nonnull %412) #14
  br label %443

443:                                              ; preds = %414, %410
  %444 = add nuw nsw i32 %407, 1
  %445 = getelementptr %struct.fb_videomode, ptr %234, i32 %407, i32 13
  store i32 8, ptr %445, align 4
  br label %446

446:                                              ; preds = %443, %406
  %447 = phi i32 [ %444, %443 ], [ %407, %406 ]
  %448 = and i32 %393, 16
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %453, label %450

450:                                              ; preds = %446
  %451 = add nuw nsw i32 %447, 1
  %452 = getelementptr %struct.fb_videomode, ptr %234, i32 %447
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %452, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 12), i32 56, i1 false) #14
  br label %453

453:                                              ; preds = %450, %446
  %454 = phi i32 [ %451, %450 ], [ %447, %446 ]
  %455 = and i32 %393, 8
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %453
  %458 = add nuw nsw i32 %454, 1
  %459 = getelementptr %struct.fb_videomode, ptr %234, i32 %454
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %459, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 13), i32 56, i1 false) #14
  br label %460

460:                                              ; preds = %457, %453
  %461 = phi i32 [ %458, %457 ], [ %454, %453 ]
  %462 = and i32 %393, 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %467, label %464

464:                                              ; preds = %460
  %465 = add nuw nsw i32 %461, 1
  %466 = getelementptr %struct.fb_videomode, ptr %234, i32 %461
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %466, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 14), i32 56, i1 false) #14
  br label %467

467:                                              ; preds = %464, %460
  %468 = phi i32 [ %465, %464 ], [ %461, %460 ]
  %469 = and i32 %393, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %467
  %472 = add nuw nsw i32 %468, 1
  %473 = getelementptr %struct.fb_videomode, ptr %234, i32 %468
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %473, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 15), i32 56, i1 false) #14
  br label %474

474:                                              ; preds = %471, %467
  %475 = phi i32 [ %472, %471 ], [ %468, %467 ]
  %476 = and i32 %393, 1
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %474
  %479 = add nuw nsw i32 %475, 1
  %480 = getelementptr %struct.fb_videomode, ptr %234, i32 %475
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %480, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 21), i32 56, i1 false) #14
  br label %481

481:                                              ; preds = %478, %474
  %482 = phi i32 [ %479, %478 ], [ %475, %474 ]
  %483 = getelementptr i8, ptr %0, i32 37
  %484 = load i8, ptr %483, align 1
  %485 = icmp sgt i8 %484, -1
  br i1 %485, label %489, label %486

486:                                              ; preds = %481
  %487 = add nuw nsw i32 %482, 1
  %488 = getelementptr %struct.fb_videomode, ptr %234, i32 %482
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %488, ptr noundef align 4 dereferenceable(56) getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 17), i32 56, i1 false) #14
  br label %489

489:                                              ; preds = %486, %481
  %490 = phi i32 [ %487, %486 ], [ %482, %481 ]
  %491 = add i32 %490, %225
  %492 = getelementptr i8, ptr %0, i32 38
  %493 = getelementptr %struct.fb_videomode, ptr %5, i32 %491
  %494 = tail call fastcc i32 @get_std_timing(ptr noundef %492, ptr noundef %493, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %495 = add i32 %494, %491
  %496 = getelementptr i8, ptr %0, i32 40
  %497 = getelementptr %struct.fb_videomode, ptr %5, i32 %495
  %498 = tail call fastcc i32 @get_std_timing(ptr noundef %496, ptr noundef %497, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %499 = add i32 %498, %495
  %500 = getelementptr i8, ptr %0, i32 42
  %501 = getelementptr %struct.fb_videomode, ptr %5, i32 %499
  %502 = tail call fastcc i32 @get_std_timing(ptr noundef %500, ptr noundef %501, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %503 = add i32 %502, %499
  %504 = getelementptr i8, ptr %0, i32 44
  %505 = getelementptr %struct.fb_videomode, ptr %5, i32 %503
  %506 = tail call fastcc i32 @get_std_timing(ptr noundef %504, ptr noundef %505, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %507 = add i32 %506, %503
  %508 = getelementptr i8, ptr %0, i32 46
  %509 = getelementptr %struct.fb_videomode, ptr %5, i32 %507
  %510 = tail call fastcc i32 @get_std_timing(ptr noundef %508, ptr noundef %509, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %511 = add i32 %510, %507
  %512 = getelementptr i8, ptr %0, i32 48
  %513 = getelementptr %struct.fb_videomode, ptr %5, i32 %511
  %514 = tail call fastcc i32 @get_std_timing(ptr noundef %512, ptr noundef %513, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %515 = add i32 %514, %511
  %516 = getelementptr i8, ptr %0, i32 50
  %517 = getelementptr %struct.fb_videomode, ptr %5, i32 %515
  %518 = tail call fastcc i32 @get_std_timing(ptr noundef %516, ptr noundef %517, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %519 = add i32 %518, %515
  %520 = getelementptr i8, ptr %0, i32 52
  %521 = getelementptr %struct.fb_videomode, ptr %5, i32 %519
  %522 = tail call fastcc i32 @get_std_timing(ptr noundef %520, ptr noundef %521, i32 noundef %231, i32 noundef %232, ptr noundef %2)
  %523 = add i32 %522, %519
  br label %524

524:                                              ; preds = %563, %489
  %525 = phi i32 [ %565, %563 ], [ 0, %489 ]
  %526 = phi i32 [ %564, %563 ], [ %523, %489 ]
  %527 = phi ptr [ %566, %563 ], [ %70, %489 ]
  %528 = load i8, ptr %527, align 1
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %530, label %563

530:                                              ; preds = %524
  %531 = getelementptr i8, ptr %527, i32 1
  %532 = load i8, ptr %531, align 1
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %534, label %563

534:                                              ; preds = %530
  %535 = getelementptr i8, ptr %527, i32 3
  %536 = load i8, ptr %535, align 1
  %537 = icmp eq i8 %536, -6
  br i1 %537, label %538, label %563

538:                                              ; preds = %534
  %539 = getelementptr i8, ptr %527, i32 5
  %540 = getelementptr %struct.fb_videomode, ptr %5, i32 %526
  %541 = tail call fastcc i32 @get_std_timing(ptr noundef %539, ptr noundef %540, i32 noundef %231, i32 noundef %232, ptr noundef %2) #14
  %542 = getelementptr i8, ptr %527, i32 7
  %543 = getelementptr %struct.fb_videomode, ptr %540, i32 %541
  %544 = tail call fastcc i32 @get_std_timing(ptr noundef %542, ptr noundef %543, i32 noundef %231, i32 noundef %232, ptr noundef %2) #14
  %545 = add i32 %544, %541
  %546 = getelementptr i8, ptr %527, i32 9
  %547 = getelementptr %struct.fb_videomode, ptr %540, i32 %545
  %548 = tail call fastcc i32 @get_std_timing(ptr noundef %546, ptr noundef %547, i32 noundef %231, i32 noundef %232, ptr noundef %2) #14
  %549 = add i32 %548, %545
  %550 = getelementptr i8, ptr %527, i32 11
  %551 = getelementptr %struct.fb_videomode, ptr %540, i32 %549
  %552 = tail call fastcc i32 @get_std_timing(ptr noundef %550, ptr noundef %551, i32 noundef %231, i32 noundef %232, ptr noundef %2) #14
  %553 = add i32 %552, %549
  %554 = getelementptr i8, ptr %527, i32 13
  %555 = getelementptr %struct.fb_videomode, ptr %540, i32 %553
  %556 = tail call fastcc i32 @get_std_timing(ptr noundef %554, ptr noundef %555, i32 noundef %231, i32 noundef %232, ptr noundef %2) #14
  %557 = add i32 %556, %553
  %558 = getelementptr i8, ptr %527, i32 15
  %559 = getelementptr %struct.fb_videomode, ptr %540, i32 %557
  %560 = tail call fastcc i32 @get_std_timing(ptr noundef %558, ptr noundef %559, i32 noundef %231, i32 noundef %232, ptr noundef %2) #14
  %561 = add i32 %557, %526
  %562 = add i32 %561, %560
  br label %563

563:                                              ; preds = %538, %534, %530, %524
  %564 = phi i32 [ %562, %538 ], [ %526, %534 ], [ %526, %530 ], [ %526, %524 ]
  %565 = add nuw nsw i32 %525, 1
  %566 = getelementptr i8, ptr %527, i32 18
  %567 = icmp eq i32 %565, 4
  br i1 %567, label %568, label %524

568:                                              ; preds = %563
  %569 = icmp eq i32 %564, 0
  br i1 %569, label %579, label %570

570:                                              ; preds = %568
  store i32 %564, ptr %1, align 4
  %571 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %564, i32 56) #14
  %572 = extractvalue { i32, i1 } %571, 1
  br i1 %572, label %581, label %573, !prof !9

573:                                              ; preds = %570
  %574 = extractvalue { i32, i1 } %571, 0
  %575 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %574, i32 noundef 3264) #17
  %576 = icmp eq ptr %575, null
  br i1 %576, label %581, label %577

577:                                              ; preds = %573
  %578 = mul nuw i32 %564, 56
  tail call void @llvm.memmove.p0.p0.i32(ptr nonnull align 64 %575, ptr nonnull align 8 %5, i32 %578, i1 false)
  br label %579

579:                                              ; preds = %577, %568, %34, %26, %7
  %580 = phi ptr [ %575, %577 ], [ null, %34 ], [ null, %26 ], [ null, %7 ], [ null, %568 ]
  tail call void @kfree(ptr noundef nonnull %5) #14
  br label %581

581:                                              ; preds = %579, %573, %570, %3
  %582 = phi ptr [ null, %3 ], [ %5, %573 ], [ %5, %570 ], [ %580, %579 ]
  ret ptr %582
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_get_mode(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef readonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %287, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 19
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %12, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = zext i16 %16 to i32
  %28 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 18
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ult i16 %16, %29
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %20, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %32, %26, %22, %18, %14, %10, %8
  %38 = phi i32 [ %24, %36 ], [ 29000, %32 ], [ 29000, %26 ], [ 29000, %22 ], [ 29000, %18 ], [ 29000, %14 ], [ 29000, %10 ], [ 29000, %8 ]
  %39 = phi i32 [ %12, %36 ], [ 30000, %32 ], [ 30000, %26 ], [ 30000, %22 ], [ 30000, %18 ], [ 30000, %14 ], [ 30000, %10 ], [ 30000, %8 ]
  %40 = phi i32 [ %30, %36 ], [ 60, %32 ], [ 60, %26 ], [ 60, %22 ], [ 60, %18 ], [ 60, %14 ], [ 60, %10 ], [ 60, %8 ]
  %41 = phi i32 [ %27, %36 ], [ 60, %32 ], [ 60, %26 ], [ 60, %22 ], [ 60, %18 ], [ 60, %14 ], [ 60, %10 ], [ 60, %8 ]
  %42 = phi i32 [ %34, %36 ], [ 0, %32 ], [ 0, %26 ], [ 0, %22 ], [ 0, %18 ], [ 0, %14 ], [ 0, %10 ], [ 0, %8 ]
  %43 = phi i32 [ %20, %36 ], [ 25000000, %32 ], [ 25000000, %26 ], [ 25000000, %22 ], [ 25000000, %18 ], [ 25000000, %14 ], [ 25000000, %10 ], [ 25000000, %8 ]
  %44 = load i32, ptr %2, align 4
  %45 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 4
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 25
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = lshr i32 %47, %54
  %56 = select i1 %52, i32 1, i32 2
  %57 = and i32 %50, 2
  %58 = icmp eq i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = shl i32 %55, %60
  %62 = select i1 %58, i32 1, i32 2
  %63 = and i32 %50, 3
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %37
  store i32 %61, ptr %48, align 8
  br label %66

66:                                               ; preds = %65, %37
  %67 = and i32 %0, -257
  switch i32 %67, label %285 [
    i32 0, label %68
    i32 1, label %149
    i32 2, label %176
    i32 3, label %197
  ]

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 1
  store i32 %39, ptr %69, align 4
  %70 = mul i32 %39, 550
  %71 = udiv i32 %70, 1000
  %72 = add nuw nsw i32 %71, 500
  %73 = udiv i32 %72, 1000
  %74 = add nuw nsw i32 %73, 1
  %75 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 6
  store i32 %74, ptr %75, align 8
  %76 = add i32 %61, %74
  %77 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 8
  store i32 %76, ptr %77, align 8
  %78 = udiv i32 %39, %76
  %79 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 2
  store i32 %78, ptr %79, align 8
  %80 = udiv i32 300000000, %39
  %81 = sub nsw i32 30000, %80
  %82 = mul i32 %81, %44
  %83 = add nuw nsw i32 %80, 70000
  %84 = udiv i32 %82, %83
  %85 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 5
  store i32 %84, ptr %85, align 4
  %86 = add i32 %84, %44
  %87 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 7
  store i32 %86, ptr %87, align 4
  %88 = mul i32 %86, %39
  store i32 %88, ptr %6, align 8
  %89 = icmp ugt i32 %78, %41
  br i1 %89, label %90, label %111

90:                                               ; preds = %68
  store i32 %41, ptr %79, align 8
  %91 = mul nsw i32 %41, -550
  %92 = add nsw i32 %91, 1000000
  %93 = udiv i32 %92, 1000
  %94 = add i32 %61, 1
  %95 = mul nuw nsw i32 %41, 1000
  %96 = mul i32 %95, %94
  %97 = udiv i32 %96, %93
  store i32 %97, ptr %69, align 4
  %98 = mul i32 %97, 550
  %99 = udiv i32 %98, 1000
  %100 = add nuw nsw i32 %99, 500
  %101 = udiv i32 %100, 1000
  %102 = add nuw nsw i32 %101, 1
  store i32 %102, ptr %75, align 8
  %103 = add i32 %102, %61
  store i32 %103, ptr %77, align 8
  %104 = udiv i32 300000000, %97
  %105 = sub nsw i32 30000, %104
  %106 = mul i32 %105, %44
  %107 = add nuw nsw i32 %104, 70000
  %108 = udiv i32 %106, %107
  store i32 %108, ptr %85, align 4
  %109 = add i32 %108, %44
  store i32 %109, ptr %87, align 4
  %110 = mul i32 %109, %97
  store i32 %110, ptr %6, align 8
  br label %111

111:                                              ; preds = %90, %68
  %112 = phi i32 [ %102, %90 ], [ %74, %68 ]
  %113 = phi i32 [ %108, %90 ], [ %84, %68 ]
  %114 = phi i32 [ %109, %90 ], [ %86, %68 ]
  %115 = phi i32 [ %97, %90 ], [ %39, %68 ]
  %116 = phi i32 [ %41, %90 ], [ %78, %68 ]
  %117 = phi i32 [ %110, %90 ], [ %88, %68 ]
  %118 = icmp ugt i32 %117, %43
  br i1 %118, label %119, label %235

119:                                              ; preds = %111
  store i32 %43, ptr %6, align 8
  %120 = udiv i32 %43, 1000
  %121 = mul i32 %44, 600000
  %122 = mul nuw nsw i32 %120, 5
  %123 = udiv i32 %121, %122
  %124 = mul i32 %123, 10000
  %125 = add i32 %124, 49000000
  %126 = tail call i32 @int_sqrt(i32 noundef %125) #14
  %127 = mul i32 %126, 1000
  %128 = add i32 %127, -7000000
  %129 = udiv i32 %128, 600
  %130 = mul nsw i32 %129, -3
  %131 = add nsw i32 %130, 30000
  %132 = mul i32 %131, %44
  %133 = sub nsw i32 70000, %130
  %134 = udiv i32 %132, %133
  %135 = add nuw nsw i32 %134, 8
  %136 = and i32 %135, -16
  store i32 %136, ptr %85, align 4
  %137 = load i32, ptr %45, align 4
  %138 = add i32 %137, %136
  store i32 %138, ptr %87, align 4
  %139 = load i32, ptr %6, align 8
  %140 = udiv i32 %139, %138
  store i32 %140, ptr %69, align 4
  %141 = mul i32 %140, 550
  %142 = udiv i32 %141, 1000
  %143 = add nuw nsw i32 %142, 500
  %144 = udiv i32 %143, 1000
  %145 = add nuw nsw i32 %144, 1
  store i32 %145, ptr %75, align 8
  %146 = load i32, ptr %48, align 8
  %147 = add i32 %145, %146
  store i32 %147, ptr %77, align 8
  %148 = udiv i32 %140, %147
  store i32 %148, ptr %79, align 8
  br label %235

149:                                              ; preds = %66
  %150 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 2
  store i32 %1, ptr %150, align 8
  %151 = mul i32 %1, -550
  %152 = add i32 %151, 1000000
  %153 = udiv i32 %152, 1000
  %154 = add i32 %61, 1
  %155 = mul i32 %1, 1000
  %156 = mul i32 %155, %154
  %157 = udiv i32 %156, %153
  %158 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 1
  store i32 %157, ptr %158, align 4
  %159 = mul i32 %157, 550
  %160 = udiv i32 %159, 1000
  %161 = add nuw nsw i32 %160, 500
  %162 = udiv i32 %161, 1000
  %163 = add nuw nsw i32 %162, 1
  %164 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 6
  store i32 %163, ptr %164, align 8
  %165 = add i32 %163, %61
  %166 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 8
  store i32 %165, ptr %166, align 8
  %167 = udiv i32 300000000, %157
  %168 = sub nsw i32 30000, %167
  %169 = mul i32 %168, %44
  %170 = add nuw nsw i32 %167, 70000
  %171 = udiv i32 %169, %170
  %172 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 5
  store i32 %171, ptr %172, align 4
  %173 = add i32 %171, %44
  %174 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 7
  store i32 %173, ptr %174, align 4
  %175 = mul i32 %173, %157
  store i32 %175, ptr %6, align 8
  br label %235

176:                                              ; preds = %66
  %177 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 1
  store i32 %1, ptr %177, align 4
  %178 = mul i32 %1, 550
  %179 = udiv i32 %178, 1000
  %180 = add nuw nsw i32 %179, 500
  %181 = udiv i32 %180, 1000
  %182 = add nuw nsw i32 %181, 1
  %183 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 6
  store i32 %182, ptr %183, align 8
  %184 = add i32 %61, %182
  %185 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 8
  store i32 %184, ptr %185, align 8
  %186 = udiv i32 %1, %184
  %187 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 2
  store i32 %186, ptr %187, align 8
  %188 = udiv i32 300000000, %1
  %189 = sub nsw i32 30000, %188
  %190 = mul i32 %189, %44
  %191 = add nuw nsw i32 %188, 70000
  %192 = udiv i32 %190, %191
  %193 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 5
  store i32 %192, ptr %193, align 4
  %194 = add i32 %192, %44
  %195 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 7
  store i32 %194, ptr %195, align 4
  %196 = mul i32 %194, %1
  store i32 %196, ptr %6, align 8
  br label %235

197:                                              ; preds = %66
  %198 = udiv i32 1000000000, %1
  %199 = mul i32 %198, 1000
  store i32 %199, ptr %6, align 8
  %200 = udiv i32 %199, 1000
  %201 = mul i32 %44, 600000
  %202 = mul nuw nsw i32 %200, 5
  %203 = udiv i32 %201, %202
  %204 = mul i32 %203, 10000
  %205 = add i32 %204, 49000000
  %206 = tail call i32 @int_sqrt(i32 noundef %205) #14
  %207 = mul i32 %206, 1000
  %208 = add i32 %207, -7000000
  %209 = udiv i32 %208, 600
  %210 = mul nsw i32 %209, -3
  %211 = add nsw i32 %210, 30000
  %212 = mul i32 %211, %44
  %213 = sub nsw i32 70000, %210
  %214 = udiv i32 %212, %213
  %215 = add nuw nsw i32 %214, 8
  %216 = and i32 %215, -16
  %217 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 5
  store i32 %216, ptr %217, align 4
  %218 = load i32, ptr %45, align 4
  %219 = add i32 %218, %216
  %220 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 7
  store i32 %219, ptr %220, align 4
  %221 = load i32, ptr %6, align 8
  %222 = udiv i32 %221, %219
  %223 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 1
  store i32 %222, ptr %223, align 4
  %224 = mul i32 %222, 550
  %225 = udiv i32 %224, 1000
  %226 = add nuw nsw i32 %225, 500
  %227 = udiv i32 %226, 1000
  %228 = add nuw nsw i32 %227, 1
  %229 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 6
  store i32 %228, ptr %229, align 8
  %230 = load i32, ptr %48, align 8
  %231 = add i32 %228, %230
  %232 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 8
  store i32 %231, ptr %232, align 8
  %233 = udiv i32 %222, %231
  %234 = getelementptr inbounds %struct.__fb_timings, ptr %6, i32 0, i32 2
  store i32 %233, ptr %234, align 8
  br label %235

235:                                              ; preds = %197, %176, %149, %119, %111
  %236 = phi i32 [ %112, %111 ], [ %163, %149 ], [ %182, %176 ], [ %228, %197 ], [ %145, %119 ]
  %237 = phi i32 [ %113, %111 ], [ %171, %149 ], [ %192, %176 ], [ %216, %197 ], [ %136, %119 ]
  %238 = phi i32 [ %114, %111 ], [ %173, %149 ], [ %194, %176 ], [ %219, %197 ], [ %138, %119 ]
  %239 = phi i32 [ %117, %111 ], [ %175, %149 ], [ %196, %176 ], [ %221, %197 ], [ %139, %119 ]
  %240 = phi i32 [ %115, %111 ], [ %157, %149 ], [ %1, %176 ], [ %222, %197 ], [ %140, %119 ]
  %241 = phi i32 [ %116, %111 ], [ %1, %149 ], [ %186, %176 ], [ %233, %197 ], [ %148, %119 ]
  %242 = and i32 %0, 256
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %235
  %245 = icmp ult i32 %241, %40
  %246 = icmp ugt i32 %241, %41
  %247 = select i1 %245, i1 true, i1 %246
  br i1 %247, label %285, label %248

248:                                              ; preds = %244
  %249 = icmp ult i32 %240, %38
  %250 = icmp ugt i32 %240, %39
  %251 = select i1 %249, i1 true, i1 %250
  br i1 %251, label %285, label %252

252:                                              ; preds = %248
  %253 = icmp ult i32 %239, %42
  %254 = icmp ugt i32 %239, %43
  %255 = select i1 %253, i1 true, i1 %254
  br i1 %255, label %285, label %256

256:                                              ; preds = %252, %235
  %257 = udiv i32 %239, 1000
  %258 = udiv i32 1000000000, %257
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 17
  store i32 %258, ptr %259, align 4
  %260 = shl i32 %238, 3
  %261 = udiv i32 %260, 100
  %262 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 22
  store i32 %261, ptr %262, align 4
  %263 = lshr i32 %237, 1
  %264 = sub nsw i32 %263, %261
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 19
  store i32 %264, ptr %265, align 4
  %266 = sub nsw i32 %237, %263
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 18
  store i32 %266, ptr %267, align 4
  %268 = trunc i32 %56 to i8
  %269 = mul nuw nsw i8 %268, 3
  %270 = trunc i32 %62 to i8
  %271 = udiv i8 %269, %270
  %272 = zext i8 %271 to i32
  %273 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 23
  store i32 %272, ptr %273, align 4
  %274 = udiv i8 %268, %270
  %275 = zext i8 %274 to i32
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 21
  store i32 %275, ptr %276, align 4
  %277 = mul nuw nsw i32 %236, %56
  %278 = trunc i32 %277 to i16
  %279 = trunc i32 %62 to i16
  %280 = udiv i16 %278, %279
  %281 = zext i16 %280 to i32
  %282 = add nuw nsw i32 %275, %272
  %283 = sub nsw i32 %281, %282
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 20
  store i32 %283, ptr %284, align 4
  br label %285

285:                                              ; preds = %256, %252, %248, %244, %66
  %286 = phi i32 [ 0, %256 ], [ -22, %66 ], [ -22, %252 ], [ -22, %248 ], [ -22, %244 ]
  tail call void @kfree(ptr noundef nonnull %6) #14
  br label %287

287:                                              ; preds = %285, %4
  %288 = phi i32 [ %286, %285 ], [ -12, %4 ]
  ret i32 %288
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_videomode_from_videomode(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr %0, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = udiv i32 %27, 1000
  %31 = udiv i32 1000000000, %30
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi i32 [ %31, %29 ], [ 0, %2 ]
  %34 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.videomode, ptr %0, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  store i32 1, ptr %35, align 4
  %42 = load i32, ptr %37, align 4
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi i32 [ 3, %41 ], [ 2, %32 ]
  %45 = phi i32 [ %42, %41 ], [ %38, %32 ]
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  store i32 %44, ptr %35, align 4
  %49 = load i32, ptr %37, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %49, %48 ], [ %45, %43 ]
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  store i32 1, ptr %36, align 4
  %55 = load i32, ptr %37, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ 3, %54 ], [ 2, %50 ]
  %58 = phi i32 [ %55, %54 ], [ %51, %50 ]
  %59 = and i32 %58, 512
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 %57, ptr %36, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 13
  store i32 0, ptr %63, align 4
  %64 = load i32, ptr %3, align 4
  %65 = load i32, ptr %9, align 4
  %66 = add i32 %65, %64
  %67 = load i32, ptr %6, align 4
  %68 = add i32 %66, %67
  %69 = load i32, ptr %12, align 4
  %70 = add i32 %68, %69
  %71 = load i32, ptr %15, align 4
  %72 = load i32, ptr %21, align 4
  %73 = add i32 %72, %71
  %74 = load i32, ptr %18, align 4
  %75 = add i32 %73, %74
  %76 = load i32, ptr %24, align 4
  %77 = add i32 %75, %76
  %78 = icmp ne i32 %70, 0
  %79 = icmp ne i32 %77, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %85

81:                                               ; preds = %62
  %82 = load i32, ptr %0, align 4
  %83 = mul i32 %77, %70
  %84 = udiv i32 %82, %83
  br label %85

85:                                               ; preds = %81, %62
  %86 = phi i32 [ %84, %81 ], [ 0, %62 ]
  %87 = phi i32 [ 0, %81 ], [ -22, %62 ]
  %88 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %86, ptr %88, align 4
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_fb_videomode(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.videomode, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %5 = call i32 @of_get_videomode(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %81

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %7
  %35 = udiv i32 %32, 1000
  %36 = udiv i32 1000000000, %35
  br label %37

37:                                               ; preds = %34, %7
  %38 = phi i32 [ %36, %34 ], [ 0, %7 ]
  %39 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = and i32 %43, 8
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %43, 2
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 2, i32 3
  %52 = select i1 %48, i32 1, i32 %51
  store i32 %52, ptr %40, align 4
  br label %53

53:                                               ; preds = %46, %37
  %54 = and i32 %43, 768
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = and i32 %43, 512
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %43, 256
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 2, i32 3
  %62 = select i1 %58, i32 1, i32 %61
  store i32 %62, ptr %41, align 4
  br label %63

63:                                               ; preds = %56, %53
  %64 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 13
  store i32 0, ptr %64, align 4
  %65 = add i32 %12, %9
  %66 = add i32 %65, %15
  %67 = add i32 %66, %18
  %68 = add i32 %24, %21
  %69 = add i32 %68, %27
  %70 = add i32 %69, %30
  %71 = icmp ne i32 %67, 0
  %72 = icmp ne i32 %70, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = mul i32 %70, %67
  %76 = udiv i32 %32, %75
  br label %77

77:                                               ; preds = %74, %63
  %78 = phi i32 [ %76, %74 ], [ 0, %63 ]
  %79 = phi i32 [ 0, %74 ], [ -22, %63 ]
  %80 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %78, ptr %80, align 4
  br label %81

81:                                               ; preds = %77, %3
  %82 = phi i32 [ %5, %3 ], [ %79, %77 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_validate_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 19
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %4, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = zext i16 %8 to i32
  %20 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 18
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ult i16 %8, %21
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %12, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %24, %18, %14, %10, %6, %2
  %30 = phi i32 [ %16, %28 ], [ 29000, %24 ], [ 29000, %18 ], [ 29000, %14 ], [ 29000, %10 ], [ 29000, %6 ], [ 29000, %2 ]
  %31 = phi i32 [ %4, %28 ], [ 30000, %24 ], [ 30000, %18 ], [ 30000, %14 ], [ 30000, %10 ], [ 30000, %6 ], [ 30000, %2 ]
  %32 = phi i32 [ %22, %28 ], [ 60, %24 ], [ 60, %18 ], [ 60, %14 ], [ 60, %10 ], [ 60, %6 ], [ 60, %2 ]
  %33 = phi i32 [ %19, %28 ], [ 60, %24 ], [ 60, %18 ], [ 60, %14 ], [ 60, %10 ], [ 60, %6 ], [ 60, %2 ]
  %34 = phi i32 [ %26, %28 ], [ 0, %24 ], [ 0, %18 ], [ 0, %14 ], [ 0, %10 ], [ 0, %6 ], [ 0, %2 ]
  %35 = phi i32 [ %12, %28 ], [ 25000000, %24 ], [ 25000000, %18 ], [ 25000000, %14 ], [ 25000000, %10 ], [ 25000000, %6 ], [ 25000000, %2 ]
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %87, label %39

39:                                               ; preds = %29
  %40 = udiv i32 1000000000, %37
  %41 = mul i32 %40, 1000
  %42 = load i32, ptr %0, align 4
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %45, %47
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %48, %50
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %56, %58
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %59, %61
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = lshr i32 %62, %65
  %67 = lshr i32 %64, 1
  %68 = and i32 %67, 1
  %69 = shl i32 %66, %68
  %70 = udiv i32 %41, %51
  %71 = add i32 %70, 500
  %72 = urem i32 %71, 1000
  %73 = sub i32 %71, %72
  %74 = udiv i32 %73, %69
  %75 = icmp ult i32 %74, %32
  %76 = icmp ugt i32 %74, %33
  %77 = select i1 %75, i1 true, i1 %76
  %78 = icmp ult i32 %73, %30
  %79 = select i1 %77, i1 true, i1 %78
  %80 = icmp ugt i32 %73, %31
  %81 = select i1 %79, i1 true, i1 %80
  %82 = icmp ult i32 %41, %34
  %83 = select i1 %81, i1 true, i1 %82
  %84 = icmp ugt i32 %41, %35
  %85 = select i1 %83, i1 true, i1 %84
  %86 = select i1 %85, i32 -22, i32 0
  br label %87

87:                                               ; preds = %39, %29
  %88 = phi i32 [ %86, %39 ], [ -22, %29 ]
  ret i32 %88
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @fb_firmware_edid(ptr nocapture readnone %0) #7 {
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_edid(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = getelementptr i8, ptr %0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %4 = load i8, ptr %3, align 1
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 31
  %7 = or i8 %6, 64
  store i8 %7, ptr %2, align 4
  %8 = shl i8 %4, 3
  %9 = and i8 %8, 24
  %10 = getelementptr i8, ptr %0, i32 9
  %11 = load i8, ptr %10, align 1
  %12 = lshr i8 %11, 5
  %13 = or i8 %9, %12
  %14 = or i8 %13, 64
  %15 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = and i8 %11, 31
  %17 = or i8 %16, 64
  %18 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  store i8 %17, ptr %18, align 2
  %19 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  store i8 0, ptr %19, align 1
  %20 = getelementptr i8, ptr %0, i32 10
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %0, i32 11
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or i32 %26, %22
  %28 = call i32 @strncmp(ptr noundef nonnull %2, ptr noundef nonnull @brokendb, i32 noundef 4)
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %27, 1850
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %42, label %32

32:                                               ; preds = %1
  %33 = call i32 @strncmp(ptr noundef nonnull %2, ptr noundef getelementptr inbounds ([3 x %struct.broken_edid], ptr @brokendb, i32 0, i32 1), i32 noundef 4)
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq i32 %27, 23108
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = call i32 @strncmp(ptr noundef nonnull %2, ptr noundef getelementptr inbounds ([3 x %struct.broken_edid], ptr @brokendb, i32 0, i32 2), i32 noundef 4)
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq i32 %27, 5006
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %168

42:                                               ; preds = %37, %32, %1
  %43 = phi i32 [ 0, %1 ], [ 1, %32 ], [ 2, %37 ]
  %44 = getelementptr [3 x %struct.broken_edid], ptr @brokendb, i32 0, i32 %43, i32 2
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %168 [
    i32 1, label %46
    i32 2, label %77
    i32 3, label %82
  ]

46:                                               ; preds = %42
  %47 = load i8, ptr %0, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %166

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, -1
  br i1 %52, label %53, label %166

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %0, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, -1
  br i1 %56, label %57, label %166

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, -1
  br i1 %60, label %61, label %166

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %0, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, -1
  br i1 %64, label %65, label %166

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %0, i32 5
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, -1
  br i1 %68, label %69, label %166

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %0, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, -1
  br i1 %72, label %73, label %166

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %0, i32 7
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %168, label %166

77:                                               ; preds = %42
  %78 = getelementptr i8, ptr %0, i32 24
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %168, label %162

82:                                               ; preds = %42
  %83 = getelementptr i8, ptr %0, i32 54
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %0, i32 55
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %0, i32 56
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %0, i32 57
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, -3
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %0, i32 58
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %168, label %102

102:                                              ; preds = %98, %94, %90, %86, %82
  %103 = getelementptr i8, ptr %0, i32 72
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %0, i32 73
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = getelementptr i8, ptr %0, i32 74
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %0, i32 75
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, -3
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr i8, ptr %0, i32 76
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %168, label %122

122:                                              ; preds = %118, %114, %110, %106, %102
  %123 = getelementptr i8, ptr %0, i32 90
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %0, i32 91
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = getelementptr i8, ptr %0, i32 92
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %0, i32 93
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, -3
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = getelementptr i8, ptr %0, i32 94
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %168, label %142

142:                                              ; preds = %138, %134, %130, %126, %122
  %143 = getelementptr i8, ptr %0, i32 108
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %0, i32 109
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %0, i32 110
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %0, i32 111
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, -3
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %0, i32 112
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %168, label %166

162:                                              ; preds = %77
  %163 = getelementptr i8, ptr %0, i32 20
  %164 = load i8, ptr %163, align 1
  %165 = icmp sgt i8 %164, -1
  br i1 %165, label %168, label %166

166:                                              ; preds = %162, %158, %154, %150, %146, %142, %73, %69, %65, %61, %57, %53, %49, %46
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef %27) #15
  br label %168

168:                                              ; preds = %166, %162, %158, %138, %118, %98, %77, %73, %42, %37
  %169 = phi i32 [ %45, %166 ], [ 0, %162 ], [ 0, %77 ], [ 0, %42 ], [ 0, %37 ], [ 0, %73 ], [ 0, %158 ], [ 0, %138 ], [ 0, %118 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fix_edid(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %249 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %13
  ]

3:                                                ; preds = %2
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  store i64 72057594037927680, ptr %0, align 1
  br label %249

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #15
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 127
  store i8 %9, ptr %7, align 1
  %10 = getelementptr i8, ptr %0, i32 127
  %11 = load i8, ptr %10, align 1
  %12 = xor i8 %11, -128
  store i8 %12, ptr %10, align 1
  br label %249

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  %15 = getelementptr i8, ptr %0, i32 54
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 55
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 56
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 57
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 58
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %78, label %34

34:                                               ; preds = %30, %26, %22
  %35 = getelementptr i8, ptr %0, i32 56
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 57
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, -2
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 58
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %78, label %46

46:                                               ; preds = %42, %38, %34
  %47 = getelementptr i8, ptr %0, i32 56
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 57
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, -4
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %0, i32 58
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %54, %50, %46
  %59 = getelementptr i8, ptr %0, i32 56
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %0, i32 58
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %230, %178, %126, %62
  %67 = phi ptr [ %15, %62 ], [ %79, %126 ], [ %131, %178 ], [ %183, %230 ]
  %68 = getelementptr i8, ptr %67, i32 1
  %69 = getelementptr i8, ptr %67, i32 2
  %70 = getelementptr i8, ptr %67, i32 4
  store i8 0, ptr %67, align 1
  store i8 0, ptr %68, align 1
  store i8 0, ptr %69, align 1
  %71 = getelementptr i8, ptr %67, i32 3
  store i8 -3, ptr %71, align 1
  store i8 0, ptr %70, align 1
  %72 = getelementptr i8, ptr %67, i32 5
  store i8 60, ptr %72, align 1
  %73 = getelementptr i8, ptr %67, i32 6
  store i8 60, ptr %73, align 1
  %74 = getelementptr i8, ptr %67, i32 7
  store i8 30, ptr %74, align 1
  %75 = getelementptr i8, ptr %67, i32 8
  store i8 75, ptr %75, align 1
  %76 = getelementptr i8, ptr %67, i32 9
  store i8 17, ptr %76, align 1
  %77 = getelementptr i8, ptr %67, i32 10
  store i8 0, ptr %77, align 1
  br label %234

78:                                               ; preds = %62, %58, %54, %42, %30, %18, %13
  %79 = getelementptr i8, ptr %0, i32 72
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %130

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %0, i32 73
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %130

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %0, i32 74
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %0, i32 75
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %0, i32 76
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %130, label %98

98:                                               ; preds = %94, %90, %86
  %99 = getelementptr i8, ptr %0, i32 74
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %0, i32 75
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, -2
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %0, i32 76
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %106, %102, %98
  %111 = getelementptr i8, ptr %0, i32 74
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %0, i32 75
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, -4
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr i8, ptr %0, i32 76
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %118, %114, %110
  %123 = getelementptr i8, ptr %0, i32 74
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %0, i32 76
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %66, label %130

130:                                              ; preds = %126, %122, %118, %106, %94, %82, %78
  %131 = getelementptr i8, ptr %0, i32 90
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %182

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %0, i32 91
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %182

138:                                              ; preds = %134
  %139 = getelementptr i8, ptr %0, i32 92
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %0, i32 93
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %0, i32 94
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %182, label %150

150:                                              ; preds = %146, %142, %138
  %151 = getelementptr i8, ptr %0, i32 92
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %0, i32 93
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, -2
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %0, i32 94
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %182, label %162

162:                                              ; preds = %158, %154, %150
  %163 = getelementptr i8, ptr %0, i32 92
  %164 = load i8, ptr %163, align 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %0, i32 93
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %168, -4
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = getelementptr i8, ptr %0, i32 94
  %172 = load i8, ptr %171, align 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %170, %166, %162
  %175 = getelementptr i8, ptr %0, i32 92
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = getelementptr i8, ptr %0, i32 94
  %180 = load i8, ptr %179, align 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %66, label %182

182:                                              ; preds = %178, %174, %170, %158, %146, %134, %130
  %183 = getelementptr i8, ptr %0, i32 108
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %234

186:                                              ; preds = %182
  %187 = getelementptr i8, ptr %0, i32 109
  %188 = load i8, ptr %187, align 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %234

190:                                              ; preds = %186
  %191 = getelementptr i8, ptr %0, i32 110
  %192 = load i8, ptr %191, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %0, i32 111
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, -1
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = getelementptr i8, ptr %0, i32 112
  %200 = load i8, ptr %199, align 1
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %234, label %202

202:                                              ; preds = %198, %194, %190
  %203 = getelementptr i8, ptr %0, i32 110
  %204 = load i8, ptr %203, align 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = getelementptr i8, ptr %0, i32 111
  %208 = load i8, ptr %207, align 1
  %209 = icmp eq i8 %208, -2
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = getelementptr i8, ptr %0, i32 112
  %212 = load i8, ptr %211, align 1
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %234, label %214

214:                                              ; preds = %210, %206, %202
  %215 = getelementptr i8, ptr %0, i32 110
  %216 = load i8, ptr %215, align 1
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %214
  %219 = getelementptr i8, ptr %0, i32 111
  %220 = load i8, ptr %219, align 1
  %221 = icmp eq i8 %220, -4
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr i8, ptr %0, i32 112
  %224 = load i8, ptr %223, align 1
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %222, %218, %214
  %227 = getelementptr i8, ptr %0, i32 110
  %228 = load i8, ptr %227, align 1
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = getelementptr i8, ptr %0, i32 112
  %232 = load i8, ptr %231, align 1
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %66, label %234

234:                                              ; preds = %230, %226, %222, %210, %198, %186, %182, %66
  br label %235

235:                                              ; preds = %235, %234
  %236 = phi i32 [ %242, %235 ], [ 0, %234 ]
  %237 = phi i32 [ %243, %235 ], [ 0, %234 ]
  %238 = getelementptr i8, ptr %0, i32 %236
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  %241 = add nuw nsw i32 %237, %240
  %242 = add nuw nsw i32 %236, 1
  %243 = and i32 %241, 255
  %244 = icmp eq i32 %242, 127
  br i1 %244, label %245, label %235

245:                                              ; preds = %235
  %246 = trunc i32 %241 to i8
  %247 = sub i8 0, %246
  %248 = getelementptr i8, ptr %0, i32 127
  store i8 %247, ptr %248, align 1
  br label %249

249:                                              ; preds = %245, %5, %3, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_std_timing(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = load i8, ptr %0, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %8, %11
  br label %13

13:                                               ; preds = %18, %5
  %14 = phi i32 [ 0, %5 ], [ %19, %18 ]
  %15 = getelementptr [0 x %struct.dmt_videomode], ptr @dmt_modes, i32 0, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp eq i32 %19, 80
  br i1 %20, label %29, label %13

21:                                               ; preds = %13
  %22 = getelementptr [0 x %struct.dmt_videomode], ptr @dmt_modes, i32 0, i32 %14, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(56) %23, i32 56, i1 false)
  %26 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 2
  store i32 %28, ptr %26, align 4
  br label %266

29:                                               ; preds = %21, %18
  %30 = shl nuw nsw i32 %7, 3
  %31 = add nuw nsw i32 %30, 248
  %32 = icmp ult i8 %6, 2
  br i1 %32, label %279, label %33

33:                                               ; preds = %29
  %34 = lshr i8 %10, 6
  %35 = zext i8 %34 to i32
  switch i32 %35, label %196 [
    i32 0, label %36
    i32 1, label %80
    i32 2, label %118
    i32 3, label %158
  ]

36:                                               ; preds = %33
  %37 = icmp slt i32 %2, 1
  br i1 %37, label %197, label %38

38:                                               ; preds = %36
  %39 = icmp eq i32 %2, 1
  %40 = icmp slt i32 %3, 3
  %41 = and i1 %39, %40
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 160) #16
  %44 = icmp eq ptr %43, null
  br i1 %41, label %233, label %45

45:                                               ; preds = %38
  br i1 %44, label %266, label %46

46:                                               ; preds = %45
  %47 = and i8 %10, 63
  %48 = add nuw nsw i8 %47, 60
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %31, 10
  %51 = lshr exact i32 %50, 4
  store i32 %31, ptr %43, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef %49, ptr noundef nonnull %43, ptr noundef null) #14
  %54 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %31, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %51, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 17
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %49, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 18
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 19
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 20
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 21
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 22
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 23
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %79, align 4
  tail call void @kfree(ptr noundef nonnull %43) #14
  br label %266

80:                                               ; preds = %33
  %81 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %82 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 160) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %266, label %84

84:                                               ; preds = %80
  %85 = and i8 %10, 63
  %86 = add nuw nsw i8 %85, 60
  %87 = zext i8 %86 to i32
  %88 = mul nuw nsw i32 %31, 3
  %89 = lshr exact i32 %88, 2
  store i32 %31, ptr %82, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 1
  store i32 %89, ptr %90, align 4
  %91 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef %87, ptr noundef nonnull %82, ptr noundef null) #14
  %92 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %31, ptr %92, align 4
  %93 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %89, ptr %93, align 4
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 17
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %87, ptr %97, align 4
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 18
  %99 = load i32, ptr %98, align 8
  %100 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 19
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 20
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 21
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 22
  %111 = load i32, ptr %110, align 8
  %112 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %82, i32 0, i32 23
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %117, align 4
  tail call void @kfree(ptr noundef nonnull %82) #14
  br label %266

118:                                              ; preds = %33
  %119 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %120 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3520, i32 noundef 160) #16
  %121 = icmp eq ptr %120, null
  br i1 %121, label %266, label %122

122:                                              ; preds = %118
  %123 = and i8 %10, 63
  %124 = add nuw nsw i8 %123, 60
  %125 = zext i8 %124 to i32
  %126 = trunc i32 %31 to i16
  %127 = shl nuw nsw i16 %126, 2
  %128 = udiv i16 %127, 5
  %129 = zext i16 %128 to i32
  store i32 %31, ptr %120, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 1
  store i32 %129, ptr %130, align 4
  %131 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef %125, ptr noundef nonnull %120, ptr noundef null) #14
  %132 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %31, ptr %132, align 4
  %133 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %129, ptr %133, align 4
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 17
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %125, ptr %137, align 4
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 18
  %139 = load i32, ptr %138, align 8
  %140 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 19
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 20
  %145 = load i32, ptr %144, align 8
  %146 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %145, ptr %146, align 4
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 21
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 22
  %151 = load i32, ptr %150, align 8
  %152 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %120, i32 0, i32 23
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %154, ptr %155, align 4
  %156 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %156, align 4
  %157 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %157, align 4
  tail call void @kfree(ptr noundef nonnull %120) #14
  br label %266

158:                                              ; preds = %33
  %159 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %160 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %159, i32 noundef 3520, i32 noundef 160) #16
  %161 = icmp eq ptr %160, null
  br i1 %161, label %266, label %162

162:                                              ; preds = %158
  %163 = and i8 %10, 63
  %164 = add nuw nsw i8 %163, 60
  %165 = zext i8 %164 to i32
  %166 = mul nuw nsw i32 %31, 9
  %167 = lshr i32 %166, 4
  store i32 %31, ptr %160, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 1
  store i32 %167, ptr %168, align 4
  %169 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef %165, ptr noundef nonnull %160, ptr noundef null) #14
  %170 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %31, ptr %170, align 4
  %171 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %167, ptr %171, align 4
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 17
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %165, ptr %175, align 4
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 18
  %177 = load i32, ptr %176, align 8
  %178 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 19
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %180, ptr %181, align 4
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 20
  %183 = load i32, ptr %182, align 8
  %184 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %183, ptr %184, align 4
  %185 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 21
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %186, ptr %187, align 4
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 22
  %189 = load i32, ptr %188, align 8
  %190 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %189, ptr %190, align 4
  %191 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %160, i32 0, i32 23
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %192, ptr %193, align 4
  %194 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %194, align 4
  %195 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %195, align 4
  tail call void @kfree(ptr noundef nonnull %160) #14
  br label %266

196:                                              ; preds = %33
  unreachable

197:                                              ; preds = %36
  %198 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %199 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %198, i32 noundef 3520, i32 noundef 160) #16
  %200 = icmp eq ptr %199, null
  br i1 %200, label %266, label %201

201:                                              ; preds = %197
  %202 = and i8 %10, 63
  %203 = add nuw nsw i8 %202, 60
  %204 = zext i8 %203 to i32
  store i32 %31, ptr %199, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 1
  store i32 %31, ptr %205, align 4
  %206 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef %204, ptr noundef nonnull %199, ptr noundef null) #14
  %207 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %31, ptr %207, align 4
  %208 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %31, ptr %208, align 4
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 17
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %210, ptr %211, align 4
  %212 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %204, ptr %212, align 4
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 18
  %214 = load i32, ptr %213, align 8
  %215 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %214, ptr %215, align 4
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 19
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %217, ptr %218, align 4
  %219 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 20
  %220 = load i32, ptr %219, align 8
  %221 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %220, ptr %221, align 4
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 21
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 22
  %226 = load i32, ptr %225, align 8
  %227 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %226, ptr %227, align 4
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %199, i32 0, i32 23
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %229, ptr %230, align 4
  %231 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %231, align 4
  %232 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %232, align 4
  tail call void @kfree(ptr noundef nonnull %199) #14
  br label %266

233:                                              ; preds = %38
  br i1 %44, label %266, label %234

234:                                              ; preds = %233
  %235 = and i8 %10, 63
  %236 = add nuw nsw i8 %235, 60
  %237 = zext i8 %236 to i32
  store i32 %31, ptr %43, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 1
  store i32 %31, ptr %238, align 4
  %239 = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef %237, ptr noundef nonnull %43, ptr noundef null) #14
  %240 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  store i32 %31, ptr %240, align 4
  %241 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  store i32 %31, ptr %241, align 4
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 17
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  store i32 %243, ptr %244, align 4
  %245 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 1
  store i32 %237, ptr %245, align 4
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 18
  %247 = load i32, ptr %246, align 8
  %248 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  store i32 %247, ptr %248, align 4
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 19
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  store i32 %250, ptr %251, align 4
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 20
  %253 = load i32, ptr %252, align 8
  %254 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  store i32 %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 21
  %256 = load i32, ptr %255, align 4
  %257 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  store i32 %256, ptr %257, align 4
  %258 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 22
  %259 = load i32, ptr %258, align 8
  %260 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  store i32 %259, ptr %260, align 4
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %43, i32 0, i32 23
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  store i32 %262, ptr %263, align 4
  %264 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  store i32 0, ptr %264, align 4
  %265 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  store i32 0, ptr %265, align 4
  tail call void @kfree(ptr noundef nonnull %43) #14
  br label %266

266:                                              ; preds = %234, %233, %201, %197, %162, %158, %122, %118, %84, %80, %46, %45, %25
  %267 = icmp eq ptr %4, null
  br i1 %267, label %278, label %268

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.fb_monspecs, ptr %4, i32 0, i32 14
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  %274 = load i32, ptr %273, align 4
  %275 = udiv i32 1000000000, %274
  %276 = mul i32 %275, 1000
  %277 = icmp ugt i32 %276, %270
  br i1 %277, label %279, label %278

278:                                              ; preds = %272, %268, %266
  br label %279

279:                                              ; preds = %278, %272, %29
  %280 = phi i32 [ 1, %278 ], [ 0, %272 ], [ 0, %29 ]
  ret i32 %280
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i5 @llvm.bitreverse.i5(i5) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
