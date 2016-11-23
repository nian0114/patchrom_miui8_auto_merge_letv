.class Lcom/android/internal/app/ResolverActivity$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public shareIcon:Landroid/widget/ImageView;

.field public shareTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    const v0, 0x10204ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->shareTitle:Landroid/widget/TextView;

    .line 2043
    const v0, 0x10204b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->shareIcon:Landroid/widget/ImageView;

    .line 2044
    return-void
.end method
