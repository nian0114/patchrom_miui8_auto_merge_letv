.class public Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;
.super Lcom/letv/leui/widget/LeBottomSheet;
.source "LeNeverPermissionRequestDialog.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "cancelClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "permissionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const v8, 0x1060190

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    .line 29
    new-instance v2, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;-><init>(Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;Landroid/content/Context;)V

    .line 40
    .local v2, "setPermissionListener":Landroid/view/View$OnClickListener;
    const/4 v1, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const v0, 0x1040757

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    const v0, 0x1040759

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->setContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    new-array v9, v6, [I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v0

    aput v0, v9, v10

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v0

    aput v0, v9, v3

    move-object v0, p0

    move-object v3, p3

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "setPermissionListener"    # Landroid/view/View$OnClickListener;
    .param p4, "cancelClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "permissionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const v6, 0x1060190

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    .line 54
    const/4 v1, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const v0, 0x1040757

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    const v0, 0x1040759

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->setContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    new-array v9, v3, [I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    aput v0, v9, v10

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    aput v0, v9, v2

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V

    .line 64
    return-void
.end method

.method private setContent(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .local p1, "permissionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 69
    iget-object v7, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 71
    .local v5, "tPackageManager":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v6, "tStringBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    const v8, 0x104075a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 80
    .local v3, "permissionGroupSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 81
    .local v4, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v4    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "permissionGroupLabel":Ljava/lang/String;
    iget-object v7, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    const v8, 0x104075c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v7, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    const v8, 0x104075d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 98
    .end local v2    # "permissionGroupLabel":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 99
    iget-object v7, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->context:Landroid/content/Context;

    const v8, 0x104075b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
