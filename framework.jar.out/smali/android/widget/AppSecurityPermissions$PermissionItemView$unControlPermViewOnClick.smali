.class Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;
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
    name = "unControlPermViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;


# direct methods
.method constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    .line 426
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    # getter for: Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->access$400(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 427
    .local v7, "mInflater":Landroid/view/LayoutInflater;
    const v8, 0x109007a

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 428
    .local v3, "lePermBottemSheet":Landroid/view/ViewGroup;
    const v8, 0x1020066

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 429
    .local v1, "bottemSheetPermTitle":Landroid/widget/TextView;
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    # getter for: Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsLabel:Ljava/lang/StringBuilder;
    invoke-static {v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->access$500(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    const v8, 0x1020067

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 432
    .local v2, "bottemSheetPermViewGroup":Landroid/view/ViewGroup;
    const v8, 0x109007b

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 433
    .local v4, "lePermBottemSheetItem":Landroid/view/ViewGroup;
    const v8, 0x1020069

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 434
    .local v0, "bottemSheetPermDes":Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    # getter for: Landroid/widget/AppSecurityPermissions$PermissionItemView;->showPermsRes:Ljava/lang/StringBuilder;
    invoke-static {v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->access$600(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 438
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-virtual {v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v10}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 439
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-virtual {v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v10}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 440
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 443
    new-instance v6, Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$unControlPermViewOnClick;->this$0:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-virtual {v8}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 444
    .local v6, "mBottomSheet":Lcom/letv/leui/widget/LeBottomSheet;
    invoke-virtual {v6, v3}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View;)V

    .line 445
    invoke-virtual {v6}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 446
    return-void
.end method
