.class Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions$PermissionItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;


# direct methods
.method constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPermItem:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->access$700(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .local v14, "mInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPermItem:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/app/AppOpsUtils$AppOpsItem;->group_name:Ljava/lang/String;

    .local v9, "group_name":Ljava/lang/String;
    const v18, 0x109007a

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .local v11, "lePermBottemSheet":Landroid/view/ViewGroup;
    const v18, 0x1020066

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, "bottemSheetPermTitle":Landroid/widget/TextView;
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v18, 0x1020067

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .local v7, "bottemSheetPermViewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "PermInfo":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "PermDes":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPermItem:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "perms":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    const v18, 0x109007b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .local v12, "lePermBottemSheetItem":Landroid/view/ViewGroup;
    const v18, 0x1020068

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, "bottemSheetPermInfo":Landroid/widget/TextView;
    const v18, 0x1020069

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "bottemSheetPermDes":Landroid/widget/TextView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_0
    aget-object v18, v16, v10

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v15

    .local v15, "permInfoItem":Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v15    # "permInfoItem":Landroid/content/pm/PermissionInfo;
    :goto_2
    if-nez v3, :cond_1

    aget-object v3, v16, v10

    :cond_1
    if-nez v2, :cond_2

    aget-object v2, v16, v10

    :cond_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v18, "AppSecurityPermissions"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring unknown permission:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v16, v10

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4    # "bottemSheetPermDes":Landroid/widget/TextView;
    .end local v5    # "bottemSheetPermInfo":Landroid/widget/TextView;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "lePermBottemSheetItem":Landroid/view/ViewGroup;
    :cond_3
    new-instance v13, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .local v13, "mBottomSheet":Lcom/letv/leui/widget/LeBottomSheet;
    const/16 v18, 0x5a0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/letv/leui/widget/LeBottomSheet;->setMaxHeightInPixel(I)V

    invoke-virtual {v13, v11}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View;)V

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    goto/16 :goto_0
.end method
