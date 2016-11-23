.class Lcom/android/internal/app/ResolverActivity$10;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2377
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->uvReportIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$2200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$2300(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2379
    return-void
.end method
