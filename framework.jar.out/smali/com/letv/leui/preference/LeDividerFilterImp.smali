.class public Lcom/letv/leui/preference/LeDividerFilterImp;
.super Ljava/lang/Object;
.source "LeDividerFilterImp.java"

# interfaces
.implements Lcom/letv/leui/widget/DividerFilter;


# instance fields
.field private mAdapter:Landroid/preference/PreferenceGroupAdapter;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroupAdapter;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "mAdapter"    # Landroid/preference/PreferenceGroupAdapter;
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    .line 21
    iput-object p2, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    .line 22
    return-void
.end method

.method private whetherDrawDivider(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "isPreferenceCategoryCurrent":Z
    const/4 v1, 0x0

    .line 85
    .local v1, "isPreferenceCategoryNext":Z
    iget-object v4, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v2

    .line 86
    .local v2, "preferenceCurrent":Landroid/preference/Preference;
    instance-of v0, v2, Landroid/preference/PreferenceCategory;

    .line 88
    iget-object v4, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    .line 90
    .local v3, "preferenceNext":Landroid/preference/Preference;
    instance-of v1, v3, Landroid/preference/PreferenceCategory;

    .line 93
    .end local v3    # "preferenceNext":Landroid/preference/Preference;
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 94
    :cond_1
    const/4 v4, 0x0

    .line 96
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bottomDividerEnabled()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeDividerFilterImp;->whetherDrawDivider(I)Z

    move-result v0

    return v0
.end method

.method public dividerPaddingColor()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public forceDrawDivider(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeDividerFilterImp;->whetherDrawDivider(I)Z

    move-result v0

    goto :goto_0
.end method

.method public leftDividerMargin(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const v3, 0x1050145

    const v2, 0x1050141

    .line 41
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    const v2, 0x1050146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public rightDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
