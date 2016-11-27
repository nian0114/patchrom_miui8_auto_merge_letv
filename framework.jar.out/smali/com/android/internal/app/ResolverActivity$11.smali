.class Lcom/android/internal/app/ResolverActivity$11;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$j:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0

    .prologue
    .line 2476
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput p2, p0, Lcom/android/internal/app/ResolverActivity$11;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 2479
    iget v1, p0, Lcom/android/internal/app/ResolverActivity$11;->val$j:I

    if-gez v1, :cond_0

    .line 2493
    :goto_0
    return-void

    .line 2483
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$11;->val$j:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2484
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1800(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {v1, v0}, Lcom/android/internal/app/ResolverActivity;->access$1900(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2486
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2492
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$11;->val$j:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$11;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$2000(Lcom/android/internal/app/ResolverActivity;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v7}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    goto :goto_0
.end method
