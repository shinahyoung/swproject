class UserNotifier < ApplicationMailer
    default :from=>'sheena6772@gmail.com'
    def send_email(user,rd)
        u=user
	@rd=rd
        mail( :to =>u.email,:subject=>'MUJI & KON ' )
    end
end
