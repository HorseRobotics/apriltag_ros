# Tag ID(s). If a standalone tag, this is a vector of size 1. If a tag bundle,
# this is a vector containing the IDs of each tag in the bundle.
int32[] id

# Tag size(s). If a standalone tag, this is a vector of size 1. If a tag bundle,
# this is a vector containing the sizes of each tag in the bundle, in the same
# order as the IDs above.
float64[] size

# An IDs ordered list of image points for the corners of each tag, eg:
# [tag1_corner1_x, tag1_corner1_y, tag1_corner#_x, tag1_corner#_y, tag1_corner4_x,
# tag1_corner2_x, tag1_corner2_y...]
float64[] image_points

# Same as image_points, but the 3d equivalent from the model, so:
# [tag1_corner1_x, tag1_corner1_y, tag1_corner1_z,...tag#_corner#_z]
float64[] object_points

# Pose in the camera frame, obtained from homography transform. If a standalone
# tag, the homography is from the four tag corners. If a tag bundle, the
# homography is from at least the four corners of one member tag and at most the
# four corners of all member tags.
geometry_msgs/PoseWithCovarianceStamped pose