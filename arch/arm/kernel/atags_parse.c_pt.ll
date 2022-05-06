; ModuleID = '/llk/IR/arch/arm/kernel/atags_parse.c_pt.bc'
source_filename = "../arch/arm/kernel/atags_parse.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tagtable = type { i32, ptr }
%struct.anon.64 = type { %struct.tag_header, %struct.tag_core, %struct.tag_header, %struct.tag_mem32, %struct.tag_header }
%struct.tag_core = type { i32, i32, i32 }
%struct.tag_mem32 = type { i32, i32 }
%struct.tag_header = type { i32, i32 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.tag = type { %struct.tag_header, %union.anon }
%union.anon = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tag_videotext = type { i8, i8, i16, i8, i8, i16, i8, i8, i16 }

@__tagtable_parse_tag_core = internal constant %struct.tagtable { i32 1413545985, ptr @parse_tag_core }, section ".taglist.init", align 4
@__tagtable_parse_tag_mem32 = internal constant %struct.tagtable { i32 1413545986, ptr @parse_tag_mem32 }, section ".taglist.init", align 4
@__tagtable_parse_tag_videotext = internal constant %struct.tagtable { i32 1413545987, ptr @parse_tag_videotext }, section ".taglist.init", align 4
@__tagtable_parse_tag_ramdisk = internal constant %struct.tagtable { i32 1413545988, ptr @parse_tag_ramdisk }, section ".taglist.init", align 4
@__tagtable_parse_tag_serialnr = internal constant %struct.tagtable { i32 1413545990, ptr @parse_tag_serialnr }, section ".taglist.init", align 4
@__tagtable_parse_tag_revision = internal constant %struct.tagtable { i32 1413545991, ptr @parse_tag_revision }, section ".taglist.init", align 4
@__tagtable_parse_tag_cmdline = internal constant %struct.tagtable { i32 1413545993, ptr @parse_tag_cmdline }, section ".taglist.init", align 4
@default_tags = internal global %struct.anon.64 { %struct.tag_header { i32 5, i32 1413545985 }, %struct.tag_core { i32 1, i32 4096, i32 255 }, %struct.tag_header { i32 4, i32 1413545986 }, %struct.tag_mem32 { i32 16777216, i32 0 }, %struct.tag_header zeroinitializer }, section ".init.data", align 4
@default_command_line = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__arch_info_begin = external dso_local constant [0 x %struct.machine_desc], align 4
@__arch_info_end = external dso_local constant [0 x %struct.machine_desc], align 4
@.str = private unnamed_addr constant [15 x i8] c"\016Machine: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Warning: Neither atags nor dtb found\0A\00", align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@root_mountflags = external dso_local local_unnamed_addr global i32, align 4
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@screen_info = external dso_local local_unnamed_addr global %struct.screen_info, align 1
@rd_image_start = external dso_local local_unnamed_addr global i32, align 4
@rd_size = external dso_local local_unnamed_addr global i32, align 4
@system_serial_low = external dso_local local_unnamed_addr global i32, align 4
@system_serial_high = external dso_local local_unnamed_addr global i32, align 4
@system_rev = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\014Ignoring unrecognised tag 0x%08x\0A\00", align 1
@__tagtable_begin = external dso_local global %struct.tagtable, align 4
@__tagtable_end = external dso_local global %struct.tagtable, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__tagtable_parse_tag_cmdline, ptr @__tagtable_parse_tag_core, ptr @__tagtable_parse_tag_mem32, ptr @__tagtable_parse_tag_ramdisk, ptr @__tagtable_parse_tag_revision, ptr @__tagtable_parse_tag_serialnr, ptr @__tagtable_parse_tag_videotext], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_core(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = load i32, ptr %0, align 4
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %19

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, ptr @root_mountflags, align 4
  %11 = and i32 %10, -2
  store i32 %11, ptr @root_mountflags, align 4
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 12
  %16 = and i32 %15, 267386880
  %17 = and i32 %14, 255
  %18 = or i32 %16, %17
  store i32 %18, ptr @ROOT_DEV, align 4
  br label %19

19:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @parse_tag_mem32(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = load i32, ptr %2, align 4
  %7 = zext i32 %6 to i64
  %8 = tail call i32 @arm_add_memory(i64 noundef %5, i64 noundef %7) #7
  ret i32 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_videotext(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  store i8 %3, ptr @screen_info, align 1
  %4 = getelementptr inbounds %struct.tag_videotext, ptr %2, i32 0, i32 1
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 1), align 1
  %6 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  store i16 %7, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 3), align 1
  %8 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  store i8 %9, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 4), align 1
  %10 = getelementptr inbounds %struct.tag_videotext, ptr %2, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  %12 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 3
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 8), align 1
  %14 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  store i8 %15, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %16 = getelementptr inbounds %struct.tag_videotext, ptr %2, i32 0, i32 7
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %18 = getelementptr inbounds %struct.tag_videotext, ptr %2, i32 0, i32 8
  %19 = load i16, ptr %18, align 2
  store i16 %19, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 12), align 1
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_ramdisk(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr @rd_image_start, align 4
  %4 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 %5, ptr @rd_size, align 4
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_serialnr(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr @system_serial_low, align 4
  %4 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr @system_serial_high, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_revision(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr @system_rev, align 4
  ret i32 0
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @parse_tag_cmdline(ptr noundef %0) #2 section ".init.text" {
  %2 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %3 = tail call i32 @strlcpy(ptr noundef nonnull @default_command_line, ptr noundef %2, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @setup_machine_tags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".init.text" {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr @default_command_line, ptr %3, align 4
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %5 = shl i32 %4, 12
  store i32 %5, ptr getelementptr inbounds (%struct.anon.64, ptr @default_tags, i32 0, i32 3, i32 1), align 4
  br i1 icmp ult (ptr @__arch_info_begin, ptr @__arch_info_end), label %6, label %64

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %11, %10 ], [ @__arch_info_begin, %2 ]
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.machine_desc, ptr %7, i32 1
  %12 = icmp ult ptr %11, @__arch_info_end
  br i1 %12, label %6, label %64

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.machine_desc, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %15) #8
  %17 = icmp eq ptr %7, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %0, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.machine_desc, ptr %7, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = add i32 %22, -1073741824
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %24, %20, %18
  %28 = phi ptr [ %26, %24 ], [ @default_tags, %20 ], [ %0, %18 ]
  %29 = getelementptr inbounds %struct.tag_header, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1413545985
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.1) #7
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi ptr [ @default_tags, %32 ], [ %28, %27 ]
  %35 = getelementptr inbounds %struct.machine_desc, ptr %7, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call void %36(ptr noundef %34, ptr noundef nonnull %3) #7
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds %struct.tag_header, ptr %34, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1413545985
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = call i32 @memblock_phys_mem_size() #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %34, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %56, %46
  %50 = phi i32 [ %58, %56 ], [ %47, %46 ]
  %51 = phi ptr [ %57, %56 ], [ %34, %46 ]
  %52 = getelementptr inbounds %struct.tag_header, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1413545986
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = getelementptr i32, ptr %51, i32 %50
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %49

60:                                               ; preds = %56, %46, %43
  call void @save_atags(ptr noundef %34) #7
  call fastcc void @parse_tags(ptr noundef %34) #9
  br label %61

61:                                               ; preds = %60, %39
  %62 = load ptr, ptr %3, align 4
  %63 = call i32 @strlcpy(ptr noundef nonnull @boot_command_line, ptr noundef %62, i32 noundef 1024) #7
  br label %64

64:                                               ; preds = %61, %13, %10, %2
  %65 = phi ptr [ %7, %61 ], [ null, %13 ], [ null, %2 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret ptr %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_print(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_mem_size() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @save_atags(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @parse_tags(ptr noundef %0) unnamed_addr #1 section ".init.text" {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %39, label %4

4:                                                ; preds = %34, %1
  %5 = phi ptr [ %36, %34 ], [ %0, %1 ]
  br i1 icmp ult (ptr @__tagtable_begin, ptr @__tagtable_end), label %6, label %24

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tag_header, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @__tagtable_begin, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %14, label %20

11:                                               ; preds = %20
  %12 = load i32, ptr %22, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %11, %6
  %15 = phi i32 [ zext (i1 icmp ult (ptr @__tagtable_begin, ptr @__tagtable_end) to i32), %6 ], [ 1, %11 ]
  %16 = phi ptr [ @__tagtable_begin, %6 ], [ %22, %11 ]
  %17 = getelementptr inbounds %struct.tagtable, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %5) #7
  br label %24

20:                                               ; preds = %11, %6
  %21 = phi ptr [ %22, %11 ], [ @__tagtable_begin, %6 ]
  %22 = getelementptr %struct.tagtable, ptr %21, i32 1
  %23 = icmp ult ptr %22, @__tagtable_end
  br i1 %23, label %11, label %31

24:                                               ; preds = %14, %4
  %25 = phi i32 [ %15, %14 ], [ zext (i1 icmp ult (ptr @__tagtable_begin, ptr @__tagtable_end) to i32), %4 ]
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tag_header, ptr %5, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi i32 [ %30, %28 ], [ %8, %20 ]
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %32) #8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, ptr %5, align 4
  %36 = getelementptr i32, ptr %5, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %4

39:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_add_memory(i64 noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

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
