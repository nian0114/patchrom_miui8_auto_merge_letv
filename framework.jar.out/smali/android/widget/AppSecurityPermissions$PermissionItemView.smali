.class public Landroid/widget/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;,
        Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;
    }
.end annotation


# instance fields
.field private allSelectView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/LeListPreferenceView;",
            ">;"
        }
    .end annotation
.end field

.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

.field mPermItem:Landroid/app/AppOpsUtils$AppOpsItem;

.field private mShowRevokeUI:Z

.field private newSelectView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/LeListPreferenceView;",
            ">;"
        }
    .end annotation
.end field

.field private showPermsLabel:Ljava/lang/StringBuilder;

.field private showPermsRes:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0xfa

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsLabel:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsRes:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->newSelectView:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->allSelectView:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPermItem:Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsLabel:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsRes:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    iget-boolean v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .local v0, "isRequired":Z
    :goto_1
    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/AppSecurityPermissions$PermissionItemView$2;

    invoke-direct {v1, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$2;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    .local v1, "ocl":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x104050a

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .end local v0    # "isRequired":Z
    .end local v1    # "ocl":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {v6, v4}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v5, "sbuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403dc

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "sbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .restart local v1    # "appName":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPermission(Landroid/app/AppOpsUtils$AppOpsItem;IZ)V
    .locals 10
    .param p1, "permItem"    # Landroid/app/AppOpsUtils$AppOpsItem;
    .param p2, "which"    # I
    .param p3, "is_show_title"    # Z

    .prologue
    if-eqz p3, :cond_0

    const v8, 0x1020065

    invoke-virtual {p0, v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "controlTitleItem":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v8, 0x102005e

    invoke-virtual {p0, v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "controlTitle":Landroid/widget/TextView;
    iget-object v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->group_title:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "controlTitle":Landroid/widget/TextView;
    .end local v1    # "controlTitleItem":Landroid/view/ViewGroup;
    :cond_0
    const v8, 0x102005f

    invoke-virtual {p0, v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, "permission_title":Landroid/widget/TextView;
    iget-object v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->group_name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->costMoney:Z

    if-eqz v8, :cond_5

    const v8, 0x1020063

    invoke-virtual {p0, v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "maybeCost":Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v4    # "maybeCost":Landroid/widget/TextView;
    :goto_0
    const/16 v8, 0x8

    if-ne p2, v8, :cond_4

    const v8, 0x1020061

    invoke-virtual {p0, v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/letv/leui/widget/LeListPreferenceView;

    .local v7, "selectPerm":Lcom/letv/leui/widget/LeListPreferenceView;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/LeListPreferenceView;->setVisibility(I)V

    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    # invokes: Landroid/widget/AppSecurityPermissions;->inVisiableRuntimeView(Landroid/content/pm/PackageManager;Landroid/view/View;)V
    invoke-static {v8, v7}, Landroid/widget/AppSecurityPermissions;->access$100(Landroid/content/pm/PackageManager;Landroid/view/View;)V

    iget v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    if-nez v8, :cond_1

    iget v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    :cond_1
    iget v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    iget v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    :cond_2
    const v8, 0x107006a

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/LeListPreferenceView;->setEntries(I)V

    const v8, 0x107006b

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/LeListPreferenceView;->setEntryValues(I)V

    :cond_3
    iget v8, p1, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "defaultValue":Ljava/lang/String;
    invoke-virtual {v7, v2}, Lcom/letv/leui/widget/LeListPreferenceView;->setValue(Ljava/lang/String;)V

    new-instance v8, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;

    invoke-direct {v8, p0, p1}, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;Landroid/app/AppOpsUtils$AppOpsItem;)V

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/LeListPreferenceView;->setOnChangeListener(Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;)V

    .end local v2    # "defaultValue":Ljava/lang/String;
    .end local v7    # "selectPerm":Lcom/letv/leui/widget/LeListPreferenceView;
    :cond_4
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPermItem:Landroid/app/AppOpsUtils$AppOpsItem;

    new-instance v5, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;

    invoke-direct {v5, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    .local v5, "permTitleViewOnClick":Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .end local v5    # "permTitleViewOnClick":Landroid/widget/AppSecurityPermissions$PermissionItemView$PermViewOnClick;
    :cond_5
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v8, v9}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v8, v9}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "showRevokeUI"    # Z

    .prologue
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iput-boolean p6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    iput-object p5, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    const v8, 0x1020377

    invoke-virtual {p0, v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .local v5, "permGrpIcon":Landroid/widget/ImageView;
    const v8, 0x1020378

    invoke-virtual {p0, v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, "permNameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1, v8, v7}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iget-object v2, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .local v2, "label":Ljava/lang/CharSequence;
    iget-boolean v8, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v8, :cond_1

    if-eqz p4, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v8, 0x0

    invoke-static {p4, v4, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "newStr":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v2, v0

    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "newStr":Ljava/lang/CharSequence;
    .end local v4    # "parcel":Landroid/os/Parcel;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPermission(Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;)V
    .locals 7
    .param p1, "permItem"    # Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;

    .prologue
    const/4 v6, 0x0

    const-string v4, "AppSecurityPermissions"

    const-string v5, "inited setPermission, unCrotrolPermission  start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionLabel:Ljava/lang/String;

    .local v0, "Label":Ljava/lang/String;
    iget-object v1, p1, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontroldescriptionRes:Ljava/lang/String;

    .local v1, "Res":Ljava/lang/String;
    const v4, 0x102006a

    invoke-virtual {p0, v4}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "permission_title":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsLabel:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsRes:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsRes:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsRes:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;

    invoke-direct {v2, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    .local v2, "permTitleViewOnClick":Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
