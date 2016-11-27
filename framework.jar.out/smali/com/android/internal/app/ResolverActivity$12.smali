.class Lcom/android/internal/app/ResolverActivity$12;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->initSpecialLayoutContent(Landroid/widget/LinearLayout;)V
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
    .line 2527
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$12;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput p2, p0, Lcom/android/internal/app/ResolverActivity$12;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2530
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2531
    .local v1, "data":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2532
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "index"

    iget v3, p0, Lcom/android/internal/app/ResolverActivity$12;->val$j:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2533
    const-string v3, "appName"

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$12;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$2700(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$12;->val$j:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2535
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$12;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ResolverActivity;->setResult(ILandroid/content/Intent;)V

    .line 2536
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$12;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2537
    return-void
.end method
