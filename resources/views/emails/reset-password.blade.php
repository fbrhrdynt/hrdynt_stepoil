<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reset Password</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 30px; color: #333;">
    <div style="max-width: 600px; margin: auto; background: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">

        <h2 style="color: #2d3748;">Hello {{ $user->employee_name }},</h2>

        <p>You recently requested to reset your FOTrack account password.</p>

        <p>Please click the button below to reset your password:</p>

        <div style="text-align: center; margin: 30px 0;">
            <a href="{{ $resetLink }}"
               style="background-color: #059669; color: white; text-decoration: none; padding: 12px 24px; border-radius: 6px; display: inline-block;">
                Reset Password
            </a>
        </div>

        <p style="font-size: 14px; color: #555;">
            This link is valid for only <strong>15 minutes</strong>. If you did not request a password reset, please ignore this email.
        </p>

        <hr style="margin: 30px 0; border: none; border-top: 1px solid #e2e8f0;">

        <p style="font-size: 12px; color: #999;">
            &copy; {{ now()->year }} FOTrack. All rights reserved.
        </p>
    </div>
</body>
</html>
