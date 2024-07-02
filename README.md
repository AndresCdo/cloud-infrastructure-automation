# Infrastructure Automation Playbook

This repository contains an Ansible playbook designed for setting up and managing a cloud infrastructure environment. It leverages various roles to install and configure essential tools, Docker, Google Cloud SDK, AWS CLI, and Terraform.

## Structure

- `hosts`: Inventory file for Ansible, specifying the hosts on which the playbook will be run.
- `playbook.yml`: The main playbook file that includes roles to be applied to the hosts.
- `roles/`: Directory containing all the roles used in the playbook.
  - `aws/`: Role for setting up AWS CLI.
  - `docker/`: Role for installing and configuring Docker.
  - `essentials/`: Role for installing essential packages required for the environment.
  - `google-sdk/`: Role for setting up Google Cloud SDK.
  - `packer/`: Role for installing HashiCorp Packer. (Note: This role is commented out in the playbook and not applied by default.)
  - `terraform/`: Role for installing HashiCorp Terraform.

Each role directory contains several subdirectories:

- `defaults/`: Default variables for the role.
- `files/`: Files that are deployed to the hosts.
- `handlers/`: Handlers triggered by other tasks.
- `tasks/`: Main tasks for the role.
- `vars/`: Variables for the role.

## Usage

To use this playbook, you need to have Ansible installed on your control machine. Then, you can run the playbook using the following command:

```bash
ansible-playbook -i hosts playbook.yml
```

Make sure to review and update the hosts file to reflect your infrastructure before running the playbook.

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request if you have any suggestions or improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
