.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;,
        Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;,
        Landroid/widget/AppSecurityPermissions$comp;,
        Landroid/widget/AppSecurityPermissions$PermissionItemView;,
        Landroid/widget/AppSecurityPermissions$MyPermissionInfo;,
        Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    }
.end annotation


# static fields
.field private static final DLG_BASE:I = 0x0

.field private static final SHOW_PERMISIIONGROUP_DESCRIPTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"

.field public static final WHICH_ALL:I = 0xffff

.field public static final WHICH_CONTROL:I = 0x8

.field public static final WHICH_NEW:I = 0x4

.field public static final WHICH_NEW_CONTROL:I = 0x20

.field public static final WHICH_NEW_UNCONTROL:I = 0x40

.field public static final WHICH_UNCONTROL:I = 0x10

.field private static final localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mControlGrantPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsUtils$AppOpsItem;",
            ">;"
        }
    .end annotation
.end field

.field public mControlNewPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsUtils$AppOpsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGrantPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNewGrantPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewPermPrefix:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field public mUnControlGrantPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUnControlNewPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 112
    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>(Landroid/widget/AppSecurityPermissions$1;)V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 114
    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v0}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mGrantPermissions:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNewGrantPermissions:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mControlGrantPermission:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mUnControlGrantPermission:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mControlNewPermission:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mUnControlNewPermission:Ljava/util/ArrayList;

    .line 507
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 508
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 509
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 511
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x10403db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    .line 512
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 534
    invoke-direct/range {p0 .. p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 535
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 537
    .local v12, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v4, 0x0

    .line 538
    .local v4, "allPermResult":Landroid/app/AppOpsManager$PermissionInstallResult;
    const/4 v10, 0x0

    .line 540
    .local v10, "newPermResult":Landroid/app/AppOpsManager$PermissionInstallResult;
    if-nez p2, :cond_0

    .line 614
    :goto_0
    return-void

    .line 543
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 546
    const/4 v8, 0x0

    .line 548
    .local v8, "installedPkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 550
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1000

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 555
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v8}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mGrantPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mNewGrantPermissions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/util/List;Landroid/content/pm/PackageInfo;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mGrantPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 567
    .local v5, "allSize":I
    new-array v13, v5, [Ljava/lang/String;

    .line 568
    .local v13, "permissionGrantList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mGrantPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "permissionGrantList":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;

    .line 570
    .restart local v13    # "permissionGrantList":[Ljava/lang/String;
    const/16 v16, -0x1

    .line 572
    .local v16, "uid":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 573
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_1

    .line 574
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 580
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    const-string v17, "appops"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager;

    .line 581
    .local v9, "manager":Landroid/app/AppOpsManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v13, v0, v1}, Landroid/app/AppOpsManager;->getPermissionInstllResult([Ljava/lang/String;ILjava/lang/String;)Landroid/app/AppOpsManager$PermissionInstallResult;

    move-result-object v4

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mControlGrantPermission:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mUnControlGrantPermission:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->noPassPerms:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mControlGrantPermission:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/AppSecurityPermissions$comp;

    invoke-direct/range {v18 .. v18}, Landroid/widget/AppSecurityPermissions$comp;-><init>()V

    invoke-static/range {v17 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mNewGrantPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 588
    .local v11, "newSize":I
    new-array v14, v11, [Ljava/lang/String;

    .line 589
    .local v14, "permissionNewGrantList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mNewGrantPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "permissionNewGrantList":[Ljava/lang/String;
    check-cast v14, [Ljava/lang/String;

    .line 590
    .restart local v14    # "permissionNewGrantList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v14, v0, v1}, Landroid/app/AppOpsManager;->getPermissionInstllResult([Ljava/lang/String;ILjava/lang/String;)Landroid/app/AppOpsManager$PermissionInstallResult;

    move-result-object v10

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mControlNewPermission:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mUnControlNewPermission:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/app/AppOpsManager$PermissionInstallResult;->noPassPerms:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mControlNewPermission:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/AppSecurityPermissions$comp;

    invoke-direct/range {v18 .. v18}, Landroid/widget/AppSecurityPermissions$comp;-><init>()V

    invoke-static/range {v17 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 602
    .end local v5    # "allSize":I
    .end local v9    # "manager":Landroid/app/AppOpsManager;
    .end local v11    # "newSize":I
    .end local v13    # "permissionGrantList":[Ljava/lang/String;
    .end local v14    # "permissionNewGrantList":[Ljava/lang/String;
    .end local v16    # "uid":I
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 605
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v15

    .line 606
    .local v15, "sharedUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 612
    .end local v15    # "sharedUid":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    goto/16 :goto_0

    .line 576
    .restart local v5    # "allSize":I
    .restart local v13    # "permissionGrantList":[Ljava/lang/String;
    .restart local v16    # "uid":I
    :catch_0
    move-exception v7

    .line 577
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, -0x1

    goto/16 :goto_2

    .line 607
    .end local v5    # "allSize":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "permissionGrantList":[Ljava/lang/String;
    .end local v16    # "uid":I
    :catch_1
    move-exception v7

    .line 608
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "AppSecurityPermissions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t retrieve shared user id for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 552
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v17

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 516
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 517
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 520
    .local v1, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x1000

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 526
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 527
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3, v1}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 529
    :cond_0
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 530
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    .line 531
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/content/pm/PackageManager;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-static {p0, p1}, Landroid/widget/AppSecurityPermissions;->inVisiableRuntimeView(Landroid/content/pm/PackageManager;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/AppSecurityPermissions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V
    .locals 2
    .param p2, "pInfo"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1229
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 1230
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 1232
    :cond_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-static {p1, p2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1234
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 1235
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 1236
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1238
    :cond_1
    return-void
.end method

.method private displayPermissions(Landroid/widget/LinearLayout;IZ)V
    .locals 11
    .param p1, "permListView"    # Landroid/widget/LinearLayout;
    .param p2, "which"    # I
    .param p3, "selectControl"    # Z

    .prologue
    const/16 v10, 0x40

    const/16 v9, 0x10

    .line 993
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 995
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v3, "uncontrolPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;>;"
    const/4 v2, 0x0

    .line 997
    .local v2, "unControlPermItem":Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
    const/4 v5, 0x0

    .line 999
    .local v5, "uncontrolpermItem":Ljava/lang/String;
    const/16 v6, 0x8

    if-ne p2, v6, :cond_1

    .line 1000
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mControlGrantPermission:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/AppSecurityPermissions;->getControlPermissions(Landroid/widget/LinearLayout;ILjava/util/ArrayList;)V

    .line 1013
    :goto_0
    const-string v6, "AppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install-----------uncontrol size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-eq p2, v9, :cond_0

    if-ne p2, v10, :cond_5

    .line 1016
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 1017
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "unControlPermItem":Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
    check-cast v2, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;

    .line 1018
    .restart local v2    # "unControlPermItem":Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
    iget-object v6, v2, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionLabel:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 1016
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1001
    .end local v0    # "i":I
    :cond_1
    if-ne p2, v9, :cond_2

    .line 1002
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mUnControlGrantPermission:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v6}, Landroid/widget/AppSecurityPermissions;->initUncontrolPermInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1003
    :cond_2
    const/16 v6, 0x20

    if-ne p2, v6, :cond_3

    .line 1004
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mControlNewPermission:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/AppSecurityPermissions;->getControlPermissions(Landroid/widget/LinearLayout;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1005
    :cond_3
    if-ne p2, v10, :cond_4

    .line 1006
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mUnControlNewPermission:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v6}, Landroid/widget/AppSecurityPermissions;->initUncontrolPermInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1008
    :cond_4
    const-string v6, "AppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "have no result for which :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_5
    return-void

    .line 1021
    .restart local v0    # "i":I
    :cond_6
    invoke-direct {p0, v2, p2}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;I)Landroid/view/View;

    move-result-object v4

    .line 1022
    .local v4, "uncontrolView":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1025
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V
    .locals 12
    .param p2, "permListView"    # Landroid/widget/LinearLayout;
    .param p3, "which"    # I
    .param p4, "showRevokeUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 909
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;>;"
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 911
    const/high16 v0, 0x41000000    # 8.0f

    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v10, v0

    .line 913
    .local v10, "spacing":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 914
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 915
    .local v1, "grp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {p0, v1, p3}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v9

    .line 916
    .local v9, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 917
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 918
    .local v2, "perm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    if-nez v7, :cond_3

    const/4 v3, 0x1

    :goto_2
    const/4 v0, 0x4

    if-eq p3, v0, :cond_4

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    :goto_3
    move-object v0, p0

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v11

    .line 920
    .local v11, "view":Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {v8, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 923
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v7, :cond_0

    .line 924
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 926
    :cond_0
    iget-object v0, v1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_1

    .line 927
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 929
    :cond_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 930
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 932
    :cond_2
    invoke-virtual {p2, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 918
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 913
    .end local v2    # "perm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 935
    .end local v1    # "grp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v7    # "j":I
    .end local v9    # "perms":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :cond_6
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/util/List;Landroid/content/pm/PackageInfo;)V
    .locals 14
    .param p1, "info"    # Landroid/content/pm/PackageInfo;
    .param p4, "installedPkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 754
    .local p2, "GrantPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "NewGrantPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 755
    .local v9, "strList":[Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 756
    .local v4, "flagsList":[I
    if-eqz v9, :cond_0

    array-length v11, v9

    if-nez v11, :cond_1

    .line 823
    :cond_0
    return-void

    .line 759
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v9

    if-ge v5, v11, :cond_0

    .line 760
    aget-object v8, v9, v5

    .line 762
    .local v8, "permName":Ljava/lang/String;
    const-string v11, "AppSecurityPermissions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "install----------the package\'s permName  is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    if-ne p1, v0, :cond_3

    .line 766
    aget v11, v4, v5

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_3

    .line 759
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 776
    :cond_3
    iget-object v11, p0, Landroid/widget/AppSecurityPermissions;->mGrantPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :try_start_0
    iget-object v11, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v10

    .line 782
    .local v10, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v10, :cond_2

    .line 785
    const/4 v3, -0x1

    .line 786
    .local v3, "existingIndex":I
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 788
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_4

    .line 789
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 790
    move v3, v6

    .line 795
    .end local v6    # "j":I
    :cond_4
    if-ltz v3, :cond_6

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v11, v3

    .line 797
    .local v2, "existingFlags":I
    :goto_3
    aget v11, v4, v5

    invoke-direct {p0, v10, v11, v2}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 803
    if-eqz p4, :cond_7

    and-int/lit8 v11, v2, 0x2

    if-nez v11, :cond_7

    const/4 v7, 0x1

    .line 812
    .local v7, "newPerm":Z
    :goto_4
    if-eqz v7, :cond_2

    .line 813
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 819
    .end local v2    # "existingFlags":I
    .end local v3    # "existingIndex":I
    .end local v7    # "newPerm":Z
    .end local v10    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v1

    .line 820
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "AppSecurityPermissions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring unknown permission:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 788
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "existingIndex":I
    .restart local v6    # "j":I
    .restart local v10    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 795
    .end local v6    # "j":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 803
    .restart local v2    # "existingFlags":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 21
    .param p1, "info"    # Landroid/content/pm/PackageInfo;
    .param p3, "installedPkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 674
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 675
    .local v16, "strList":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 676
    .local v6, "flagsList":[I
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 744
    :cond_0
    return-void

    .line 679
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 680
    aget-object v15, v16, v10

    .line 682
    .local v15, "permName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v17

    .line 683
    .local v17, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    if-nez v17, :cond_3

    .line 679
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 686
    .restart local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_3
    const/4 v5, -0x1

    .line 687
    .local v5, "existingIndex":I
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 689
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    .line 690
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 691
    move v5, v11

    .line 696
    .end local v11    # "j":I
    :cond_4
    if-ltz v5, :cond_9

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v18, v0

    aget v4, v18, v5

    .line 698
    .local v4, "existingFlags":I
    :goto_3
    aget v18, v6, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 703
    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 704
    .local v14, "origGroupName":Ljava/lang/String;
    move-object v8, v14

    .line 705
    .local v8, "groupName":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 706
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 707
    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 709
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 710
    .local v7, "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_7

    .line 711
    const/4 v9, 0x0

    .line 712
    .local v9, "grp":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v14, :cond_6

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v9

    .line 715
    :cond_6
    if-eqz v9, :cond_a

    .line 716
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {v7, v9}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 729
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .end local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    :cond_7
    if-eqz p3, :cond_c

    and-int/lit8 v18, v4, 0x2

    if-nez v18, :cond_c

    const/4 v13, 0x1

    .line 733
    .local v13, "newPerm":Z
    :goto_5
    new-instance v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 734
    .local v12, "myPerm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    aget v18, v6, v10

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    .line 735
    iput v4, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    .line 738
    iput-boolean v13, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    .line 739
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 740
    .end local v4    # "existingFlags":I
    .end local v5    # "existingIndex":I
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v12    # "myPerm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .end local v13    # "newPerm":Z
    .end local v14    # "origGroupName":Ljava/lang/String;
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v3

    .line 741
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "AppSecurityPermissions"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring unknown permission:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 689
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "existingIndex":I
    .restart local v11    # "j":I
    .restart local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 696
    .end local v11    # "j":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 722
    .restart local v4    # "existingFlags":I
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .restart local v8    # "groupName":Ljava/lang/String;
    .restart local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    .restart local v14    # "origGroupName":Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 724
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_b

    .line 725
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 727
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_b
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    goto/16 :goto_4

    .line 731
    .end local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    :cond_c
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 6
    .param p1, "sharedUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "sharedPkgList":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 661
    :cond_0
    return-void

    .line 658
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 659
    .local v3, "sharedPkg":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/widget/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getControlPermissions(Landroid/widget/LinearLayout;ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "permListView"    # Landroid/widget/LinearLayout;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsUtils$AppOpsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p3, "ControlPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsUtils$AppOpsItem;>;"
    const/4 v6, 0x0

    .line 1033
    .local v6, "view":Landroid/view/View;
    const/4 v5, 0x0

    .line 1034
    .local v5, "selectControl":Z
    const/4 v1, 0x0

    .line 1035
    .local v1, "group_title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1036
    .local v3, "is_show_title":Z
    const/4 v0, 0x0

    .line 1038
    .local v0, "controlPermItem":Landroid/app/AppOpsUtils$AppOpsItem;
    const/16 v7, 0x8

    if-ne p2, v7, :cond_2

    .line 1039
    const/4 v5, 0x1

    .line 1045
    :cond_0
    :goto_0
    const/16 v7, 0x8

    if-ne p2, v7, :cond_1

    .line 1046
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1047
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controlPermItem":Landroid/app/AppOpsUtils$AppOpsItem;
    check-cast v0, Landroid/app/AppOpsUtils$AppOpsItem;

    .line 1048
    .restart local v0    # "controlPermItem":Landroid/app/AppOpsUtils$AppOpsItem;
    iget v7, v0, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    if-nez v7, :cond_3

    iget v7, v0, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1049
    invoke-direct {p0, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionSetupView(Landroid/app/AppOpsUtils$AppOpsItem;)Landroid/view/View;

    move-result-object v6

    .line 1050
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1052
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    .end local v2    # "i":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 1060
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controlPermItem":Landroid/app/AppOpsUtils$AppOpsItem;
    check-cast v0, Landroid/app/AppOpsUtils$AppOpsItem;

    .line 1061
    .restart local v0    # "controlPermItem":Landroid/app/AppOpsUtils$AppOpsItem;
    const-string v7, "AppSecurityPermissions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "install----- Title is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/app/AppOpsUtils$AppOpsItem;->group_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget v7, v0, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    if-nez v7, :cond_4

    iget v7, v0, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    const/16 v7, 0x8

    if-ne p2, v7, :cond_4

    .line 1059
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1040
    .end local v2    # "i":I
    :cond_2
    const/16 v7, 0x20

    if-ne p2, v7, :cond_0

    .line 1041
    const/4 v5, 0x0

    goto :goto_0

    .line 1046
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1065
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, v0, Landroid/app/AppOpsUtils$AppOpsItem;->group_title:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1066
    :cond_5
    iget-object v1, v0, Landroid/app/AppOpsUtils$AppOpsItem;->group_title:Ljava/lang/String;

    .line 1067
    const/4 v3, 0x1

    .line 1071
    :goto_4
    invoke-direct {p0, v0, p2, v3}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/app/AppOpsUtils$AppOpsItem;IZ)Landroid/view/View;

    move-result-object v6

    .line 1073
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1076
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 1069
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 1078
    :cond_7
    return-void
.end method

.method private getNewPermissionsView(IZZ)Landroid/view/View;
    .locals 6
    .param p1, "which"    # I
    .param p2, "selectControl"    # Z
    .param p3, "showRevokeUI"    # Z

    .prologue
    .line 879
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 880
    .local v2, "permsView":Landroid/widget/LinearLayout;
    const v3, 0x102037e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 889
    .local v0, "displayList":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Landroid/widget/LinearLayout;IZ)V

    .line 894
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 895
    const-string v3, "AppSecurityPermissions"

    const-string v4, "install---perm-displayList.getChildCount() <= 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const v3, 0x102037d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 897
    .local v1, "noPermsView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 899
    .end local v1    # "noPermsView":Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method private getPermissionItemView(Landroid/app/AppOpsUtils$AppOpsItem;IZ)Landroid/view/View;
    .locals 4
    .param p1, "permItem"    # Landroid/app/AppOpsUtils$AppOpsItem;
    .param p2, "which"    # I
    .param p3, "is_show_title"    # Z

    .prologue
    .line 1120
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 1121
    .local v0, "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/app/AppOpsUtils$AppOpsItem;IZ)V

    .line 1122
    return-object v0
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grpName"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "dangerous"    # Z

    .prologue
    .line 645
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 647
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-eqz p3, :cond_0

    const v0, 0x1080340

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 649
    invoke-static/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 647
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x108046d

    goto :goto_0
.end method

.method private getPermissionItemView(Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;I)Landroid/view/View;
    .locals 4
    .param p1, "unControlPermItem"    # Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
    .param p2, "which"    # I

    .prologue
    .line 1126
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109007d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 1127
    .local v0, "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    const-string v1, "AppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install-----getPermissionItemView :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unControlPermItem : Label is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Res is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontroldescriptionRes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v0, p1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;)V

    .line 1129
    return-object v0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p3, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p4, "first"    # Z
    .param p5, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "showRevokeUI"    # Z

    .prologue
    .line 1145
    iget v1, p3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const v1, 0x1090035

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .local v0, "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1149
    invoke-virtual/range {v0 .. v6}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1150
    return-object v0

    .line 1145
    .end local v0    # "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    :cond_0
    const v1, 0x1090034

    goto :goto_0
.end method

.method private getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 8
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "showRevokeUI"    # Z

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grpName"    # Ljava/lang/CharSequence;
    .param p3, "permList"    # Ljava/lang/CharSequence;
    .param p4, "dangerous"    # Z
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1155
    const v4, 0x1090036

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1157
    .local v3, "permView":Landroid/view/View;
    const v4, 0x102037b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1158
    .local v2, "permGrpView":Landroid/widget/TextView;
    const v4, 0x102037c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1160
    .local v1, "permDescView":Landroid/widget/TextView;
    const v4, 0x1020377

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1161
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    if-eqz p2, :cond_0

    .line 1163
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    :goto_0
    return-object v3

    .line 1166
    :cond_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 1
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 832
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 833
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 835
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getPermissionSetupView(Landroid/app/AppOpsUtils$AppOpsItem;)Landroid/view/View;
    .locals 9
    .param p1, "permItem"    # Landroid/app/AppOpsUtils$AppOpsItem;

    .prologue
    const/4 v8, 0x0

    .line 1082
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x10900db

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1083
    .local v0, "SetupViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1087
    const v5, 0x102006b

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1088
    .local v4, "setupTextView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;

    invoke-direct {v1, p0}, Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;-><init>(Landroid/widget/AppSecurityPermissions;)V

    .line 1089
    .local v1, "bootCompleteOnClick":Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    const v5, 0x1020062

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/LeSwitch;

    .line 1094
    .local v3, "leSetupSwitch":Lcom/letv/leui/widget/LeSwitch;
    invoke-direct {p0, v3}, Landroid/widget/AppSecurityPermissions;->inVisiableRuntimeView(Landroid/view/View;)V

    .line 1096
    iget v5, p1, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "defaultValue":Ljava/lang/String;
    iget v5, p1, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    if-nez v5, :cond_0

    .line 1098
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    .line 1103
    :goto_0
    new-instance v5, Landroid/widget/AppSecurityPermissions$1;

    invoke-direct {v5, p0, p1}, Landroid/widget/AppSecurityPermissions$1;-><init>(Landroid/widget/AppSecurityPermissions;Landroid/app/AppOpsUtils$AppOpsItem;)V

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/LeSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1116
    return-object v0

    .line 1100
    :cond_0
    invoke-virtual {v3, v8}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 666
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1, p2, v1}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve permissions for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPermissionsView(IZ)Landroid/view/View;
    .locals 6
    .param p1, "which"    # I
    .param p2, "showRevokeUI"    # Z

    .prologue
    .line 860
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 861
    .local v2, "permsView":Landroid/widget/LinearLayout;
    const v3, 0x102037e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 862
    .local v0, "displayList":Landroid/widget/LinearLayout;
    const v3, 0x102037d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 864
    .local v1, "noPermsView":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-direct {p0, v3, v0, p1, p2}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V

    .line 866
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 867
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :cond_0
    return-object v2
.end method

.method private static inVisiableRuntimeView(Landroid/content/pm/PackageManager;Landroid/view/View;)V
    .locals 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1349
    const-string v1, "security.disable_runtime_permission"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1350
    .local v0, "disableRuntimePermission":Z
    if-nez v0, :cond_0

    .line 1351
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    :cond_0
    return-void
.end method

.method private inVisiableRuntimeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Landroid/widget/AppSecurityPermissions;->inVisiableRuntimeView(Landroid/content/pm/PackageManager;Landroid/view/View;)V

    .line 1346
    return-void
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .locals 10
    .param p1, "pInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "newReqFlags"    # I
    .param p3, "existingReqFlags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1174
    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v9, 0xf

    .line 1175
    .local v0, "base":I
    if-nez v0, :cond_1

    move v4, v7

    .line 1178
    .local v4, "isNormal":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 1207
    :cond_0
    :goto_1
    return v8

    .end local v4    # "isNormal":Z
    :cond_1
    move v4, v8

    .line 1175
    goto :goto_0

    .line 1182
    .restart local v4    # "isNormal":Z
    :cond_2
    if-eq v0, v7, :cond_3

    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_5

    :cond_3
    move v1, v7

    .line 1184
    .local v1, "isDangerous":Z
    :goto_2
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_6

    move v5, v7

    .line 1186
    .local v5, "isRequired":Z
    :goto_3
    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_7

    move v2, v7

    .line 1188
    .local v2, "isDevelopment":Z
    :goto_4
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_8

    move v6, v7

    .line 1190
    .local v6, "wasGranted":Z
    :goto_5
    and-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_9

    move v3, v7

    .line 1195
    .local v3, "isGranted":Z
    :goto_6
    if-eqz v1, :cond_a

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-eqz v3, :cond_a

    :cond_4
    move v8, v7

    .line 1196
    goto :goto_1

    .end local v1    # "isDangerous":Z
    .end local v2    # "isDevelopment":Z
    .end local v3    # "isGranted":Z
    .end local v5    # "isRequired":Z
    .end local v6    # "wasGranted":Z
    :cond_5
    move v1, v8

    .line 1182
    goto :goto_2

    .restart local v1    # "isDangerous":Z
    :cond_6
    move v5, v8

    .line 1184
    goto :goto_3

    .restart local v5    # "isRequired":Z
    :cond_7
    move v2, v8

    .line 1186
    goto :goto_4

    .restart local v2    # "isDevelopment":Z
    :cond_8
    move v6, v8

    .line 1188
    goto :goto_5

    .restart local v6    # "wasGranted":Z
    :cond_9
    move v3, v8

    .line 1190
    goto :goto_6

    .line 1202
    .restart local v3    # "isGranted":Z
    :cond_a
    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    move v8, v7

    .line 1205
    goto :goto_1
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1241
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    if-eqz p1, :cond_1

    .line 1243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 1245
    .local v4, "pInfo":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    iget v6, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iget v7, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    invoke-direct {p0, v4, v6, v7}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1249
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v7, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 1250
    .local v2, "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-eqz v2, :cond_0

    .line 1251
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 1252
    iget-object v6, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    .line 1253
    iget-boolean v6, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v6, :cond_0

    .line 1254
    iget-object v6, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    .line 1260
    .end local v2    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pInfo":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :cond_1
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 1261
    .local v5, "pgrp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    iget v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->labelRes:I

    if-nez v6, :cond_2

    iget-object v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 1262
    :cond_2
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    .line 1272
    :goto_2
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1266
    :cond_3
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1267
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1268
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1269
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 1274
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pgrp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_4
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1275
    return-void
.end method


# virtual methods
.method public getNewPermissionsView(IZ)Landroid/view/View;
    .locals 1
    .param p1, "which"    # I
    .param p2, "selectControl"    # Z

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AppSecurityPermissions;->getNewPermissionsView(IZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1329
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1330
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mControlGrantPermission:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1338
    :goto_0
    return v0

    .line 1331
    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 1332
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mUnControlGrantPermission:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1333
    :cond_1
    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    .line 1334
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mControlNewPermission:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1335
    :cond_2
    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    .line 1336
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mUnControlNewPermission:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1338
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 828
    const v0, 0xffff

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v0

    return v0
.end method

.method public getPermissionCount(I)I
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 842
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {p0, v2, p1}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    :cond_0
    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 2

    .prologue
    .line 848
    const v0, 0xffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsView(I)Landroid/view/View;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 856
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsViewWithRevokeButtons()Landroid/view/View;
    .locals 2

    .prologue
    .line 852
    const v0, 0xffff

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method initUncontrolPermInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, "uncontrolPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;>;"
    .local p2, "unControlGrantPermissionlLable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 957
    .local v5, "permNameTemp":Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
    const/4 v1, 0x0

    .line 958
    .local v1, "Label":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 959
    .local v0, "Desc":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 960
    .local v2, "PermissionName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 962
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 964
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "PermissionName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 965
    .restart local v2    # "PermissionName":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v2, :cond_1

    .line 966
    :cond_0
    const-string v7, "AppSecurityPermissions"

    const-string v8, "install---perm PermissionName==null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 970
    :cond_1
    new-instance v5, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;

    .end local v5    # "permNameTemp":Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
    invoke-direct {v5}, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;-><init>()V

    .line 971
    .restart local v5    # "permNameTemp":Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
    iput-object v2, v5, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionName:Ljava/lang/String;

    .line 974
    :try_start_0
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, v5, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    .line 975
    .local v6, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 976
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 977
    const-string v7, "AppSecurityPermissions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "perm---perm["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Label is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Desc is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 980
    :cond_2
    const-string v7, "AppSecurityPermissions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "install---perm["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:Label is null or Desc is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 986
    .end local v6    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v3

    .line 987
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "AppSecurityPermissions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "install---perm["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:Ignoring unknown permission:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 983
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionLabel:Ljava/lang/String;

    .line 984
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontroldescriptionRes:Ljava/lang/String;

    .line 985
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 990
    .end local v6    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_4
    return-void
.end method

.method public submitChangedPerms(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1278
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1279
    .local v0, "OpsManager":Landroid/app/AppOpsManager;
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mControlGrantPermission:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsUtils$AppOpsItem;

    .line 1283
    .local v2, "permItem":Landroid/app/AppOpsUtils$AppOpsItem;
    iget v3, v2, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/app/AppOpsManager;->setMode(Landroid/app/AppOpsUtils$AppOpsItem;ILjava/lang/String;I)V

    goto :goto_0

    .line 1285
    .end local v2    # "permItem":Landroid/app/AppOpsUtils$AppOpsItem;
    :cond_0
    return-void
.end method
